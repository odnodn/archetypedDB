//const parser = require('xml2json')
const fs = require('fs')
const sequelize = require("../database/database")
const { Sequelize, DataTypes } = require('sequelize')
//var csv = require('csv')
const csv = require('csv-parser')
const repository = require("./repository")
const moment = require('moment')


async function getColumn(value, key) {
	let column = {}
	column.name = key.toString()
	let type = await getColumnType(value)
	column.type = { type }
	column.value = value
	return column
}

async function getColumnValue(value, key) {
	let column = {}
	column.name = key.toString()
	column.value = value
	return column
}

async function getColumnType(value) {
	let type
	if (Array.isArray(value)) {
		type = DataTypes.ARRAY(DataTypes.JSONB)
	} else if (typeof value == 'string') {
		type = DataTypes.STRING
	} else if (typeof value == 'object') {
		type = DataTypes.JSONB
	}
	return type
}


module.exports = {

	async mappingArchetypeTables(archetypeObj) {
		let archetypeDetails = {}, archetypeDetailsValues = {}, archetypeDetailsColumns = {}
		let archetypeMetadata = {}, archetypeMetadataValues = {}, archetypeMetadataColumns = {} //metadados
		let terminology = {}, terminologyValues = {}, terminologyColumns = {}
		let itemTree = {}, itemTreeValues = {}, itemTreeColumns = {}
		let itemTable = {}, itemTableValues = {}, itemTableColumns = {}
		let column = {}
		let tables = {}
		try {
			for (const key in archetypeObj) {
				if (archetypeObj.hasOwnProperty(key)) {
					const element = archetypeObj[key]
					if (key == 'definition' || key == 'description' || key == 'ontology') {
						archetypeObj1 = element
						for (const key1 in archetypeObj1) {
							if (archetypeObj1.hasOwnProperty(key1)) {
								const element1 = archetypeObj1[key1];
								column = await getColumn(element1, key1)
								if (key == 'definition') {
									let attributes = archetypeObj1.attributes
									if (attributes.children.rm_type_name.$t == 'ITEM_TREE') {
										itemTreeColumns[column.name] = column.type
										itemTreeValues[column.name] = column.value
									} else if (attributes.children.rm_type_name.$t == 'ITEM_TABLE') {
										itemTableColumns[column.name] = column.type
										itemTableValues[column.name] = column.value
									}
								} else if (key == 'description') {
									archetypeDetailsColumns[column.name] = column.type
									archetypeDetailsValues[column.name] = column.value
								} else if (key == 'ontology') {
									terminologyColumns[column.name] = column.type
									terminologyValues[column.name] = column.value
								}
							}
						}
					} else {
						column = await getColumn(element, key)
						archetypeMetadataColumns[column.name] = column.type
						archetypeMetadataValues[column.name] = column.value
					}
				}
			}


			archetypeMetadata.values = archetypeMetadataValues
			archetypeMetadata.columns = archetypeMetadataColumns
			archetypeDetails.values = archetypeDetailsValues
			archetypeDetails.columns = archetypeDetailsColumns
			terminology.values = terminologyValues
			terminology.columns = terminologyColumns
			itemTree.values = itemTreeValues
			itemTree.columns = itemTreeColumns
			itemTable.values = itemTableValues
			itemTable.columns = itemTableColumns

			tables = { archetypeMetadata, archetypeDetails, terminology, itemTree, itemTable }

			return tables
		} catch (error) {
			console.log(error);
		}
	},

	async createArchetypeTables(tables) {
		let archetypeMetadata, archetypeMetadataCreateResult
		await sequelize.sync({ force: true })
		try {
			for (const key in tables) {
				if (key) {
					if (tables.hasOwnProperty(key)) {
						const data = tables[key]
						data.columns.id = { type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true }
						await sequelize.sync({ alter: true })
						const table = await sequelize.define(key, data.columns)
						if (table.name == "archetypeMetadata") {
							archetypeMetadata = table
						} else {
							table.belongsTo(archetypeMetadata, { as: 'archetypeMetadata' })
							data.values.archetypeMetadataId = archetypeMetadataCreateResult.id
						}

						await sequelize.sync({ alter: true })

						const res = await table.create(data.values)

						if (archetypeMetadata) {
							archetypeMetadataCreateResult = res
						}

						console.log(res);

					}
				}
			}
			let result = { archetypeMetadata, archetypeMetadataCreateResult }
			return result
		} catch (error) {
			console.log(error);
		}
	},

	async readingCsvDataBase(csvFile) {
		const columns = {}
		columns.id = { type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true }
		const valuesToSave = []
		let result = {}
		try {
			let readStream = fs.createReadStream(csvFile)
			readStream.pipe(csv())
				.on('headers', headers => {
					let list = headers[0].split(";")
					for (let index = 0; index < list.length; index++) {
						const element = list[index].replace(/(^"|"$)/g, '')
						if (element.startsWith("dt_")) {
							columns[element] = DataTypes.DATE
						} else {
							columns[element] = DataTypes.STRING
						}
						delete columns.X
					}
					result.columns = columns
				})

			readStream.pipe(csv({ separator: '\n' }))
				.on('data', data => {
					for (const key in data) {
						if (data.hasOwnProperty(key)) {
							const element = data[key]
							let columnList = key.split(";")
							dataList = element.split("\r\n")
							if (dataList.length > 1) {
								console.log(dataList);
								for (let index = 0; index < dataList.length; index++) {
									const dataValue = dataList[index];
									let dataValues = dataValue.split(";"), values = {}
									for (let i = 1; i < columnList.length; i++) {
										let j = i + 1
										let col = columnList[i].replace(/(^"|"$)/g, '')
										if (j < dataValues.length) {
											let value = dataValues[j].replace(/(^"|"$)/g, '')
											if (col.startsWith("dt_")) {
												value = moment(value)
												if (!value.isValid()) {
													value = null
												}
											}
											values[col] = value
										}
									}
									//console.log(values);
									valuesToSave.push(values)
								}
								result.valuesToSave = valuesToSave
							}
						}
					}
				})
				.on('end', () => {
					console.log("csv data file was sucessfully processed");
				});
			//result = { columns, valuesToSave }
			return result
		} catch (error) {
			console.log(error)
		}
	},

	async createInsertDataItemTable(params, archetype) {
		try {
			await sequelize.sync({ alter: true })
			const table = await repository.define('data_item', params.columns)
			if (Object.keys(table.associations).length == 0) {
				table.belongsTo(archetype.archetypeMetadata, { as: 'archetypeMetadata' })
			}
			if (table) {
				await sequelize.sync({ alter: true })
				for (let index = 0; index < params.valuesToSave.length; index++) {
					const data = params.valuesToSave[index]
					data.archetypeMetadataId = archetype.archetypeMetadataCreateResult.id
					let res = await repository.create(table, data)
					console.log(res)
				}
			} else {
				console.log("create table error");
			}
		} catch (error) {
			console.log(error);
		}

	}
}
//const parser = require('xml2json')
const fs = require('fs')
const sequelize = require("../database/database")
const { Sequelize, DataTypes } = require('sequelize')
//var csv = require('csv')
const csv = require('csv-parser')
const repository = require("./repository")


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

	async mappingTables(archetypeObj) {
		let archetypeDetails = {}, archetypeDetailsValues = {}, archetypeDetailsColumns = {}
		let archetypeMetadata = {}, archetypeMetadataValues = {}, archetypeMetadataColumns = {} //metadados
		let terminology = {}, terminologyValues = {}, terminologyColumns = {}
		let itemTree = {}, itemTreeValues = {}, itemTreeColumns = {}
		let itemTable = {}, itemTableValues = {}, itemTableColumns = {}
		let column = {}
		let tables = {}
		try {
			//create archetype metadata table
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

			await this.createTables(tables)
			//return tables
		} catch (error) {
			console.log(error);
		}
	},

	async createTables(tables) {
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

		} catch (error) {
			console.log(error);
		}
	},

	async readingCsvDataBase(csvFile) {
		const columns = {}
		columns.id = { type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true }
		var valuesToSave = [], values = {}
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
						console.log(columns)
					}
				})
			readStream.pipe(csv({ separator: '\n' }))
				.on('data', data => {
					console.log(data);
					for (const key in data) {
						if (data.hasOwnProperty(key)) {
							const element = data[key]
							let columnList = key.split(";"), dataList = element.split(";")
							for (let i = 1; i < columnList.length; i++) {
								let j = 1
								let col = columnList[i].replace(/(^"|"$)/g, '')
								if (j < dataList.length) {
									values[col] = dataList[j].replace(/(^"|"$)/g, '')
								}
								j++
							}
							valuesToSave.push(values)
							
						}
						//console.log(valuesToSave[0])
					}
				})
				.on('end', () => {
					sequelize.sync({ force: true })
					repository.define('data_item', columns)
						.then(table => {
							for (let index = 0; index < valuesToSave.length; index++) {
								const data = valuesToSave[index];
								let res = repository.create(table, data)
								console.log(res)
							}
						})
						.catch(error, console.log(error))
				});
		} catch (error) {
			console.log(error)
		}
	}
}
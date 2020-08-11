//const parser = require('xml2json')
const fs = require('fs')
const sequelize = require("../database/database")
const { Sequelize, DataTypes } = require('sequelize')
//var csv = require('csv')
const csv = require('csv-parser')
const repository = require("./repository")
const moment = require('moment')
const DataItemModel = require("./models/dataItem.model")
const ComorbiditiesModel = require("./models/comorbidities.model")
const DataItemComorbidities = require("./models/dataItemComorbidities.model")
var list = []


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

	async getCsvHeaders(csvFile) {
		const columns = {}
		columns.id = { type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true }
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
				//					result.columns = columns
			})
		return columns;
	},

	async getCsvData(csvFile) {
		const valuesToSave = []
		let result = {}
		try {
			let readStream = fs.createReadStream(csvFile)
			readStream.pipe(csv({ separator: '\n' }))
				.on('data', data => {
					list.push(data)
					for (const key in data) {
						if (data.hasOwnProperty(key)) {
							const element = data[key]
							let columnList = key.split(";")
							/* console.log(columnList);
							console.log(element); */
							var dataList = element.split("\r")
							if (dataList.length > 0) {
								//console.log(dataList);
								for (let index = 0; index < dataList.length; index++) {
									const dataValue = dataList[index];
									let dataValues = dataValue.split(";"), values = {}
									//console.log(dataValues);
									for (let i = 0; i < columnList.length; i++) {
										let j = i
										col = columnList[i].replace(/(^"|"$)/g, '')
										if (j < dataValues.length) {
											let value = dataValues[j].replace(/(^"|"$)/g, '')
											if (value) {
												//console.log(value);
												if (col.startsWith("dt_")) {
													//console.log(value)
													value = new Date(value).toString()
													if (value == 'Invalid Date') {
														value = null
													}
												}

												if (col == 'municipio') {
													if (value == ' ' || value == '-' || value == 'NAO') {
														value = 'NAOINFORMADO'
													} else {
														value = value.split(" ").join("_")
													}
												}

											} else {
												value = null
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
					console.log(valuesToSave);
					console.log("csv data file was sucessfully processed");
				});
			return valuesToSave
		} catch (error) {
			console.log(error)
		}
	},

	async createInsertDataItemTable(columns, valuesToSave, archetype) {
		try {
			await sequelize.sync({ alter: true })
			const table = await repository.define('data_item', columns)
			if (Object.keys(table.associations).length == 0) {
				table.belongsTo(archetype.archetypeMetadata, { as: 'archetypeMetadata' })
			}
			if (table) {
				await sequelize.sync({ alter: true })
				for (let index = 0; index < valuesToSave.length; index++) {
					const data = valuesToSave[index]
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

	},

	async insertComorbitidiesAssociativeTable() {
		try {
			await sequelize.sync({ alter: true })
			//let columns = { dataItemId : { type: DataTypes.INTEGER }, comorbiditiesId : { type: DataTypes.INTEGER } }
			//const dataItemComorbidities = await repository.define('dataItemComorbidities', columns)
			const dataItemList = await repository.getAll(DataItemModel)
			const comorbidities = await repository.getAll(ComorbiditiesModel)
			for (let i = 0; i < dataItemList.length; i++) {
				const dataItem = dataItemList[i];
				const dataItemComorbidities = dataItem.comorbidades
				if (dataItemComorbidities && dataItemComorbidities != 'NULL' && isNaN(dataItemComorbidities)) {
					let dataItemComorbiditiesList = dataItemComorbidities.split(' ')
					for (let l = 0; l < dataItemComorbiditiesList.length; l++) {
						const item = dataItemComorbiditiesList[l];
						let exit = false
						for (let j = 0; j < comorbidities.length; j++) {
							if(exit){
								break
							} 
							const comorbidity = comorbidities[j];
							const synonyms = comorbidity.synonyms
							for (let k = 0; k < synonyms.length; k++) {
								const synonym = synonyms[k];
								if (item.indexOf(synonym) != -1) {
									const dataItemComorbidityAssociation = await repository.getOneDataItemComorbidities(dataItem.id, comorbidity.id)
									if (!dataItemComorbidityAssociation) {
										let associationObj = {
											dataItemId: dataItem.id,
											comorbidityId: comorbidity.id
										}
										await repository.create(DataItemComorbidities, associationObj)
											.then(result => console.log(result))
											.catch(error => console.log(error))
										exit = true
										break
									}else{
										exit = true
										break
									}
								}
							}
						}

					}
				}
			}
		} catch (error) {
			console.log(error);
		}
	}

}
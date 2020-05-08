const parser = require('xml2json');
const fs = require('fs')
const sequelize = require("../database/database")
const { Sequelize, DataTypes } = require('sequelize');


async function getColumn(value, key) {
    let column = {}
    column.name = key.toString()
    column.type = await getColumnType(value)
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
        type = DataTypes.ARRAY.key
    } else if (typeof value == 'string') {
        type = DataTypes.STRING.key
    } else if (typeof value == 'object') {
        type = DataTypes.JSONB.key
    }
    return type
}


module.exports = {

    async mappingTables(archetypeObj) {
        let archetypeDetails = {}, archetypeDetailsValues = {}
        let archetypeMetadata = {}, archetypeMetadataValues = {} //metadados
        let terminology = {}, terminologyValues = {}
        let itemTree = {}, itemTreeValues = {}
        let itemTable = {}, itemTableValues = {}
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
                                        itemTree[column.name] = column.type
                                        itemTreeValues[column.name] = column.value
                                    } else if (attributes.children.rm_type_name.$t == 'ITEM_TABLE') {
                                        itemTable[column.name] = column.type
                                        itemTableValues[column.name] = column.value
                                    }
                                } else if (key == 'description') {
                                    archetypeDetails[column.name] = column.type
                                    archetypeDetailsValues[column.name] = column.value
                                } else if (key == 'ontology') {
                                    terminology[column.name] = column.type
                                    terminologyValues[column.name] = column.value
                                }
                            }
                        }
                    } else {
                        column = await getColumn(element, key)
                        archetypeMetadata[column.name] = column.type
                        archetypeMetadataValues[column.name] = column.value
                    }

                    /* const table = sequelize.define(key, {
    
                    }); */
                }
            }

            console.log(archetypeMetadata);
            console.log(archetypeDetails);
            console.log(terminology);
            console.log(itemTree);

            tables = { archetypeMetadata, archetypeDetails, terminology, itemTree, itemTable }

            this.createTables(tables)
            //return tables
        } catch (error) {
            console.log(error);
        }
    },

    async createTables(tables) {
        try {
            for (const key in tables) {
                if (tables.hasOwnProperty(key)) {
                    const columns = tables[key]
                    columns.id = { type: DataTypes.UUID, primaryKey: true }
                    
                    const table = sequelize.define(key, columns)
                    console.log(table);
                    
                   /*  for (const key in columns) {
                        if (object.hasOwnProperty(key)) {
                            const item = columns[key];
                            Sequelize.addColumn(
                                  key,
                                  item,
                                 Sequelize.BOOLEAN
                            );
                        }
                    } */
                    
                }
            }
        } catch (error) {
            console.log(error);
        }
    }
}
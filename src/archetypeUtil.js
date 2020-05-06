const parser = require('xml2json');
const fs = require('fs')
const sequelize = require("../database/database")
const { Sequelize, DataTypes } = require('sequelize');


async function getColumn(element, key) {
    let column = {}
    column.name = key.toString()
    let type
    if (Array.isArray(element)) {
        type = 'array'
    } else {
        type = typeof element
    }
    column.type = type
    column.value = element
    return column
}

module.exports = {

    async mappingTables(archetypeObj) {
        let archetypeDetails = []
        let archetypeMetadata = [] //metadados
        let terminology = []
        let itemTree = []
        let itemTable = []
        let column = {}
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
                                    console.log('definition')
                                } else if (key == 'description') {
                                    archetypeDetails.push(column)
                                } else if (key == 'ontology') {
                                    terminology.push(column)
                                }
                            }
                        }
                    } else {
                        column = await getColumn(element, key)
                        archetypeMetadata.push(column)
                    }

                /* const table = sequelize.define(key, {

                }); */
            }
        }
        console.log(archetypeMetadata);
        console.log(archetypeDetails);
        console.log(terminology);

        //console.log(User === sequelize.models.User);
    } catch(error) {
        console.log(error);
    }
}
}
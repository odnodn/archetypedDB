const parser = require('xml2json')
const fs = require('fs')
const archetypeUtil = require("./archetypeUtil")
const sequelize = require("../database/database")
//const csv = require('csv')

//Starting database connection

sequelize.authenticate()
  .then(() => {
    start()
    console.log('Connection has been established successfully.');
  })
  .catch(err => {
    console.error('Unable to connect to the database:', err);
  });  

var xmlpath = "/home/ana/Documentos/phd/projects/archetypedDB/docs/archetypes/openEHR-EHR-ADMIN_ENTRY.episode_institution.v0.xml"
var csvFile = "/home/ana/Documentos/phd/projects/archetypedDB/docs/csvs/basegeral_09_07_2020.csv"

/* fs.readFile(xmlpath, function (err, data) {
  if (err) {
    return console.log(err);
  } else {
    var archetypeObj = JSON.parse(parser.toJson(data, { reversible: true }));
    console.log(archetypeObj);
    archetypeObj = archetypeObj.archetype
    start(archetypeObj)
  }
}); */

/* async function start(archetypeObj) {
  const archetypeTables = await archetypeUtil.mappingArchetypeTables(archetypeObj)
  const archetypeMetadata = await archetypeUtil.createArchetypeTables(archetypeTables)
  var columns = await archetypeUtil.getCsvHeaders(csvFile)
  var valuesToSave = await archetypeUtil.getCsvData(csvFile)
  await archetypeUtil.createInsertDataItemTable(columns, valuesToSave, archetypeMetadata)
    .then(() => {
      console.log("done");
    })
    .catch(error => console.log(error))
} */

async function start() {
  await archetypeUtil.insertComorbitidiesAssociativeTable()
    .then(() => {
      console.log("done");
    })
    .catch(error => console.log(error))
}


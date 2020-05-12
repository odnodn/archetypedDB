const parser = require('xml2json')
const fs = require('fs')
const archetypeUtil = require("./archetypeUtil")
const sequelize = require("../database/database")

//Starting database connection

/* sequelize.authenticate()
  .then(() => {
    console.log('Connection has been established successfully.');
  })
  .catch(err => {
    console.error('Unable to connect to the database:', err);
  }); */

var xmlpath = "/home/ana/Documents/phd/projects/archetypedDB/docs/archetypes/openEHR-EHR-ADMIN_ENTRY.episode_institution.v0.xml"

fs.readFile(xmlpath, function (err, data) {
  if (err) {
    return console.log(err);
  } else {
    archetypeObj = JSON.parse(parser.toJson(data, { reversible: true }));
    console.log(archetypeObj);
    archetypeObj = archetypeObj.archetype
    archetypeUtil.mappingTables(archetypeObj)
  }
});


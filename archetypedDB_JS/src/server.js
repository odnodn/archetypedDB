const parser = require('xml2json');
const fs = require('fs') 
const archetypeUtil = require("./archetypeUtil")


var xmlpath = '../docs/archetypes/openEHR-EHR-ADMIN_ENTRY.episode_institution.v0.xml'



/* let archetypeObj = archetypeUtil.readXML(xmlpath)
console.log(archetypeObj); */


 fs.readFile(xmlpath, function (err, data) {
    if (err) {
        return console.log(err);
    } else {
        archetypeObj = JSON.parse(parser.toJson(data, { reversible: true }));
        console.log(archetypeObj);
    }
}); 
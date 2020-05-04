const parser = require('xml2json');
const fs = require('fs')
var xmlpath = '/home/ana/Documents/phd/projects/archetypedDB/docs/archetypes/openEHR-EHR-ADMIN_ENTRY.episode_institution.v0.xml'


fs.readFile(xmlpath, function (err, data) {
    if (err) {
        return console.log(err);
    } else {
        archetypeObj = JSON.parse(parser.toJson(data, { reversible: true }));
        console.log(archetypeObj);
    }
});
const archetypeRead = require("./archetypeRead.js")

var xml = "/home/ana/Documents/phd/projects/archetypedDB/docs/archetypes/openEHR-EHR-ADMIN_ENTRY.episode_institution.v0.xml";


archetypeRead.readXML(xml)
    .then(result => {
        console.log(result);

    })
    .catch(error => { console.log(error) });
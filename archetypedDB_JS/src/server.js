const archetypeUtil = require("./archetypeUtil")

var xml = "/home/ana/Documentos/phd/archetypedDB/docs/archetypes/openEHR-EHR-ADMIN_ENTRY.episode_institution.v0.xml";


archetypeUtil.readXML(xml)
    .then(result => {
        console.log(result);

    })
    .catch(error => { console.log(error) });
const parser = require('xml2json');
const fs = require('fs')

module.exports = {

    async readXML(xmlpath) {
      let archetypeObj;
        fs.readFile(xmlpath, function (err, data) {
            if (err) {
                return console.log(err);
            } else {
                archetypeObj = JSON.parse(parser.toJson(data, { reversible: true }));
            }
        });
        return archetypeObj
    },

    async getMetadata(archetypeObj) {
        console.log(archetypeObj.description);
    }
}
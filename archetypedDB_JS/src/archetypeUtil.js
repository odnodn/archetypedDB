const parser = require('xml2json');
const fs = require('fs')

module.exports = {

    async readXML(xml) {
        try {
            let file = fs.readFile(xml)
            var json = await parser.toJson(file)
            return json
        } catch (error) {
            console.log(error);
        }
    },

    async getMetadata(json) {

        let file = fs.readFile(xml);
        var json = await parser.toJson(file)
        return json
    },
}
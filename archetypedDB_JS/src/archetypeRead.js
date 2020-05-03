const parser = require('xml2json');
const fs = require('fs')

module.exports = {

    async readXML(xml) {
        
        let file = fs.readFile(xml);
        var json = await parser.toJson(file)
        return json
    }
}
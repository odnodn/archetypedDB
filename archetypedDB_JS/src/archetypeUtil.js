const parser = require('xml2json');
const fs = require('fs')
const sequelize = require("../database/database")


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

    async createTables(archetypeObj) {
        sequelize
            .authenticate()
            .then(() => {
                console.log('Connection has been established successfully.');
            })
            .catch(err => {
                console.error('Unable to connect to the database:', err);
            });
    }
}
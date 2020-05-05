const parser = require('xml2json');
const fs = require('fs')
const sequelize = require("../database/database")


module.exports = {

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
const sequelize = require("../database/database")
const { Sequelize, DataTypes } = require('sequelize')


exports.define = (name, columns) => {
    try {
        sequelize.sync({ alter: true })
        const table = sequelize.define(name, columns)
        return table
    } catch (error) {
        console.log(error);
    }
}

exports.create = (table, data) => {
    try {
        let result = table.create(data)
        return result
    } catch (error) {
        console.log(error);
    }
}
const sequelize = require("../database/database")
const { Sequelize, DataTypes } = require('sequelize')


exports.define = async (name, columns) => {
    try {
        const table = await sequelize.define(name, columns)
        return table
    } catch (error) {
        console.log(error);
    }
}

exports.create = async (table, data) => {
    try {
        const result = table.create(data)
        return result
    } catch (error) {
        console.log(error);
    }
}
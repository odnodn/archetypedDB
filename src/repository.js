const sequelize = require("../database/database")
const { Sequelize, DataTypes } = require('sequelize')
const DataItemComorbidities = require("./models/dataItemComorbidities.model")


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
        const result = await table.create(data)
        return result
    } catch (error) {
        console.log(error);
    }
}

exports.getAll = async (table) => {
    try {
        const result = await table.findAll({
            offset: 0,
            limit: 1000,
            order: [
                ['id', 'ASC']
            ]
        })
        return result
    } catch (error) {
        console.log(error);
    }
}

exports.getOne = async (table, id) => {
    try {
        const result = await table.findByPk(id)
        return result
    } catch (error) {
        console.log(error);
    }
}

exports.getOneDataItemComorbidities = async (dataItemId, comorbidityId) => {
    try {
        const result = await DataItemComorbidities.findOne({
            where: {
                dataItemId: dataItemId,
                comorbidityId: comorbidityId
            }
        })
        return result
    } catch (error) {
        console.log(error);
    }
}
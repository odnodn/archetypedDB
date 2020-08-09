const sequelize = require("../../database/database")
const { Sequelize, DataTypes } = require('sequelize')
const DataItemModel = require("./dataItem.model")
const ComorbiditiesModel = require("./comorbidities.model")


const DataItemComorbities = sequelize.define('dataItemComorbidities', {})

DataItemComorbities.belongsTo(DataItemModel)
DataItemComorbities.belongsTo(ComorbiditiesModel)

module.exports = DataItemComorbities

const sequelize = require("../../database/database")
const { Sequelize, DataTypes } = require('sequelize')

const NonstandardComorbidities = sequelize.define('nonstandardComorbidities', {
  id: {
    type: DataTypes.INTEGER,
    autoIncrement: true,
    primaryKey: true
  },
  description: {
    type: DataTypes.STRING,
    allowNull: false
  }
})

module.exports = NonstandardComorbidities
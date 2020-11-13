const sequelize = require("../../database/database")
const { Sequelize, DataTypes } = require('sequelize')

const Comorbidities = sequelize.define('comorbidities', {
  id: {
    type: DataTypes.INTEGER,
    autoIncrement: true,
    primaryKey: true
  },
  icd_name: {
    type: DataTypes.STRING,
    allowNull: false
  },
  icd_code: {
    type: DataTypes.STRING,
    allowNull: false
  },
  abbreviation: {
    type: DataTypes.STRING
  },
  name_pt: {
    type: DataTypes.STRING,
    allowNull: false
  },
  abbreviation_pt: {
    type: DataTypes.STRING
  },
  synonyms: {
    type: DataTypes.ARRAY(DataTypes.STRING),
    allowNull: false
  }
})

module.exports = Comorbidities
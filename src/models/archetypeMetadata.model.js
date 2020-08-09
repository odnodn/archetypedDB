const sequelize = require("../../database/database")
const { Sequelize, DataTypes } = require('sequelize')

const ArchetypeMetadata = sequelize.define('archetypeMetadata', {
  id: {
    type: DataTypes.INTEGER,
    autoIncrement: true,
    primaryKey: true
  },
  xmlns:{
    type: DataTypes.STRING
  },
  "xmlns:xsi":{
    type: DataTypes.STRING
  },
  "xmlns:xsd":{
    type: DataTypes.STRING
  },
  original_language:{
    type: DataTypes.JSONB
  },
  is_controlled:{
    type: DataTypes.JSONB,
  },
  translations:{
    type: DataTypes.ARRAY(DataTypes.JSONB),
  },
  uid:{
    type: DataTypes.JSONB,
  },
  archetype_id:{
    type: DataTypes.JSONB,
  },
  adl_version:{
    type: DataTypes.JSONB,
  },
  concept:{
    type: DataTypes.JSONB,
  }
})

module.exports = ArchetypeMetadata
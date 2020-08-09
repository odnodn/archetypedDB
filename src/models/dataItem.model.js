const sequelize = require("../../database/database")
const { Sequelize, DataTypes } = require('sequelize')
const archetypeMetadata = require("./archetypeMetadata.model")

const DataItem = sequelize.define('data_item', {
  id: {
    type: DataTypes.INTEGER,
    autoIncrement: true,
    primaryKey: true
  },
  dt_notificacao:{
    type: DataTypes.DATE
  },
  "Sexo":{
    type: DataTypes.STRING
  },
  municipio:{
    type: DataTypes.STRING
  },          
  dt_primeiros_sintomas:{
    type: DataTypes.DATE
  },
  sintomas:{
    type: DataTypes.STRING
  }, 
  comorbidades:{
    type: DataTypes.STRING
  }, 
  hospitalizacao:{
    type: DataTypes.STRING
  }, 
  classe:{
    type: DataTypes.STRING
  }, 
  "Resultado":{
    type: DataTypes.STRING
  }, 
  evolucao:{
    type: DataTypes.STRING
  }, 
  dt_obito:{
    type: DataTypes.DATE
  }, 
  cd_municipio:{
    type: DataTypes.STRING
  }, 
  faixa_etaria:{
    type: DataTypes.STRING
  }, 
  tipo:{
    type: DataTypes.STRING
  }
});

DataItem.belongsTo(archetypeMetadata, { as: 'archetypeMetadata' })

module.exports = DataItem
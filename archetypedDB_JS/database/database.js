const Sequelize = require("sequelize");

const sequelize = new Sequelize(
  'archetypedDB',
  'postgres',
  'postgres',
  {
    host: 'localhost',
    dialect: 'postgres'
  }
);

module.exports = sequelize;
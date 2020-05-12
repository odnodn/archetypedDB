const Sequelize = require("sequelize");

const sequelize = new Sequelize(
  'postgres',
  'postgres',
  'postgres',
  {
    host: '192.168.15.2',
    dialect: 'postgres',
    port: 5432
  }
);

module.exports = sequelize;
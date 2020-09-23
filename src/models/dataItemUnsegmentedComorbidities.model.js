const sequelize = require("../../database/database")
const DataItemModel = require("./dataItem.model")
const NonstandardComorbidities = require("./nonstandardComorbidities.model")


const DataItemUnsegmentedComorbities = sequelize.define('dataItemUnsegmentedComorbidities', {})

DataItemUnsegmentedComorbities.belongsTo(DataItemModel)
DataItemUnsegmentedComorbities.belongsTo(NonstandardComorbidities)

module.exports = DataItemUnsegmentedComorbities

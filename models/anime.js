'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class anime extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  }
  anime.init(
    {
      name: DataTypes.STRING,
      status: DataTypes.STRING,
      release: DataTypes.STRING,
      producer: DataTypes.STRING,
      duration: DataTypes.STRING,
      cover: DataTypes.STRING,
    },
    {
      sequelize,
      modelName: "anime",
    }
  );
  return anime;
};
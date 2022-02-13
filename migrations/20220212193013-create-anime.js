'use strict';
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.createTable("animes", {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER,
      },
      name: {
        type: Sequelize.TEXT,
      },
      status: {
        type: Sequelize.TEXT,
      },
      release: {
        type: Sequelize.DATEONLY,
      },
      producer: {
        type: Sequelize.TEXT,
      },
      duration: {
        type: Sequelize.TEXT,
      },
      cover: {
        type: Sequelize.TEXT,
      },
      createdAt: {
        allowNull: false,
        type: Sequelize.DATE,
      },
      updatedAt: {
        allowNull: false,
        type: Sequelize.DATE,
      },
    });
  },
  async down(queryInterface, Sequelize) {
    await queryInterface.dropTable('animes');
  }
};
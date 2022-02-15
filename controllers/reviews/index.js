const model = require("../../models");
const setRedis = require("../../utils/setRedis");

module.exports = {
  getReviews: (req, res) => {
    const { limit, offset } = req.query;

    model.reviews.belongsTo(model.anime, {
      foreignKey: {
        name: "anime_id",
        allowNull: false,
      },
    });

    model.reviews.belongsTo(model.users, {
      foreignKey: {
        name: "anime_id",
        allowNull: false,
      },
    });

    model.reviews
      .findAndCountAll({
        limit: parseInt(limit) || 3,
        offset: parseInt(offset) || 0,
        order: [["id", "DESC"]],
        include: [
          {
            model: model.anime,
            required: true,
          },
          {
            model: model.users,
            required: true,
          },
        ],
      })
      .then((result) => {
        // Set data to redis for 10 seconds
        setRedis(req.originalUrl, JSON.stringify(result));
        res.json({
          status: "OK",
          messages: "",
          data: result,
        });
      })
      .catch((error) =>
        res.json({
          status: "ERROR",
          messages: error.message,
          data: null,
        })
      );
  },
  getProfileReviews: (req, res) => {
    const id = req.params.id;
    const { limit, offset } = req.query;

    model.reviews.belongsTo(model.anime, {
      foreignKey: {
        name: "anime_id",
        allowNull: false,
      },
    });

    model.reviews.belongsTo(model.users, {
      foreignKey: {
        name: "anime_id",
        allowNull: false,
      },
    });

    model.reviews
      .findAndCountAll({
        limit: parseInt(limit) || 3,
        offset: parseInt(offset) || 0,
        order: [["id", "DESC"]],
        where: { user_id: id },
        include: [
          {
            model: model.anime,
            required: true,
          },
          {
            model: model.users,
            required: true,
          },
        ],
      })
      .then((result) => {
        // Set data to redis for 10 seconds
        setRedis(req.originalUrl, JSON.stringify(result));
        res.json({
          status: "OK",
          messages: "",
          data: result,
        });
      })
      .catch((error) =>
        res.json({
          status: "ERROR",
          messages: error.message,
          data: null,
        })
      );
  },
  addReviews: (req, res) => {
    const requestBody = req.body;

    model.reviews
      .create(requestBody)
      .then((result) => {
        if (!result) throw new Error("Failed insert data");

        res.status(201).json({
          status: "OK",
          messages: "insert success",
          data: null,
        });
      })
      .catch((error) =>
        res.status(400).json({
          status: "ERROR",
          messages: error.message || "Something wrong",
          data: null,
        })
      );
  },
  editReviews: (req, res) => {
    const id = req.params.id;
    const requestBody = req.body;
    model.reviews
      .update(requestBody, {
        where: {
          id,
        },
      })
      .then((result) => {
        if (!result) throw new Error("Failed edit data");

        res.status(200).json({
          status: "OK",
          messages: "edit success",
          data: null,
        });
      })
      .catch((error) =>
        res.status(400).json({
          status: "ERROR",
          messages: error.message || "Something wrong",
          data: null,
        })
      );
  },
  deleteReviews: (req, res) => {
    const id = req.params.id;
    model.reviews
      .destroy({ where: { id } })
      .then((result) => {
        if (!result) throw new Error("Failed delete data");

        res.status(200).json({
          status: "OK",
          messages: "delete success",
          data: null,
        });
      })
      .catch((error) =>
        res.status(400).json({
          status: "ERROR",
          messages: error.message || "Something wrong",
          data: null,
        })
      );
  },
  findReviews: (req, res) => {
    const { id } = req.params;

    model.reviews.belongsTo(model.anime, {
      foreignKey: {
        name: "anime_id",
        allowNull: false,
      },
    });

    model.reviews.belongsTo(model.users, {
      foreignKey: {
        name: "anime_id",
        allowNull: false,
      },
    });

    model.reviews
      .findOne({
        where: { id },
        include: [
          {
            model: model.anime,
            required: true,
          },
          {
            model: model.users,
            required: true,
          },
        ],
      })
      .then((result) => {
        // Set data to redis for 10 seconds
        setRedis(req.originalUrl, JSON.stringify(result));
        res.json({
          status: "OK",
          messages: "",
          data: result,
        });
      })
      .catch((error) =>
        res.json({
          status: "ERROR",
          messages: error.message,
          data: null,
        })
      );
  },
};

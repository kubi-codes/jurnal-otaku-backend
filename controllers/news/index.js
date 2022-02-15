const model = require("../../models");
const setRedis = require("../../utils/setRedis");

module.exports = {
  getNews: (req, res) => {
    const { limit, offset } = req.query;

    model.news
      .findAndCountAll({
        limit: parseInt(limit) || 3,
        offset: parseInt(offset) || 0,
        order: [["id", "DESC"]],
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
  addNews: (req, res) => {
    const requestBody = req.body;

    model.news
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
  editNews: (req, res) => {
    const id = req.params.id;
    const requestBody = req.body;
    model.news
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
  deleteNews: (req, res) => {
    const id = req.params.id;
    model.news
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
  findNews: (req, res) => {
    const { id } = req.params;

    model.news
      .findOne({
        where: { id },
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

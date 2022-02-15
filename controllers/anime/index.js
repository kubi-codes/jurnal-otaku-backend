const model = require("../../models");
const setRedis = require("../../utils/setRedis");

module.exports = {
  getAnime: (req, res) => {
    model.anime
      .findAll()
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
  getAnimeBestOfWeek: (req, res) => {
    model.sequelize
      .query(
        "SELECT COUNT(reviews.anime_id) as total, ROUND(AVG(reviews.rating)) as rating, animes.* FROM reviews INNER JOIN animes ON animes.id = reviews.anime_id GROUP BY reviews.anime_id LIMIT 3 OFFSET 0",
        {
          type: model.sequelize.QueryTypes.SELECT,
        }
      )
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
  addAnime: (req, res) => {
    const requestBody = req.body;

    model.anime
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
  editAnime: (req, res) => {
    const id = req.params.id;
    const requestBody = req.body;
    model.anime
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
  deleteAnime: (req, res) => {
    const id = req.params.id;
    model.anime
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
};

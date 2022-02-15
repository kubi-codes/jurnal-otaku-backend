const version = "/v1";

module.exports = [
  // BANNER
  {
    path: `${version}/banner`,
    controllers: require("../controllers/banner").addBanner,
    method: "post",
    cache: true,
  },
  {
    path: `${version}/banner/:id`,
    controllers: require("../controllers/banner").editBanner,
    method: "patch",
    cache: true,
  },
  {
    path: `${version}/banner/:id`,
    controllers: require("../controllers/banner").deleteBanner,
    method: "delete",
    cache: true,
  },

  // ANIME
  {
    path: `${version}/anime`,
    controllers: require("../controllers/anime").addAnime,
    method: "post",
    cache: true,
  },
  {
    path: `${version}/anime/:id`,
    controllers: require("../controllers/anime").editAnime,
    method: "patch",
    cache: true,
  },
  {
    path: `${version}/anime/:id`,
    controllers: require("../controllers/anime").deleteAnime,
    method: "delete",
    cache: true,
  },

  // NEWS
  {
    path: `${version}/news`,
    controllers: require("../controllers/news").addNews,
    method: "post",
    cache: true,
  },
  {
    path: `${version}/news/:id`,
    controllers: require("../controllers/news").editNews,
    method: "patch",
    cache: true,
  },
  {
    path: `${version}/news/:id`,
    controllers: require("../controllers/news").deleteNews,
    method: "delete",
    cache: true,
  },

  // REVIEWS
  {
    path: `${version}/reviews`,
    controllers: require("../controllers/reviews").addReviews,
    method: "post",
    cache: true,
  },
  {
    path: `${version}/reviews/profile/:id`,
    controllers: require("../controllers/reviews").getProfileReviews,
    method: "get",
    cache: true,
  },
  {
    path: `${version}/reviews/:id`,
    controllers: require("../controllers/reviews").editReviews,
    method: "patch",
    cache: true,
  },
  {
    path: `${version}/reviews/:id`,
    controllers: require("../controllers/reviews").deleteReviews,
    method: "delete",
    cache: true,
  },
];

const version = "/v1";

module.exports = [
  {
    path: `${version}/auth/login`,
    controllers: require("../controllers/auth").login,
    validator: require("../controllers/auth/validator").loginValidator, // global validator
    method: "post",
  },
  {
    path: `${version}/auth/register`,
    controllers: require("../controllers/auth").register,
    validator: require("../controllers/auth/validator").registerValidator, // global validator
    method: "post",
  },
  {
    path: `${version}/auth/logout/:id`,
    controllers: require("../controllers/auth").logout,
    method: "get",
  },
  {
    path: `${version}/news`,
    controllers: require("../controllers/news").getNews,
    method: "get",
    cache: true,
  },
  {
    path: `${version}/news/detail/:id`,
    controllers: require("../controllers/news").findNews,
    method: "get",
    cache: true,
  },
  {
    path: `${version}/reviews`,
    controllers: require("../controllers/reviews").getReviews,
    method: "get",
    cache: true,
  },
  {
    path: `${version}/reviews/detail/:id`,
    controllers: require("../controllers/reviews").findReviews,
    method: "get",
    cache: true,
  },
  {
    path: `${version}/anime`,
    controllers: require("../controllers/anime").getAnime,
    method: "get",
    cache: true,
  },
  {
    path: `${version}/anime/best-of-week`,
    controllers: require("../controllers/anime").getAnimeBestOfWeek,
    method: "get",
    cache: true,
  },
  {
    path: `${version}/banner`,
    controllers: require("../controllers/banner").getBanner,
    method: "get",
    cache: true,
  },
];

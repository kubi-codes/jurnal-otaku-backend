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
    method: "post",
  },
  {
    path: `${version}/auth/logout/:id`,
    controllers: require("../controllers/auth").logout,
    method: "get",
  },
];

module.exports = {
  loginValidator: {
    email: "required|email",
    password: "required|minLength:6",
  },
  registerValidator: {
    fullname: "required",
    email: "required|email",
    password: "required|minLength:6",
  },
};

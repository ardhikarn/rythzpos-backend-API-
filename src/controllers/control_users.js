const bcrypt = require("bcrypt");
const { postUser, checkUser } = require("../models/model_users");
const jwt = require("jsonwebtoken");
const helper = require("../helper/helper");

module.exports = {
  registerUser: async (request, response) => {
    const { user_email, user_password, user_name } = request.body;
    // utk merubah password agar di enkripsi
    const salt = bcrypt.genSaltSync(10);
    const encryptPassword = bcrypt.hashSync(user_password, salt);
    // kondisi jika email sama tidak bisa
    const addData = {
      user_email,
      user_password: encryptPassword,
      user_name,
      user_role: 2,
      user_status: 0,
      user_created_at: new Date(),
    };
    try {
      // kondisi jika email sama tidak bisa
      if (addData.user_email === result.user_email) {
        return helper.response(response, 400, "Email Already Used");
      } else {
        const result = await postUser(addData);
        return helper.response(response, 200, "Success Register User", result);
      }
    } catch (error) {
      return helper.response(response, 400, "Bad Request", error);
    }
  },
  loginUser: async (request, response) => {
    try {
      const { user_email, user_password } = request.body;
      const checkDataUser = await checkUser(user_email);
      if (checkDataUser.length >= 1) {
        // console.log(true);
        const checkPassword = bcrypt.compareSync(
          // proses cek password
          user_password,
          checkDataUser[0].user_password
        );
        if (checkPassword) {
          // proses set JWT
          const {
            user_id,
            user_email,
            user_name,
            user_role,
            user_status,
          } = checkDataUser[0];
          let payload = {
            user_id,
            user_email,
            user_name,
            user_role,
            user_status,
          };
          const token = jwt.sign(payload, "RAHASIA", { expiresIn: "12h" });
          payload = { ...payload, token };
          return helper.response(response, 200, "Success Login!", payload);
        } else {
          return helper.response(response, 400, "Wrong Password !");
        }
      } else {
        return helper.response(
          response,
          400,
          "Email / Account not Registered !"
        );
      }
    } catch (error) {
      return helper.response(response, 400, "Bad Request", error);
    }
  },
};

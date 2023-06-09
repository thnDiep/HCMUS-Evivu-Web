import bcrypt from "bcryptjs";
import authModel from "../models/authModel.js";

export const signup = async (req, res, next) => {
  try {
    const rawPassword = req.body.MatKhau;
    const salt = bcrypt.genSaltSync(10);
    const hash = bcrypt.hashSync(rawPassword, salt);
    const user = {
      ...req.body,
      MatKhau: hash,
    };
    const check = (name, check, i) => {
      if (name === check) {
        return 0;
      }
      return 1;
    };
    const emailAvailable = await authModel.findByEmail(req.body.Email);
    // Đem check tên đã đc tìm trong db vs tên user vừa req lên

    const checkEmail = check(emailAvailable?.Email, user.Email, 1);

    if (checkEmail === 0) {
      return next(res.status(400).send("Email đã tồn tại"));
    }
    await authModel.add(user);
    res.status(200).send("Đăng ký thành công");
  } catch (err) {
    next(err);
  }
};

export const login = async (req, res, next) => {
  try {
    const check = (name, chec) => {
      if (name === chec) {
        return 0;
      } else {
        return 1;
      }
    };
    const emailAvailable = await authModel.findByEmail(req.body.Email);
    if (check(emailAvailable?.Email, req.body.Email) == 1) {
      return next(res.status(400).send("Email và Password không đúng"));
    } else {
      if (check(emailAvailable?.Email, req.body.Email) == 0) {
        // Đúng email rồi so sánh password
        const [passAvailable] = await authModel.findByEmailToCheckPassword(
          req.body.Email
        );
        const ret = bcrypt.compareSync(req.body.MatKhau, passAvailable.MatKhau);
        if (!ret) {
          return next(res.status(400).send("Email và Password không đúng"));
        }
        let ThongBao = "";
        if (emailAvailable.TrangThai === 0) {
          return next(res.status(400).send("Tài khoản đã bị khóa"));
        }

        let link;
        if (emailAvailable.PhanQuyen == 0) {
          link = "/";
        } else if (emailAvailable.PhanQuyen == 1) {
          link = "/cks/manageHotel";
        } else if (emailAvailable.PhanQuyen == 2) {
          link = "/admin";
        }

        res.json({ emailAvailable, link, ThongBao });
      }
    }
  } catch (err) {
    next(err);
  }
};

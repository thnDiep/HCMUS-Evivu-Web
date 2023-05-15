import bcrypt from "bcryptjs";
import orderModel from "../models/orderModel.js";
import feedbackModel from "../models/feedbackModel.js";

// kiểm tra đơn đặt phòng
export const order = async (req, res, next) => {
  try {
    const check = (name, check, i) => {
      if (name === check) {
        return 0;
      }
      return 1;
    };
    const codeAvailable = await orderModel.findById(req.body.MaDatPhong);
    if (check(codeAvailable?.MaDatPhong, req.body.MaDatPhong) == 1) {
      return next(res.status(400).send("Không tìm thấy đơn đặt phòng"));
    } else {
      const [phoneAvailable] = await orderModel.findByIdToCheckPhone(
        req.body.MaDatPhong
      );
      if (check(phoneAvailable?.SoDienThoai, req.body.SoDienThoai) == 1) {
        return next(res.status(400).send("Không tìm thấy đơn đặt phòng"));
      }
      res.status(200).send("Đã tìm thấy đơn đặt phòng.");
    }
  } catch (err) {
    next(err);
  }
};

// đánh giá và bình luận KS
export const comment = async (req, res, next) => {
  try {
    console.log(req.body);
    const feedback = {
      ...req.body,
    };
    await feedbackModel.add(feedback);
    res.status(200).send("Đã lưu đánh giá.");
  } catch (error) {
    console.log(error);
    return next(res.status(400).send("Không lưu được đánh giá."));
  }
};

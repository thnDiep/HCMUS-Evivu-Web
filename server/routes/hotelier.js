import express from "express";
import hotelModel from "../models/hotelModel.js";
import promotionModel from "../models/promotionModel.js";
import { order } from "../controller/hotelier.js";
import {
  facility,
  addHotel,
  updateHotel,
  addRoom,
  facilityRoom,
  updateRoom,
} from "../controller/hotelier.js";
import facilityModel from "../models/facilityModel.js";
import roomModel from "../models/roomModel.js";
import orderModel from "../models/orderModel.js";
import authModel from "../models/authModel.js";
const router = express.Router();

// Lấy dữ liệu hiện danh sách tiện ích
router.get("/facility", facility);

// Lấy dữ liệu hiện danh sách tiện ích phòng
router.get("/room/facility", facilityRoom);

// Thực hiện thêm khách sạn
router.post("/hotel/insert", addHotel);
router.post("/hotel/update", updateHotel);

// Lấy dữ liệu hiện các đơn đặt phòng
router.get("/order", order);
// duyệt
router.get("/order/update", async (req, res, next) => {
  try {
    const MaDatPhong = req.query.MaDatPhong;
    const TrangThai = req.query.TrangThai;
    await orderModel.updateTrangThai(MaDatPhong, TrangThai);
    res.json({ MaDatPhong });
  } catch (err) {
    next(err);
  }
});

// Thực hiện thêm phong
router.post("/room/insert", addRoom);
router.post("/room/update", updateRoom);

router.get("/hotel/del", async (req, res, next) => {
  try {
    const idKhachSan = req.query.idKhachSan;
    // console.log(idKhachSan);
    if (idKhachSan) {
      const check = await roomModel.getAllByKhachSan(idKhachSan);
      console.log(check);
      if (check.length !== 0) {
        next(
          res.status(400).send("Bạn phải xóa phòng trước khi xóa khách sạn")
        );
      } else {
        await hotelModel.delRoomByIDKS(idKhachSan);
        await hotelModel.delWashListIDKS(idKhachSan);
        await hotelModel.delTienNghiIDKS(idKhachSan);
        await hotelModel.delKhuyenMaiIDKS(idKhachSan);
        await hotelModel.delHinhAnhIDKS(idKhachSan);
        await hotelModel.delThongIDKS(idKhachSan);
        await hotelModel.del(idKhachSan);
        res.json({ idKhachSan });
      }
    }
  } catch (err) {
    next(err);
  }
});

router.get("/room/del", async (req, res, next) => {
  try {
    const idPhong = req.query.IDPhong;
    console.log(idPhong);
    if (idPhong) {
      await hotelModel.delTienNghiIDRoom(idPhong);
      await hotelModel.delHinhAnhIDPhong(idPhong);
      await hotelModel.delUuDaiIDPhong(idPhong);
      await hotelModel.delRoom(idPhong);
    }

    res.json({ idPhong });
  } catch (err) {
    next(err);
  }
});
router.get("/order/del", async (req, res, next) => {
  try {
    const MaDatPhong = req.query.MaDatPhong;
    const IDPhong = req.query.IDPhong;
    if (MaDatPhong) {
      await hotelModel.delOrder(MaDatPhong);
      // await roomModel.updateCongPhong(IDPhong);
    }

    res.json({ MaDatPhong });
  } catch (err) {
    next(err);
  }
});
// HinhAnh: url,
// hotel: hotel,
// tienNghi: IDTienNghi,
// thongTin: filteredThongTin,
router.get("/room/update", async (req, res, next) => {
  try {
    console.log("đâsdasdjghjgjg");
    const idRoom = req.query.IDPhong || 1;

    const [room] = await roomModel.getRoomByID(idRoom);
    const [giuongDon] = await roomModel.getGiuong(idRoom, 1);
    if (giuongDon !== undefined) room.GiuongDon = giuongDon.SoLuongGiuong;
    const [giuongDoi] = await roomModel.getGiuong(idRoom, 2);
    console.log(giuongDoi);
    if (giuongDoi !== undefined) room.GiuongDoi = giuongDoi.SoLuongGiuong;

    const hinhAnh = await roomModel.getImage(idRoom);
    const tienNghi = await facilityModel.getTienNghiPhong(idRoom);
    const uuDai = await facilityModel.getUuDaiphong(idRoom);
    const idUuDai = uuDai.map((item) => item.IDUuDai);
    const idTienNghi = tienNghi.map((item) => item.IDTienNghi);
    // const hotels = await hotelModel.findByHotelierId(idCKS)
    // const promotion = await promotionModel.findById(idPromotion);
    // // const periods = await promotionModel.getPeriods()
    const HinhAnh = hinhAnh.map((image) => image.HinhAnh);
    res.json({ room, HinhAnh, idTienNghi, idUuDai });
  } catch (err) {
    next(err);
  }
});

router.get("/hotel/update", async (req, res, next) => {
  try {
    const idKhachSan = req.query.IDKhachSan || 1;
    const idCKS = req.query.IDCKS || 1;
    const hotel = await hotelModel.findById(idKhachSan);
    console.log(hotel);
    const hinhAnh = await hotelModel.getImage(idKhachSan);
    const tienNghi = await facilityModel.getTienNghiKhachSan(idKhachSan);
    const thongTin = await facilityModel.getThongTinKhachSan(idKhachSan);
    console.log(thongTin);
    const idTienNghi = tienNghi.map((item) => item.IDTienNghi);
    // const hotels = await hotelModel.findByHotelierId(idCKS)
    // const promotion = await promotionModel.findById(idPromotion);
    // // const periods = await promotionModel.getPeriods()
    const HinhAnh = hinhAnh.map((image) => image.HinhAnh);
    res.json({ hotel, HinhAnh, idTienNghi, thongTin });
  } catch (err) {
    next(err);
  }
});

router.get("/hotel/stop", async (req, res, next) => {
  try {
    const IDKhachSan = req.query.IDKhachSan;
    const TrangThai = req.query.TrangThai;
    console.log(IDKhachSan);
    if (IDKhachSan) {
      await hotelModel.updateTrangThai(IDKhachSan, TrangThai);
      res.json({ IDKhachSan });
    } else {
      next(res.status(400).send("Bạn phải xóa phòng trước khi xóa khách sạn"));
    }
  } catch (err) {
    next(err);
  }
});

router.get("/room/stop", async (req, res, next) => {
  try {
    const IDPhong = req.query.IDPhong;
    const TrangThai = req.query.TrangThai;
    console.log(IDPhong);
    if (IDPhong) {
      await hotelModel.updateTrangThai(IDPhong, TrangThai);
      if (TrangThai === 2) res.status(200).send("Tạm ngưng thành công.");
      else res.status(200).send("Tiếp tục hoạt động thành công.");
    } else {
      next(res.status(400).send("Bạn phải xóa phòng trước khi xóa khách sạn"));
    }
  } catch (err) {
    next(err);
  }
});

router.get("/profile", async (req, res, next) => {
  try {
    const id = req.query.idCKS || 2;

    const user = await authModel.findById(id);
    const bank = await authModel.getBank(id);
    res.json({ user, bank });
  } catch (err) {
    next(err);
  }
});

router.post("/profile", async (req, res, next) => {
  try {
    const info = req.body.thongtin;

    const user = info.user;
    const bank = info.bank;

    await authModel.update(user);

    if (bank.ID) {
      await authModel.updateBank(bank);
    } else {
      await authModel.addBank(bank);
    }

    res.json({ user, bank });
  } catch (err) {
    next(err);
  }
});

export default router;

import express from "express"
import wishListModel from "../models/wishListModel.js"
import authModel from "../models/authModel.js"
import orderModel from "../models/orderModel.js"

const router = express.Router()

// Lấy dữ liệu thông tin người dùng
router.get("/", async (req, res, next) => {
  try {
    const ID = req.query.ID || 4

    const profileInfo = await authModel.findById(ID)

    res.json(profileInfo)
  } catch (err) {
    next(err)
  }
})

// Thực hiện update thông tin người dùng
router.post("/update", async (req, res, next) => {
  try {
    // const ID = req.query.ID || 4;
    const info = req.body.info

    await authModel.update(info)

    res.json({})
  } catch (err) {
    next(err)
  }
})

// Xóa người dùng
router.get("/del", async (req, res, next) => {
  try {
    const idUser = req.query.idUser

    if (idUser) {
      await authModel.del(idUser)
    }

    res.json({ idUser })
  } catch (err) {
    next(err)
  }
})

// thêm khách sạn vào ds yêu thích
router.post("/addToWishList", async (req, res, next) => {
  try {
    const data = req.body.data
    await wishListModel.addToWishList(data)
    res.json({})
  } catch (err) {
    next(err)
  }
})

// xóa khách sạn khỏi ds yêu thích
router.post("/removeFromWishList", async (req, res, next) => {
  try {
    const data = req.body.data
    await wishListModel.removeFromWishList(data)
    res.json({})
  } catch (err) {
    next(err)
  }
})

router.get("/wishlist", async (req, res, next) => {
  try {
    const id = req.query.ID || 4;
    const wishlist = await wishListModel.getWishList(id);
    res.json(wishlist);
  } catch (err) {
    next(err)
  }
})

router.get("/order", async (req, res, next) => {
  try {
    const id = req.query.ID || 4;
    const order = await orderModel.getOrder(id);
    res.json(order);
  } catch (err) {
    next(err)
  }
})

router.get("/order/qr", async (req, res, next) => {
  try {
    const id = req.query.ID || 4
    const order = await orderModel.getOrderByOrderCode(id)
    res.json(order)
  } catch (err) {
    next(err)
  }
})

router.get("/order/detail", async (req, res, next) => {
  try {
<<<<<<< HEAD
    const MaDatPhong = req.body.MaDatPhong || 5743539
    const result = await orderModel.getOrderByOrderCode(MaDatPhong)
    console.log("1111")
    console.log(result)
    res.json(result)
=======
    const MaDatPhong = req.query.ID || 5743539;
    const result = await orderModel.getOrderByOrderCode(MaDatPhong);
    res.json(result);
>>>>>>> d3cf556fc112c128dc8c98e91f6959a527963bc1
  } catch (err) {
    next(err)
  }
})

export default router

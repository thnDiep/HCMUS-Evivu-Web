-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: May 13, 2023 at 01:15 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `khachsan`
--

-- --------------------------------------------------------

--
-- Table structure for table `danhgia`
--

CREATE TABLE `danhgia` (
  `ID` int(11) NOT NULL,
  `IDKhachSan` int(11) NOT NULL,
  `IDKhachHang` int(11) NOT NULL,
  `TieuDe` char(50) NOT NULL,
  `NoiDung` text NOT NULL,
  `Diem` int(11) NOT NULL,
  `ThoiGian` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `danhgia`
--

INSERT INTO `danhgia` (`ID`, `IDKhachSan`, `IDKhachHang`, `TieuDe`, `NoiDung`, `Diem`, `ThoiGian`) VALUES
(2, 9, 3, 'Test đánh giá', 'Tôi rất thích khách sạn', 8, '0000-00-00'),
(3, 8, 3, 'Cungc đươc', 'OKKKKKKKKKKKKKKKKKKKKKKKKKKKKKK', 9, '2023-05-12'),
(4, 8, 11, 'Tuyệt vời', 'Hợp lý', 9, '2023-05-12');

-- --------------------------------------------------------

--
-- Table structure for table `danhsachyeuthich`
--

CREATE TABLE `danhsachyeuthich` (
  `IDKhachHang` int(11) NOT NULL,
  `IDKhachSan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `danhsachyeuthich`
--

INSERT INTO `danhsachyeuthich` (`IDKhachHang`, `IDKhachSan`) VALUES
(4, 1),
(4, 14),
(4, 15),
(4, 16);

-- --------------------------------------------------------

--
-- Table structure for table `diadiem`
--

CREATE TABLE `diadiem` (
  `ID` int(11) NOT NULL,
  `TenDiaDiem` varchar(255) NOT NULL,
  `HinhAnh` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `diadiem`
--

INSERT INTO `diadiem` (`ID`, `TenDiaDiem`, `HinhAnh`) VALUES
(1, 'An Giang', 'https://znews-photo.zingcdn.me/w1920/Uploaded/lerl/2020_08_28/0040_0048_HDR_Pano_1_NEW.jpg'),
(2, 'Bà Rịa-Vũng Tàu', 'https://img.tripi.vn/cdn-cgi/image/width=640,height=640/https://storage.googleapis.com/tripi-assets/mytour/images/locations/vung-tau.png'),
(3, 'Bạc Liêu', 'https://kenhhomestay.com/wp-content/uploads/2019/06/Dia-diem-du-lich-Bac-Lieu-13.jpg'),
(4, 'Bắc Kạn', 'https://ik.imagekit.io/tvlk/blog/2021/09/kinh-nghiem-du-lich-bac-kan.jpg?tr=dpr-2,w-675'),
(5, 'Bắc Giang', 'https://ik.imagekit.io/tvlk/blog/2022/09/dia-diem-check-in-o-bac-giang-1.jpg?tr=dpr-2,w-675'),
(6, 'Bắc Ninh', 'https://ik.imagekit.io/tvlk/blog/2022/02/dia-diem-du-lich-bac-ninh-cover.jpg'),
(7, 'Bến Tre', 'https://ik.imagekit.io/tvlk/blog/2022/03/du-lich-sinh-thai-ben-tre-cover.jpeg'),
(8, 'Bình Dương', 'https://ik.imagekit.io/tvlk/blog/2022/02/dia-diem-du-lich-binh-duong-cover-1.jpg'),
(9, 'Bình Định', 'https://ik.imagekit.io/tvlk/blog/2022/06/dia-diem-du-lich-quy-nhon-1.jpg?tr=dpr-2,w-675'),
(10, 'Bình Phước', 'https://cdn.tgdd.vn/Files/2021/07/07/1366326/ke-ten-10-dia-diem-du-lich-dep-nhat-tai-binh-phuoc-ma-ban-khong-the-bo-lo-202107071044346567.jpg'),
(11, 'Bình Thuận', 'https://ik.imagekit.io/tvlk/blog/2022/02/dia-diem-du-lich-binh-thuan.jpg'),
(12, 'Cà Mau', 'https://ik.imagekit.io/tvlk/blog/2021/10/du-lich-ca-mau-4.jpg?tr=dpr-2,w-675'),
(13, 'Cao Bằng', 'https://znews-photo.zingcdn.me/w1920/Uploaded/lerl/2020_08_28/BanGioc_8715_zing.jpg'),
(14, 'Cần Thơ', 'https://statics.vinpearl.com/ben-ninh-kieu-canh-dep-viet-nam_1637643228.jpg'),
(15, 'Đà Nẵng', 'https://img.tripi.vn/cdn-cgi/image/width=640,height=640/https://storage.googleapis.com/tripi-assets/mytour/images/locations/danang.png'),
(16, 'Đắk Lắk', 'https://vcdn1-dulich.vnecdn.net/2022/04/20/thacDakLak02-1650454521-7409-1650455161.jpg?w=0&h=0&q=100&dpr=2&fit=crop&s=6vZa8c69p_IJvwjcOJE3hg'),
(17, 'Đắk Nông', 'https://znews-photo.zingcdn.me/w1920/Uploaded/lerl/2020_08_28/0334_0351_HDR_Pano_zing.jpg'),
(18, 'Điện Biên', 'https://ik.imagekit.io/tvlk/blog/2022/03/dia-diem-du-lich-dien-bien-1.jpg?tr=dpr-2,w-675'),
(19, 'Đồng Nai', 'https://media.gody.vn//images/hinh-tong-hop/12-khu-du-lich-tai-dong-nai-gody/6-2017/560488-20170615071509-hinh-tong-hop-12-khu-du-lich-tai-dong-nai-gody.png'),
(20, 'Đồng Tháp', 'https://cdn.vntrip.vn/cam-nang/wp-content/uploads/2018/02/anh6-8.png'),
(21, 'Gia Lai', 'https://znews-photo.zingcdn.me/w1920/Uploaded/lerl/2020_08_28/0559_0594_HDR_Pano_zing.jpg'),
(22, 'Hà Giang', 'https://znews-photo.zingcdn.me/w1920/Uploaded/lerl/2020_08_28/ThitranQuanBa_Hagiang_zing.jpg'),
(23, 'Hà Nam', 'https://statics.vinpearl.com/du-lich-ha-nam-10_1623851980.jpg'),
(24, 'Hà Nội', 'https://img.tripi.vn/cdn-cgi/image/width=640,height=640/https://storage.googleapis.com/tripi-assets/mytour/images/locations/hanoi.png'),
(25, 'Hà Tây', 'https://mytourcdn.com/upload_images/Image/Location/19_2_2015/du-lich-ha-tay-1-ngay-1.jpg'),
(26, 'Hà Tĩnh', 'https://statics.vinpearl.com/dia-diem-du-lich-ha-tinh-5_1623852446.jpg'),
(27, 'Hải Dương', 'https://kinhnghiemdulich.gody.vn/wp-content/uploads/2022/06/dia-diem-du-lich-hai-duong-3.jpg'),
(28, 'Hải Phòng', 'https://img.tripi.vn/cdn-cgi/image/width=640,height=640/https://storage.googleapis.com/tripi-assets/mytour/images/locations/hai-phong.png'),
(29, 'Hòa Bình', 'https://ik.imagekit.io/tvlk/blog/2022/03/dia-diem-du-lich-hoa-binh-1.jpg'),
(30, 'Hồ Chí Minh', 'https://img.tripi.vn/cdn-cgi/image/width=640,height=640/https://storage.googleapis.com/tripi-assets/mytour/images/locations/hochiminh.png'),
(31, 'Hậu Giang', 'https://onetour.vn/Media/Images/Disneyland-du-lich-hau-giang.jpg'),
(32, 'Hưng Yên', 'https://ik.imagekit.io/tvlk/blog/2022/03/dia-diem-du-lich-hung-yen-2.jpg?tr=dpr-2,w-675'),
(33, 'Khánh Hòa', 'https://znews-photo.zingcdn.me/w1920/Uploaded/lerl/2020_08_28/DJI_0780_04_zing_1.jpg'),
(34, 'Kiên Giang', 'https://znews-photo.zingcdn.me/w1920/Uploaded/lerl/2020_08_28/Ha_Tien_2.jpg'),
(35, 'Kon Tum', 'https://danangaz.com/wp-content/uploads/2019/07/1-min-20.jpg'),
(36, 'Lai Châu', 'https://cdn.tgdd.vn/Files/2022/02/18/1416263/10-diem-du-lich-checkin-noi-tieng-nhat-tai-tinh-lai-chau-202303281553481660.jpg'),
(37, 'Lào Cai', 'https://znews-photo.zingcdn.me/w1920/Uploaded/lerl/2020_08_28/lao_cai_2_zing.jpg'),
(38, 'Lạng Sơn', 'https://znews-photo.zingcdn.me/w1920/Uploaded/lerl/2020_08_28/Bacson_LangSon_zing.jpg'),
(39, 'Lâm Đồng', 'https://ik.imagekit.io/tvlk/blog/2022/02/dia-diem-du-lich-lam-dong-6.jpg?tr=dpr-2,w-675'),
(40, 'Long An', 'https://statics.vincom.com.vn/xu-huong/0-0-0-du-lich-long-an/image13.png'),
(41, 'Nam Định', 'https://vcdn1-dulich.vnecdn.net/2022/05/12/HaiNhuan11606299130-1652359419-5468-1652359452.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=_N34MNnzWE_dbn64sBwK0Q'),
(42, 'Nghệ An', 'https://vcdn1-dulich.vnecdn.net/2022/04/26/den-Chung-Son-Nghe-An-5679-1650971137.jpg?w=0&h=0&q=100&dpr=1&fit=crop&s=dM82jT9JTugGzNwC1sCdgw'),
(43, 'Ninh Bình', 'https://cdn.vntrip.vn/cam-nang/wp-content/uploads/2018/07/dia-diem-du-lich-ninh-binh-1-e1531726367396.jpg'),
(44, 'Ninh Thuận', 'https://znews-photo.zingcdn.me/w1920/Uploaded/lerl/2020_08_28/vinh_Vinh_Hy_zing.jpg'),
(45, 'Phú Thọ', 'https://i-dulich.vnecdn.net/2022/05/11/125212393-2662478530668276-794-4227-9339-1652263483.jpg'),
(46, 'Phú Yên', 'https://znews-photo.zingcdn.me/w1920/Uploaded/lerl/2020_08_28/DJI_0637_zing.jpg'),
(47, 'Quảng Bình', 'https://ik.imagekit.io/tvlk/blog/2022/02/dia-diem-du-lich-quang-binh-1.jpg?tr=dpr-2,w-675'),
(48, 'Quảng Nam', 'https://znews-photo.zingcdn.me/w1920/Uploaded/lerl/2020_08_28/8483_zing.jpg'),
(49, 'Quảng Ngãi', 'https://cdn.vntrip.vn/cam-nang/wp-content/uploads/2017/09/thac-minh-long.jpg'),
(50, 'Quảng Ninh', 'https://znews-photo.zingcdn.me/w1920/Uploaded/lerl/2020_08_28/Tuan_Chau_1.jpg'),
(51, 'Quảng Trị', 'https://cdn.vntrip.vn/cam-nang/wp-content/uploads/2017/08/Con-Co.jpg'),
(52, 'Sóc Trăng', 'https://thamhiemmekong.com/wp-content/uploads/2020/02/chonoinganam.jpg'),
(53, 'Sơn La', 'https://znews-photo.zingcdn.me/w1920/Uploaded/lerl/2020_08_28/Untitled_Panorama1_2.jpg'),
(54, 'Tây Ninh', 'https://statics.vinpearl.com/canh-dep-viet-nam-ho-dau-tieng_1637901143.jpg'),
(55, 'Thái Bình', 'https://znews-photo.zingcdn.me/w1920/Uploaded/lerl/2020_08_28/dong_chau_zing_6.jpg'),
(56, 'Thái Nguyên', 'https://dankogroup.com.vn/pic/News/images/1.png'),
(57, 'Thanh Hóa', 'https://ik.imagekit.io/tvlk/blog/2022/02/dia-diem-du-lich-thanh-hoa-12.jpg?tr=dpr-2,w-675'),
(58, 'Thừa Thiên - Huế', 'https://znews-photo.zingcdn.me/w1920/Uploaded/lerl/2020_08_28/SAM1010_zing.jpg'),
(59, 'Tiền Giang', 'https://tourcantho.vn/wp-content/uploads/du-lich-tien-giang-bang-xe-may.jpg'),
(60, 'Trà Vinh', 'https://ik.imagekit.io/tvlk/blog/2022/02/dia-diem-du-lich-tra-vinh-cover.jpeg'),
(61, 'Tuyên Quang', 'https://znews-photo.zingcdn.me/w1920/Uploaded/lerl/2020_08_28/DJI_0780_04_zing_1.jpg'),
(62, 'Vĩnh Long', 'https://ik.imagekit.io/tvlk/blog/2022/02/dia-diem-du-lich-vinh-long-18.jpg?tr=dpr-2,w-675'),
(63, 'Vĩnh Phúc', 'https://sayhi.vn/blog/wp-content/uploads/2020/03/dia-diem-du-lich-vinh-phuc-1_optimized.jpg'),
(64, 'Yên Bái', 'https://znews-photo.zingcdn.me/w1920/Uploaded/lerl/2020_08_28/yen_bai_1_zing.jpg'),
(65, 'Phú Quốc', 'https://img.tripi.vn/cdn-cgi/image/width=640,height=640/https://storage.googleapis.com/tripi-assets/mytour/images/locations/phu-quoc.png'),
(66, 'Nha Trang', 'https://img.tripi.vn/cdn-cgi/image/width=640,height=640/https://storage.googleapis.com/tripi-assets/mytour/images/locations/nha-trang.png'),
(67, 'Đà Lạt', 'https://img.tripi.vn/cdn-cgi/image/width=640,height=640/https://storage.googleapis.com/tripi-assets/mytour/images/locations/da-lat.png'),
(68, 'Sa Pa', 'https://img.tripi.vn/cdn-cgi/image/width=640,height=640/https://storage.googleapis.com/tripi-assets/mytour/images/locations/sa-pa.png'),
(69, 'Phan Thiết', 'https://img.tripi.vn/cdn-cgi/image/width=640,height=640/https://storage.googleapis.com/tripi-assets/mytour/images/locations/phan-thiet.png'),
(70, 'Hạ Long', 'https://img.tripi.vn/cdn-cgi/image/width=640,height=640/https://storage.googleapis.com/tripi-assets/mytour/images/locations/ha-long.png'),
(71, 'Hội An', 'https://img.tripi.vn/cdn-cgi/image/width=640,height=640/https://storage.googleapis.com/tripi-assets/mytour/images/locations/hoi-an.png');

-- --------------------------------------------------------

--
-- Table structure for table `dondatphong`
--

CREATE TABLE `dondatphong` (
  `MaDatPhong` varchar(10) NOT NULL,
  `ThoiGianDat` date NOT NULL,
  `NgayNhanPhong` date NOT NULL,
  `NgayTraPhong` date NOT NULL,
  `SoLuongPhong` int(100) NOT NULL,
  `TongTien` decimal(10,0) NOT NULL,
  `TrangThai` int(11) NOT NULL,
  `IDKhachHang` int(11) NOT NULL,
  `IDPhong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dondatphong`
--

INSERT INTO `dondatphong` (`MaDatPhong`, `ThoiGianDat`, `NgayNhanPhong`, `NgayTraPhong`, `SoLuongPhong`, `TongTien`, `TrangThai`, `IDKhachHang`, `IDPhong`) VALUES
('5743539', '2023-05-02', '2023-05-10', '2023-05-11', 1, '1399000', 1, 4, 1),
('F23214', '2023-05-12', '2023-05-14', '2023-05-17', 2, '20000000', 1, 5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `giuong`
--

CREATE TABLE `giuong` (
  `ID` int(11) NOT NULL,
  `LoaiGiuong` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `giuong`
--

INSERT INTO `giuong` (`ID`, `LoaiGiuong`) VALUES
(1, 'Giường đơn'),
(2, 'Giường đôi');

-- --------------------------------------------------------

--
-- Table structure for table `giuong_phong`
--

CREATE TABLE `giuong_phong` (
  `IDPhong` int(11) NOT NULL,
  `IDGiuong` int(11) NOT NULL,
  `SoLuongGiuong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `giuong_phong`
--

INSERT INTO `giuong_phong` (`IDPhong`, `IDGiuong`, `SoLuongGiuong`) VALUES
(1, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `hinhanh_khachsan`
--

CREATE TABLE `hinhanh_khachsan` (
  `IDKhachSan` int(11) NOT NULL,
  `HinhAnh` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hinhanh_khachsan`
--

INSERT INTO `hinhanh_khachsan` (`IDKhachSan`, `HinhAnh`) VALUES
(8, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683792502/khachsan/photos_S1XRWSGTR5__tmp_playtemp5872956675624463109_multipartBody8558484951637666092asTemporaryFile_btzixh.jpg'),
(8, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683792503/khachsan/photos_MPYMPFT5C2__tmp_playtemp5872956675624463109_multipartBody364551780357405725asTemporaryFile_1_tpw6be.jpg'),
(8, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683792504/khachsan/photos_L4TBGM54WB__tmp_playtemp5872956675624463109_multipartBody3364572361152519043asTemporaryFile_dqdn1p.jpg'),
(8, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683792504/khachsan/photos_MPYMPFT5C2__tmp_playtemp5872956675624463109_multipartBody364551780357405725asTemporaryFile_ogkyfl.jpg'),
(8, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683792506/khachsan/photos_ZLBJ7TEVP1__tmp_playtemp5872956675624463109_multipartBody4290430561101661591asTemporaryFile_1_xnuo4a.jpg'),
(8, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683792507/khachsan/photos_OG95G6RF4A__tmp_playtemp5872956675624463109_multipartBody9090145801521184631asTemporaryFile_sdcis8.jpg'),
(8, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683792507/khachsan/photos_WKY71EUR5F__tmp_playtemp5872956675624463109_multipartBody9147740090240808180asTemporaryFile_wjkm1u.jpg'),
(8, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683792507/khachsan/photos_WKY71EUR5F__tmp_playtemp5872956675624463109_multipartBody9147740090240808180asTemporaryFile_wjkm1u.jpg2'),
(8, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683792508/khachsan/photos_ZLBJ7TEVP1__tmp_playtemp5872956675624463109_multipartBody4290430561101661591asTemporaryFile_kflpog.jpg'),
(8, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683792509/khachsan/photos_8NKKRLR0H2__tmp_playtemp5872956675624463109_multipartBody4724123070755322533asTemporaryFile_1_nqecch.jpg'),
(8, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683792510/khachsan/photos_8NKKRLR0H2__tmp_playtemp5872956675624463109_multipartBody4724123070755322533asTemporaryFile_ibsnmt.jpg'),
(9, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683792755/khachsan/23812_H29VWRHQ6O_Lobby_1_1_ss4cn5.jpg'),
(9, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683792756/khachsan/23812_UJ0N9NDLLB_lobby-bar_1_muaepc.jpg'),
(9, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683792757/khachsan/118594263_vsb1ci.jpg'),
(9, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683792757/khachsan/87108667_nb1lfc.jpg'),
(9, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683792758/khachsan/130505664_pkido5.jpg'),
(9, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683792759/khachsan/23812_UJ0N9NDLLB_lobby-bar_mk9lbl.jpg'),
(9, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683792760/khachsan/130505661_lkmit5.jpg'),
(9, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683792760/khachsan/23812_H29VWRHQ6O_Lobby_1_xtj6hn.jpg'),
(9, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683792761/khachsan/87172189_bk94ul.jpg'),
(10, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683793170/khachsan/736941_15092916450036499557_nb3yq2.jpg'),
(10, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683793171/khachsan/736941_15092916450036499545_cv8xav.jpg'),
(10, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683793171/khachsan/736941_15092916450036499577_hljojh.jpg'),
(10, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683793172/khachsan/736941_15080516220033703928_hub4hy.jpg'),
(10, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683793172/khachsan/736941_15092916450036499558_rze2qg.jpg'),
(10, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683793173/khachsan/736941_15092916450036499544_h9r4am.jpg'),
(10, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683793174/khachsan/736941_15092915460036494648_imdiku.jpg'),
(10, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683793175/khachsan/736941_15092915460036494655_qgtx4h.jpg'),
(10, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683793175/khachsan/lMYTsRUlRfuHxMystmjuMA-69_dsx3r5.jpg'),
(10, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683793176/khachsan/logo_4_736941_jzveas.jpg'),
(11, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683793461/khachsan/_ika9320_z9bnih.jpg'),
(11, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683793462/khachsan/2_hjqfzj.jpg'),
(11, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683793463/khachsan/35193_561QMVFCS3_177834588_mf0kbw.jpg'),
(11, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683793463/khachsan/35193_5KL3K92Z7U_177834566_iafchp.jpg'),
(11, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683793464/khachsan/35193_16DVZ3LL0X_177833842_k5c28j.jpg'),
(11, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683793465/khachsan/17_pvmglu.jpg'),
(11, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683793465/khachsan/35193_A7AGSHJ3RG_177834498_gfjkyv.jpg'),
(11, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683793466/khachsan/4_p8zfti.jpg'),
(12, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683793745/khachsan/paos-sapa-leisure-hotel-5f697c2423d0e-848x477_fhuab3.jpg'),
(12, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683793746/khachsan/40714_ILFLVGYK7U_10_lg2mmf.jpg'),
(12, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683793747/khachsan/40714_IHSXJRRKQ6_9_rpimog.jpg'),
(12, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683793748/khachsan/40714_0LIUS3HY1N_6_dapuvu.jpg'),
(12, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683793749/khachsan/photos_JZNYP9RT0N__tmp_playtemp6021156645283393444_multipartBody3299974993605232547asTemporaryFile_crjsts.jpg'),
(12, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683793749/khachsan/photos_OSK0Y66G8T__tmp_playtemp6021156645283393444_multipartBody5248522890029035594asTemporaryFile_frthbq.jpg'),
(12, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683793750/khachsan/40714_LNWDW81E3I_3_qwd4vs.jpg'),
(12, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683793751/khachsan/40714_G235J5B01A_2_rhj1wy.jpg'),
(12, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683793751/khachsan/40714_MXQNBU4ATQ_1_xkxxna.jpg'),
(13, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683794120/khachsan/photos_thumb_4VMPUI5PT5_1_hounqh.jpg'),
(13, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683794121/khachsan/atu1407382133_binh-an-village-da-lat-resort_aesp0z.jpg'),
(13, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683794121/khachsan/tqs1407382165_binh-an-village-da-lat-resort_ypoyad.jpg'),
(13, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683794122/khachsan/wzj1407382108_binh-an-village-da-lat-resort_hntqja.jpg'),
(13, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683794123/khachsan/9186_TZYYNM2S66_2_t5acqf.jpg'),
(13, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683794123/khachsan/aqy1407382108_binh-an-village-da-lat-resort_scmmch.jpg'),
(13, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683794124/khachsan/ded1407382108_binh-an-village-da-lat-resort_qju3qc.jpg'),
(13, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683794125/khachsan/9186_096EWIO780_1_yi1dm1.jpg'),
(13, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683794126/khachsan/9186_26QRN2V0SG_3_uv5fhz.jpg'),
(13, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683794127/khachsan/9186_2S9S56ZHHS_5_kup0yw.jpg'),
(13, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683794127/khachsan/9186_VCELAC5KKC_4_ylaxcy.jpg'),
(14, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683794410/khachsan/movenpick_m2ivfd.jpg'),
(14, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683794411/khachsan/gymspa_03-copy_im9zyl.jpg'),
(14, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683794412/khachsan/lobby_-1-copy_po1gqa.jpg'),
(14, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683794412/khachsan/lobby_-2-copy_ihbk2j.jpg'),
(14, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683794413/khachsan/overview_2-copy_1_uh9h4g.jpg'),
(14, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683794414/khachsan/overview_1-copy_lkiciw.jpg'),
(14, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683794415/khachsan/bounty-restaurant_-1-copy_ndsr6y.jpg'),
(14, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683794416/khachsan/bounty-bar_-1-copy_aeytyq.jpg'),
(14, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683794417/khachsan/overview_2-copy_lpjnl0.jpg'),
(15, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683794688/khachsan/318712386_p5bfqk.jpg'),
(15, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683794688/khachsan/318712637_1_ui6l9s.jpg'),
(15, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683794689/khachsan/318712453_owzh1o.jpg'),
(15, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683794690/khachsan/b1108076_yacrcr.jpg'),
(15, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683794691/khachsan/318712647_xwilih.jpg'),
(15, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683794691/khachsan/b1108242_zk6ugs.jpg'),
(15, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683794692/khachsan/318712417_ryagog.jpg'),
(15, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683794693/khachsan/318712637_vypsbu.jpg'),
(16, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683794952/khachsan/vpharv--view-from-the-balcony_fmo8vs.jpg'),
(16, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683794953/khachsan/vdnrv--beach-4_mazyjh.jpg'),
(16, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683794953/khachsan/vpharv--lobby-9_qaur7d.jpg'),
(16, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683794954/khachsan/vpharv--lobby-7_tg1uoc.jpg'),
(16, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683794955/khachsan/vpharv--lobby-8_ysvlgb.jpg'),
(16, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683794956/khachsan/vpharv--lobby-6_cwuoec.jpg'),
(16, 'https://res.cloudinary.com/dzawgnpm9/image/upload/v1683794957/khachsan/vpharv--lobby-1_ym4lde.jpg'),
(17, 'http://res.cloudinary.com/dzawgnpm9/image/upload/v1683899715/khachsan/y9d1463943419_ana_mandara_villas_dalat_resort_spa_slbz4j.jpg'),
(17, 'http://res.cloudinary.com/dzawgnpm9/image/upload/v1683899716/khachsan/5cv1463943386_ana_mandara_villas_dalat_resort_spa_pkg1ot.jpg'),
(17, 'http://res.cloudinary.com/dzawgnpm9/image/upload/v1683899716/khachsan/f011463943387_ana_mandara_villas_dalat_resort_spa_fgja1i.jpg'),
(17, 'http://res.cloudinary.com/dzawgnpm9/image/upload/v1683899717/khachsan/628_WPSV46VLSM_36379914_ygwmeh.jpg'),
(17, 'http://res.cloudinary.com/dzawgnpm9/image/upload/v1683899718/khachsan/7ml1463943209_ana_mandara_villas_dalat_resort_spa_u9nkuh.jpg'),
(17, 'http://res.cloudinary.com/dzawgnpm9/image/upload/v1683899719/khachsan/wqc1463943365_ana_mandara_villas_dalat_resort_spa_d0wxzf.jpg'),
(17, 'http://res.cloudinary.com/dzawgnpm9/image/upload/v1683899720/khachsan/628_GEY5M4UPO7_35256957_t6fydp.jpg'),
(17, 'http://res.cloudinary.com/dzawgnpm9/image/upload/v1683899721/khachsan/628_OTZKVO0E7K_36379890_vzwser.jpg'),
(17, 'http://res.cloudinary.com/dzawgnpm9/image/upload/v1683899723/khachsan/628_3HD6MR94W8_25104655_oqg2kr.jpg'),
(17, 'http://res.cloudinary.com/dzawgnpm9/image/upload/v1683899724/khachsan/628_PA30B2T1V9_25105653_hffa53.jpg'),
(18, 'http://res.cloudinary.com/dzawgnpm9/image/upload/v1683900244/khachsan/four-bedroom_9_uebul9.jpg'),
(18, 'http://res.cloudinary.com/dzawgnpm9/image/upload/v1683900246/khachsan/pre_3_opudzi.jpg'),
(18, 'http://res.cloudinary.com/dzawgnpm9/image/upload/v1683900247/khachsan/20023943-d49fb61fa6208673116b4d1bdb20b000_ivqhlv.jpg'),
(18, 'http://res.cloudinary.com/dzawgnpm9/image/upload/v1683900248/khachsan/20023943-581bfb2d5153c16accf53b680bfebdc4_g9h5nv.jpg'),
(18, 'http://res.cloudinary.com/dzawgnpm9/image/upload/v1683900249/khachsan/four-bedroom_1_bqb5jd.jpg'),
(18, 'http://res.cloudinary.com/dzawgnpm9/image/upload/v1683900250/khachsan/42394_SR9AKDLNKZ_52dcf8a4967a16c38499fd0fef86be00_uzt5v0.jpg'),
(18, 'http://res.cloudinary.com/dzawgnpm9/image/upload/v1683900251/khachsan/ff0b62f9573a8db0042bd15206b6c613_yano8v.jpg'),
(18, 'http://res.cloudinary.com/dzawgnpm9/image/upload/v1683900252/khachsan/22a08011-05_ktwene.jpg'),
(18, 'http://res.cloudinary.com/dzawgnpm9/image/upload/v1683900255/khachsan/22a08011-06_ojbumi.jpg'),
(18, 'http://res.cloudinary.com/dzawgnpm9/image/upload/v1683900258/khachsan/_r5_9626-copy_sourzw.jpg'),
(18, 'http://res.cloudinary.com/dzawgnpm9/image/upload/v1683900262/khachsan/y9d1463943419_ana_mandara_villas_dalat_resort_spa_sfnkjf.jpg'),
(18, 'http://res.cloudinary.com/dzawgnpm9/image/upload/v1683900263/khachsan/wqc1463943365_ana_mandara_villas_dalat_resort_spa_upmchc.jpg'),
(19, 'http://res.cloudinary.com/dzawgnpm9/image/upload/v1683901211/khachsan/DWS1oYQFS3GV1_PDWerKHA-392_ulcpq6.jpg'),
(20, 'http://res.cloudinary.com/dzawgnpm9/image/upload/v1683902273/khachsan/61428369_dbfwog.jpg'),
(20, 'http://res.cloudinary.com/dzawgnpm9/image/upload/v1683902274/khachsan/63134786_bquuuj.jpg'),
(20, 'http://res.cloudinary.com/dzawgnpm9/image/upload/v1683902276/khachsan/193794623_lxk2fx.jpg'),
(20, 'http://res.cloudinary.com/dzawgnpm9/image/upload/v1683902277/khachsan/625168_17032511370051844813_result_bl251l.jpg'),
(20, 'http://res.cloudinary.com/dzawgnpm9/image/upload/v1683902277/khachsan/95406915_swnoxi.jpg'),
(20, 'http://res.cloudinary.com/dzawgnpm9/image/upload/v1683902278/khachsan/95407331_zux7lo.jpg'),
(20, 'http://res.cloudinary.com/dzawgnpm9/image/upload/v1683902279/khachsan/625168_17032511370051844809_result_sd9hvt.jpg'),
(20, 'http://res.cloudinary.com/dzawgnpm9/image/upload/v1683902280/khachsan/95411515_pziwv9.jpg'),
(20, 'http://res.cloudinary.com/dzawgnpm9/image/upload/v1683902281/khachsan/625168_17032511370051844823_result_ba85lx.jpg'),
(20, 'http://res.cloudinary.com/dzawgnpm9/image/upload/v1683902281/khachsan/70445170_soe4a7.jpg'),
(20, 'http://res.cloudinary.com/dzawgnpm9/image/upload/v1683902282/khachsan/70443823_kifo9v.jpg'),
(20, 'http://res.cloudinary.com/dzawgnpm9/image/upload/v1683902283/khachsan/422c41c67ea74547dc560b4623e75b76_result_y5max8.jpg'),
(20, 'http://res.cloudinary.com/dzawgnpm9/image/upload/v1683902284/khachsan/95411239_sq90sv.jpg'),
(21, 'http://res.cloudinary.com/dzawgnpm9/image/upload/v1683902771/khachsan/vnr-lobby-executive-2-1803164_result_uskqsv.jpg'),
(21, 'http://res.cloudinary.com/dzawgnpm9/image/upload/v1683902771/khachsan/vnr-pool-1803108_result_bqfqim.jpg'),
(21, 'http://res.cloudinary.com/dzawgnpm9/image/upload/v1683902772/khachsan/vnr-lobby-executive-1-1803165_result_y2ftyp.jpg'),
(21, 'http://res.cloudinary.com/dzawgnpm9/image/upload/v1683902773/khachsan/65153_17042011530052502395_result_xjfzil.jpg'),
(21, 'http://res.cloudinary.com/dzawgnpm9/image/upload/v1683902774/khachsan/65153_17042011200052500975_result_sxyidg.jpg'),
(21, 'http://res.cloudinary.com/dzawgnpm9/image/upload/v1683902774/khachsan/65153_17042011230052501144_result_l1gt5q.jpg'),
(21, 'http://res.cloudinary.com/dzawgnpm9/image/upload/v1683902775/khachsan/65153_14091709250022199507_result_yrrc8f.jpg'),
(21, 'http://res.cloudinary.com/dzawgnpm9/image/upload/v1683902776/khachsan/65153_14071815580020343719_result_r0s7pg.jpg'),
(21, 'http://res.cloudinary.com/dzawgnpm9/image/upload/v1683902780/khachsan/65153_14071815580020343718_result_ouajdw.jpg'),
(21, 'http://res.cloudinary.com/dzawgnpm9/image/upload/v1683902782/khachsan/7078c01c2332fbf58c9d56f515d0bece_result_tb9yoo.jpg'),
(21, 'http://res.cloudinary.com/dzawgnpm9/image/upload/v1683902783/khachsan/2_138669_result_gj7ngq.jpg'),
(21, 'http://res.cloudinary.com/dzawgnpm9/image/upload/v1683902784/khachsan/68bf9b4627446fdf0ce30359a74980bf_result_caohef.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `hinhanh_phong`
--

CREATE TABLE `hinhanh_phong` (
  `IDPhong` int(11) NOT NULL,
  `HinhAnh` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `khachsan`
--

CREATE TABLE `khachsan` (
  `ID` int(11) NOT NULL,
  `Ten` varchar(50) NOT NULL,
  `DiaChi` varchar(100) NOT NULL,
  `GiamGia` int(100) NOT NULL DEFAULT 0,
  `soSao` int(11) NOT NULL,
  `ChinhSach` text NOT NULL,
  `GioiThieu` text NOT NULL,
  `TrangThai` int(10) NOT NULL,
  `IDDiaDiem` int(11) NOT NULL,
  `Nhan` varchar(255) NOT NULL,
  `GioNhanPhong` int(20) NOT NULL,
  `GioTraPhong` int(20) NOT NULL,
  `IDChuKhachSan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `khachsan`
--

INSERT INTO `khachsan` (`ID`, `Ten`, `DiaChi`, `GiamGia`, `soSao`, `ChinhSach`, `GioiThieu`, `TrangThai`, `IDDiaDiem`, `Nhan`, `GioNhanPhong`, `GioTraPhong`, `IDChuKhachSan`) VALUES
(8, 'Vinpearl Resort & Spa Hạ Long', '117 Đảo Rều, Phường Bạch Đằng, Thành phố Hạ Long, Tỉnh Quảng Ninh', 0, 5, '<div class=\"MuiBox-root jss502\"><strong><span class=\"MuiBox-root jss503\">Ch&iacute;nh s&aacute;ch ch', '<p><strong><a href=\"https://www.vietnambooking.com/hotel/vietnam/new-world-phu-quoc-resort.html\">New World Ph&uacute; Quốc</a>&nbsp;</strong>l&agrave; khu nghỉ dưỡng tọa lạc b&ecirc;n b&ecirc;n b&atilde;i biển Khem nổi tiếng xinh đẹp, thơ mộng. Resort đạt chuẩn 5 sao quốc tế với thiết kế c&ugrave;ng những dịch vụ tiện nghi v&agrave; b&atilde;i biển ri&ecirc;ng trong xanh. Từ khu nghỉ dưỡng, bạn c&oacute; thể đi tham quan c&aacute;c địa danh của đảo Ph&uacute; Quốc như: C&aacute;p treo (5km), nh&agrave; t&ugrave; Ph&uacute; Quốc (11km),...</p>\n<p><strong>New World Ph&uacute; Quốc</strong>&nbsp;bao gồm 375 căn biệt thự c&oacute; hồ bơi 3 hoặc 4 ph&ograve;ng ngủ d&agrave;nh cho cặp đ&ocirc;i, nh&oacute;m bạn hoặc gia đ&igrave;nh. Trong mỗi căn sẽ chia ra c&aacute;c ph&ograve;ng như ph&ograve;ng ngủ, nh&agrave; bếp, ph&ograve;ng kh&aacute;ch. Trong ph&ograve;ng được trang bị đầy đủ c&aacute;c vật dụng cần thiết: TV truyền h&igrave;nh c&aacute;p, tủ lạnh, m&aacute;y pha c&agrave; ph&ecirc;, mấy sấy t&oacute;c,...</p>\n<p><strong>New World Ph&uacute; Quốc</strong>&nbsp;c&ograve;n sở hữu nh&agrave; h&agrave;ng, hồ bơi ngo&agrave;i trời, trung t&acirc;m thể thao v&agrave; một khu vườn với b&agrave;n ghế ngo&agrave;i trời. Qu&yacute; kh&aacute;ch c&oacute; thể tận hưởng kỳ nghỉ dưỡng l&yacute; tượng với việc tắm bồn nước nước hoặc spa. Kh&aacute;ch sạn cung cấp Wifi miễn ph&iacute; khắp khu&ocirc;n vi&ecirc;n.</p>', 1, 50, 'Giá cực tốt', 14, 12, 2),
(9, 'Sol by Meliá Phú Quốc Resort', 'Đt 975, Đường Bào, Xã Dương Tơ, Thành phố Phú Quốc, Tỉnh Kiên Giang', 30, 5, '<div class=\"MuiBox-root jss506\"><strong><span class=\"MuiBox-root jss507\">Ch&iacute;nh s&aacute;ch ch', '<p><strong><a href=\"https://www.vietnambooking.com/hotel/vietnam/new-world-phu-quoc-resort.html\">New World Ph&uacute; Quốc</a>&nbsp;</strong>l&agrave; khu nghỉ dưỡng tọa lạc b&ecirc;n b&ecirc;n b&atilde;i biển Khem nổi tiếng xinh đẹp, thơ mộng. Resort đạt chuẩn 5 sao quốc tế với thiết kế c&ugrave;ng những dịch vụ tiện nghi v&agrave; b&atilde;i biển ri&ecirc;ng trong xanh. Từ khu nghỉ dưỡng, bạn c&oacute; thể đi tham quan c&aacute;c địa danh của đảo Ph&uacute; Quốc như: C&aacute;p treo (5km), nh&agrave; t&ugrave; Ph&uacute; Quốc (11km),...</p>\n<p><strong>New World Ph&uacute; Quốc</strong>&nbsp;bao gồm 375 căn biệt thự c&oacute; hồ bơi 3 hoặc 4 ph&ograve;ng ngủ d&agrave;nh cho cặp đ&ocirc;i, nh&oacute;m bạn hoặc gia đ&igrave;nh. Trong mỗi căn sẽ chia ra c&aacute;c ph&ograve;ng như ph&ograve;ng ngủ, nh&agrave; bếp, ph&ograve;ng kh&aacute;ch. Trong ph&ograve;ng được trang bị đầy đủ c&aacute;c vật dụng cần thiết: TV truyền h&igrave;nh c&aacute;p, tủ lạnh, m&aacute;y pha c&agrave; ph&ecirc;, mấy sấy t&oacute;c,...</p>\n<p><strong>New World Ph&uacute; Quốc</strong>&nbsp;c&ograve;n sở hữu nh&agrave; h&agrave;ng, hồ bơi ngo&agrave;i trời, trung t&acirc;m thể thao v&agrave; một khu vườn với b&agrave;n ghế ngo&agrave;i trời. Qu&yacute; kh&aacute;ch c&oacute; thể tận hưởng kỳ nghỉ dưỡng l&yacute; tượng với việc tắm bồn nước nước hoặc spa. Kh&aacute;ch sạn cung cấp Wifi miễn ph&iacute; khắp khu&ocirc;n vi&ecirc;n.</p>', 1, 34, 'Ưu đãi chớp nhoáng', 14, 12, 8),
(10, 'Khách Sạn Mường Thanh Holiday Mũi Né', '12 Quang Văn Chuẩn, Phường Phú Thủy, Thành phố Phan Thiết, Tỉnh Bình Thuận', 10, 5, '<div class=\"MuiBox-root jss502\">\n<div class=\"MuiBox-root jss505\"><strong><span class=\"MuiBox-root jss506\">Ch&iacute;nh s&aacute;ch chung</span></strong>\n<div class=\"MuiBox-root jss507 jss487\">\n<p>Kh&ocirc;ng cho ph&eacute;p h&uacute;t thuốc</p>\n<p>Kh&ocirc;ng cho ph&eacute;p th&uacute; cưng</p>\n<p>Kh&ocirc;ng cho ph&eacute;p tổ chức tiệc / sự kiện</p>\n</div>\n</div>\n<div class=\"MuiBox-root jss508\"><strong><span class=\"MuiBox-root jss509\">Ch&iacute;nh s&aacute;ch trẻ em</span></strong>\n<div class=\"MuiBox-root jss510 jss487\">\n<p>Trẻ em từ 12 tuổi sẽ được xem như người lớn</p>\n<p>Qu&yacute; kh&aacute;ch h&agrave;ng vui l&ograve;ng nhập đ&uacute;ng số lượng kh&aacute;ch v&agrave; tuổi để c&oacute; gi&aacute; ch&iacute;nh x&aacute;c.</p>\n</div>\n</div>\n</div>', '<p><strong><a href=\"https://www.vietnambooking.com/hotel/vietnam/khu-nghi-duong-jw-marriott-phu-quoc-emerald-bay.html\" target=\"_blank\" rel=\"noopener\">JW Marriott Ph&uacute; Quốc Emerald Bay</a></strong>&nbsp;l&agrave; khu nghỉ dưỡng đạt ti&ecirc;u chuẩn quốc tế 5 sao, tọa lạc tại bờ biển của khu vực B&atilde;i Khem.</p>\n<p>Khu nghỉ dưỡng c&oacute; tổng cộng tất cả l&agrave; 244 ph&ograve;ng nghỉ được thiết kế độc đ&aacute;o bởi&nbsp;<strong>kiến tr&uacute;c sư nổi tiếng Bill Bensley</strong>&nbsp;dựa tr&ecirc;n &yacute; tưởng kiến tr&uacute;c của đại học Lamarck University. Tất cả c&aacute;c ph&ograve;ng tại đ&acirc;y đều được cung cấp đầy đủ trang bị c&aacute;c tiện nghi cần thiết, hiện đại cao cấp như: m&aacute;y lạnh, tủ lạnh, truyền h&igrave;nh c&aacute;p, mini bar, dụng cụ giặt ủi &aacute;o quần, sofa, b&agrave;n trang điểm, mấy sấy t&oacute;c, ph&ograve;ng tắm ri&ecirc;ng sang trọng c&oacute; bồn tắm ri&ecirc;ng v&agrave; v&ograve;i sen hiện đại.</p>\n<p>Ngo&agrave;i việc an dưỡng, tận hưởng bầu kh&ocirc;ng kh&iacute; trong l&agrave;nh, khi đặt ph&ograve;ng trực tuyến tại&nbsp;<strong>JW Marriott Ph&uacute; Quốc Emerald Bay</strong>, du kh&aacute;ch c&ograve;n c&oacute; thể tận hưởng&nbsp;<strong>c&aacute;c dịch vụ cao cấp</strong>&nbsp;kh&aacute;c. Một số dịch vụ ti&ecirc;u biểu&nbsp;như: spa chăm s&oacute;c sức khỏe v&agrave; sắc đẹp, hồ bơi ngo&agrave;i trời, dịch vụ cho thu&ecirc; xe, c&aacute;c hoạt động giải tr&iacute; dưới nước&hellip; Kh&ocirc;ng dừng lại ở đ&oacute;, khu nghỉ dưỡng c&ograve;n cung cấp đến 3 nh&agrave; h&agrave;ng v&agrave; bar với h&agrave;ng loạt c&aacute;c m&oacute;n hải sản tươi ngon của địa phương v&agrave; quốc tế c&ugrave;ng với</p>', 1, 11, 'Ưu đãi chớp nhoáng', 14, 12, 9),
(11, 'Khách Sạn Hilton Đà Nẵng', '50, Bạch Đằng,, Phường Hòa Cường Bắc, Quận Hải Châu, Thành phố Đà Nẵng', 20, 3, '<div class=\"MuiBox-root jss502\"><strong><span class=\"MuiBox-root jss503\">Ch&iacute;nh s&aacute;ch ch', '<p><strong><a href=\"https://www.vietnambooking.com/hotel/vietnam/da-nang-mikazuki-japanese-resorts-spa.html\">Đ&agrave; Nẵng Mikazuki Japanese Resorts &amp; Spa</a></strong>&nbsp;l&agrave; địa điểm dừng ch&acirc;n l&yacute; tưởng của nhiều kh&aacute;ch h&agrave;ng khi đến với th&agrave;nh phố. Kh&aacute;ch sạn đạt ti&ecirc;u chuẩn 5 sao nằm ở Vịnh Đ&agrave; Nẵng - một trong những b&atilde;i biển xinh đẹp bậc nhất&nbsp;c&aacute;ch s&acirc;n bay quốc tế Đ&agrave; Nẵng khoảng 8,4 km.</p>\n<p dir=\"ltr\"><strong>Đ&agrave; Nẵng Mikazuki Japanese Resorts &amp; Spa</strong>&nbsp;c&oacute; hệ thống gồm 12 căn biệt thự với 48 ph&ograve;ng ngủ với 2 loại ph&ograve;ng đơn v&agrave; ph&ograve;ng đ&ocirc;i. Nội thất trong ph&ograve;ng được b&agrave;y tr&iacute; v&agrave; sắp xếp theo kiểu Nhật Bản đặc biệt l&agrave; ở đầu giường c&oacute; treo bức tranh theo phong c&aacute;ch Nhật Bản. Trong ph&ograve;ng được trang bị đầy đủ c&aacute;c thiết bị với m&aacute;y điều h&ograve;a, b&igrave;nh nước n&oacute;ng, m&aacute;y sấy t&oacute;c...</p>\n<p>Nh&agrave; h&agrave;ng&nbsp;Japanese Nami l&agrave; nơi hội tụ những tinh hoa ẩm thực Việt Nam v&agrave; Nhật Bản c&oacute; hướng nh&igrave;n ra biển. Qu&yacute; kh&aacute;ch sẽ c&oacute; thể được thưởng thức ẩm thực vừa nh&igrave;n ra biển. Hệ thống c&ocirc;ng vi&ecirc;n nước với c&aacute;c bể bơi trượt nước, khu Onsen gi&uacute;p cho qu&yacute; kh&aacute;ch c&oacute; thể thỏa sức vui chơi. Ngo&agrave;i ra,&nbsp;<strong>Đ&agrave; Nẵng Mikazuki</strong></p>', 1, 15, 'Ưu đãi chớp nhoáng', 14, 12, 9),
(12, 'Khách sạn Paos Sapa Leisure', 'Đường Mường Hoa, Phường Sa Pa, Thị xã Sa Pa, Tỉnh Lào Cai', 25, 5, '<div class=\"MuiBox-root jss504 jss476\">\n<div class=\"MuiBox-root jss505\"><strong><span class=\"MuiBox-', '<p><strong><a href=\"https://www.vietnambooking.com/hotel/vietnam/da-nang-mikazuki-japanese-resorts-spa.html\">Đ&agrave; Nẵng Mikazuki Japanese Resorts &amp; Spa</a></strong>&nbsp;l&agrave; địa điểm dừng ch&acirc;n l&yacute; tưởng của nhiều kh&aacute;ch h&agrave;ng khi đến với th&agrave;nh phố. Kh&aacute;ch sạn đạt ti&ecirc;u chuẩn 5 sao nằm ở Vịnh Đ&agrave; Nẵng - một trong những b&atilde;i biển xinh đẹp bậc nhất&nbsp;c&aacute;ch s&acirc;n bay quốc tế Đ&agrave; Nẵng khoảng 8,4 km.</p>\n<p dir=\"ltr\"><strong>Đ&agrave; Nẵng Mikazuki Japanese Resorts &amp; Spa</strong>&nbsp;c&oacute; hệ thống gồm 12 căn biệt thự với 48 ph&ograve;ng ngủ với 2 loại ph&ograve;ng đơn v&agrave; ph&ograve;ng đ&ocirc;i. Nội thất trong ph&ograve;ng được b&agrave;y tr&iacute; v&agrave; sắp xếp theo kiểu Nhật Bản đặc biệt l&agrave; ở đầu giường c&oacute; treo bức tranh theo phong c&aacute;ch Nhật Bản. Trong ph&ograve;ng được trang bị đầy đủ c&aacute;c thiết bị với m&aacute;y điều h&ograve;a, b&igrave;nh nước n&oacute;ng, m&aacute;y sấy t&oacute;c...</p>\n<p>Nh&agrave; h&agrave;ng&nbsp;Japanese Nami l&agrave; nơi hội tụ những tinh hoa ẩm thực Việt Nam v&agrave; Nhật Bản c&oacute; hướng nh&igrave;n ra biển. Qu&yacute; kh&aacute;ch sẽ c&oacute; thể được thưởng thức ẩm thực vừa nh&igrave;n ra biển. Hệ thống c&ocirc;ng vi&ecirc;n nước với c&aacute;c bể bơi trượt nước, khu Onsen gi&uacute;p cho qu&yacute; kh&aacute;ch c&oacute; thể thỏa sức vui chơi. Ngo&agrave;i ra,&nbsp;<strong>Đ&agrave; Nẵng Mikazuki</strong></p>', 1, 37, 'Vị trí đẹp', 15, 12, 9),
(13, 'Binh An Village Đà Lạt Resort', 'Hồ Tuyền Lâm, Hồ Tuyền Lâm, Xã Tà Nung, Thành phố Đà Lạt, Tỉnh Lâm Đồng', 12, 4, '<div class=\"MuiBox-root jss506\"><strong><span class=\"MuiBox-root jss507\">Ch&iacute;nh s&aacute;ch ch', '<p><strong><a href=\"https://www.vietnambooking.com/hotel/vietnam/da-nang-mikazuki-japanese-resorts-spa.html\">Đ&agrave; Nẵng Mikazuki Japanese Resorts &amp; Spa</a></strong>&nbsp;l&agrave; địa điểm dừng ch&acirc;n l&yacute; tưởng của nhiều kh&aacute;ch h&agrave;ng khi đến với th&agrave;nh phố. Kh&aacute;ch sạn đạt ti&ecirc;u chuẩn 5 sao nằm ở Vịnh Đ&agrave; Nẵng - một trong những b&atilde;i biển xinh đẹp bậc nhất&nbsp;c&aacute;ch s&acirc;n bay quốc tế Đ&agrave; Nẵng khoảng 8,4 km.</p>\n<p dir=\"ltr\"><strong>Đ&agrave; Nẵng Mikazuki Japanese Resorts &amp; Spa</strong>&nbsp;c&oacute; hệ thống gồm 12 căn biệt thự với 48 ph&ograve;ng ngủ với 2 loại ph&ograve;ng đơn v&agrave; ph&ograve;ng đ&ocirc;i. Nội thất trong ph&ograve;ng được b&agrave;y tr&iacute; v&agrave; sắp xếp theo kiểu Nhật Bản đặc biệt l&agrave; ở đầu giường c&oacute; treo bức tranh theo phong c&aacute;ch Nhật Bản. Trong ph&ograve;ng được trang bị đầy đủ c&aacute;c thiết bị với m&aacute;y điều h&ograve;a, b&igrave;nh nước n&oacute;ng, m&aacute;y sấy t&oacute;c...</p>\n<p>Nh&agrave; h&agrave;ng&nbsp;Japanese Nami l&agrave; nơi hội tụ những tinh hoa ẩm thực Việt Nam v&agrave; Nhật Bản c&oacute; hướng nh&igrave;n ra biển. Qu&yacute; kh&aacute;ch sẽ c&oacute; thể được thưởng thức ẩm thực vừa nh&igrave;n ra biển. Hệ thống c&ocirc;ng vi&ecirc;n nước với c&aacute;c bể bơi trượt nước, khu Onsen gi&uacute;p cho qu&yacute; kh&aacute;ch c&oacute; thể thỏa sức vui chơi. Ngo&agrave;i ra,&nbsp;<strong>Đ&agrave; Nẵng Mikazuki</strong></p>', 1, 39, 'Vị trí đẹp', 15, 12, 9),
(14, 'Movenpick Resort Phan Thiết', 'Đường Hòn Giồ, Thuận Qúy , Phường Mũi Né, Thành phố Phan Thiết, Tỉnh Bình Thuận', 35, 4, '<div class=\"MuiBox-root jss503\"><strong><span class=\"MuiBox-root jss504\">Ch&iacute;nh s&aacute;ch ch', '<p><strong><a href=\"https://www.vietnambooking.com/hotel/vietnam/poshanu-resort-phan-thiet.html\">Poshanu Resort</a>&nbsp;</strong>sở hữu một lối đi để ra khu vực b&atilde;i biển ri&ecirc;ng v&agrave; hệ thống những bungalow với diện t&iacute;ch rộng r&atilde;i&nbsp;gi&uacute;p du kh&aacute;ch tận hưởng chuyến đi một c&aacute;ch thoải m&aacute;i v&agrave; trọn vẹn nhất. Đặc biệt, những tiện nghi như&nbsp;<strong>s&agrave;n gỗ, giường 4 cọc v&agrave; quạt trần</strong>&nbsp;được trang bị tại đ&acirc;y đ&atilde; to&aacute;t l&ecirc;n được vẻ độc đ&aacute;o v&agrave; gần gũi với thi&ecirc;n nhi&ecirc;n, tạo n&ecirc;n kh&ocirc;ng gian l&yacute; tưởng cho việc nghỉ dưỡng.</p>\n<p>B&ecirc;n cạnh vẻ truyền thống th&igrave; những vật dụng hiện đại như k&eacute;t an to&agrave;n, v&ograve;i hoa sen, tivi truyền h&igrave;nh c&aacute;p m&agrave;n h&igrave;nh phẳng, minibar,.. cũng c&oacute; trong mỗi Bungalow. Ngo&agrave;i ra, để mang lại sự thuận tiện cho du kh&aacute;ch th&igrave; resort cũng cung cấp &aacute;p cho&agrave;ng tắm v&agrave; d&eacute;p. Kh&ocirc;ng dừng lại ở đ&oacute;, du kh&aacute;ch sẽ được tận hưởng l&agrave;n nước m&aacute;t l&agrave;nh ở trong&nbsp;<strong>bể bơi ngo&agrave;i trời&nbsp;</strong>hoặc vươn m&igrave;nh dưới hơi ấm của mặt trời khi nằm tr&ecirc;n c&acirc;c ghế phơi nắng tại resort.</p>', 1, 11, 'Khách sạn yêu thích', 13, 12, 9),
(15, 'New World Phú Quốc Resort', 'Bãi Khem, An Thới, Phường An Thới, Thành phố Phú Quốc, Tỉnh Kiên Giang', 13, 4, '<p><strong>Ch&iacute;nh s&aacute;ch chung:</strong></p>\n<div>\n<ul>\n<li>Kh&ocirc;ng cho ph&eacute;p h', '<p><strong><a href=\"https://www.vietnambooking.com/hotel/vietnam/da-nang-mikazuki-japanese-resorts-spa.html\">Đ&agrave; Nẵng Mikazuki Japanese Resorts &amp; Spa</a></strong>&nbsp;l&agrave; địa điểm dừng ch&acirc;n l&yacute; tưởng của nhiều kh&aacute;ch h&agrave;ng khi đến với th&agrave;nh phố. Kh&aacute;ch sạn đạt ti&ecirc;u chuẩn 5 sao nằm ở Vịnh Đ&agrave; Nẵng - một trong những b&atilde;i biển xinh đẹp bậc nhất&nbsp;c&aacute;ch s&acirc;n bay quốc tế Đ&agrave; Nẵng khoảng 8,4 km.</p>\n<p dir=\"ltr\"><strong>Đ&agrave; Nẵng Mikazuki Japanese Resorts &amp; Spa</strong>&nbsp;c&oacute; hệ thống gồm 12 căn biệt thự với 48 ph&ograve;ng ngủ với 2 loại ph&ograve;ng đơn v&agrave; ph&ograve;ng đ&ocirc;i. Nội thất trong ph&ograve;ng được b&agrave;y tr&iacute; v&agrave; sắp xếp theo kiểu Nhật Bản đặc biệt l&agrave; ở đầu giường c&oacute; treo bức tranh theo phong c&aacute;ch Nhật Bản. Trong ph&ograve;ng được trang bị đầy đủ c&aacute;c thiết bị với m&aacute;y điều h&ograve;a, b&igrave;nh nước n&oacute;ng, m&aacute;y sấy t&oacute;c...</p>\n<p>Nh&agrave; h&agrave;ng&nbsp;Japanese Nami l&agrave; nơi hội tụ những tinh hoa ẩm thực Việt Nam v&agrave; Nhật Bản c&oacute; hướng nh&igrave;n ra biển. Qu&yacute; kh&aacute;ch sẽ c&oacute; thể được thưởng thức ẩm thực vừa nh&igrave;n ra biển. Hệ thống c&ocirc;ng vi&ecirc;n nước với c&aacute;c bể bơi trượt nước, khu Onsen gi&uacute;p cho qu&yacute; kh&aacute;ch c&oacute; thể thỏa sức vui chơi. Ngo&agrave;i ra,&nbsp;<strong>Đ&agrave; Nẵng Mikazuki</strong></p>', 1, 34, 'Ưu đãi chớp nhoáng', 14, 12, 9),
(16, 'Vinpearl Resort & Spa Hội An', 'Tổ 6, Khối Phước Hải,, Phường Cửa Đại, Thành phố Hội An, Tỉnh Quảng Nam', 34, 4, '<p><strong>Ch&iacute;nh s&aacute;ch chung:</strong></p>\n<div>\n<ul>\n<li>Kh&ocirc;ng cho ph&eacute;p h', '<p><strong><a href=\"https://www.vietnambooking.com/hotel/vietnam/la-siesta-hoi-an-resort-spa.html\">La Siesta Hội An</a></strong>&nbsp;nằm ngay trong&nbsp;khu vực Phố cổ Hội An,&nbsp;được TripAdvisor b&igrave;nh chọn v&agrave;o&nbsp;top 25 kh&aacute;ch sạn tốt nhất Ch&acirc;u &Aacute; v&agrave; đứng số 1 tại Hội An. Từ khu nghỉ dưỡng, qu&yacute; kh&aacute;ch c&oacute; thể&nbsp;thuận lợi đến c&aacute;c điểm tham quan như l&agrave;ng gốm Thanh H&agrave;, ch&ugrave;a Cầu, chợ Hội An. Khu nghỉ dưỡng n&agrave;y được x&acirc;y dựng theo<strong>&nbsp;</strong>ti&ecirc;u chuẩn 5 sao quốc tế với tổng cộng 107 ph&ograve;ng, chia l&agrave;m 2 c&aacute;nh kh&aacute;c nhau.</p>\n<p>Nằm trong khu vườn nhiệt đới đầy m&agrave;u sắc,&nbsp;<strong>La Siesta Hội An</strong>&nbsp;được chia th&agrave;nh 2 c&aacute;nh. C&aacute;nh ph&iacute;a t&acirc;y với 70 ph&ograve;ng được thiết kế theo kiểu kh&aacute;ch sạn rộng r&atilde;i nhưng truyền thống, cổ điển. C&aacute;nh ph&iacute;a đ&ocirc;ng đặc trưng với c&aacute;c đặc điểm của khu phố cổ qua t&aacute;m biệt thự nh&agrave; phố tr&ecirc;n s&acirc;n hi&ecirc;n c&oacute; sức chứa 37 ph&ograve;ng suite cổ điển nổi bật.</p>', 1, 48, 'Giá độc quyền', 14, 12, 2),
(17, 'Ana Mandara Villas Đà Lạt Resort & Spa', 'Lê Lai, Phường 5, Thành phố Đà Lạt, Tỉnh Lâm Đồng', 15, 5, '<div class=\"MuiBox-root jss2185\"><strong><span class=\"MuiBox-root jss2186\">Ch&iacute;nh s&aacute;ch chung</span></strong>\n<div class=\"MuiBox-root jss2187 jss2167\">\n<p>Kh&ocirc;ng cho ph&eacute;p h&uacute;t thuốc</p>\n<p>Kh&ocirc;ng cho ph&eacute;p th&uacute; cưng</p>\n<p>Cho ph&eacute;p tổ chức tiệc / sự kiện</p>\n</div>\n</div>\n<div class=\"MuiBox-root jss2188\"><strong><span class=\"MuiBox-root jss2189\">Ch&iacute;nh s&aacute;ch trẻ em</span></strong>\n<div class=\"MuiBox-root jss2190 jss2167\">\n<p>Trẻ em từ 12 tuổi sẽ được xem như người lớn</p>\n<p>Qu&yacute; kh&aacute;ch h&agrave;ng vui l&ograve;ng nhập đ&uacute;ng số lượng kh&aacute;ch v&agrave; tuổi để c&oacute; gi&aacute; ch&iacute;nh x&aacute;c.</p>\n</div>\n</div>', '<p><strong><a href=\"https://www.vietnambooking.com/hotel/vietnam/ana-mandara-villas-da-lat-resort-spa.html\">Ana Mandara Villas Đ&agrave; Lạt Resort &amp; Spa</a>&nbsp;</strong>được thiết kế theo kiểu kiến tr&uacute;c cổ điển Ph&aacute;p. Khu nghỉ dưỡng nằm tại vị tr&iacute; l&yacute; tưởng tr&ecirc;n những sườn dốc mộng mơ ở<strong>&nbsp;trung t&acirc;m th&agrave;nh phố Đ&agrave; Lạt</strong>. Từ đ&acirc;y bạn c&oacute; thể di chuyển dễ d&agrave;ng đến nhiều địa điểm tham quan của xứ sở ng&agrave;n hoa như: Hồ Xu&acirc;n Hương, Hồ Tuyền L&acirc;m, Thung lũng t&igrave;nh y&ecirc;u,... Ph&ograve;ng nghỉ ở&nbsp;Ana Villas Dalat Resort &amp; Spa ấm c&uacute;ng v&agrave; đầy đủ tiện nghi như: M&aacute;y sấy t&oacute;c, tủ lạnh mini, k&eacute;t sắt, quạt, điều h&ograve;a,...</p>\n<p>Đặc biệt, tại&nbsp;<strong>Ana Mandara Villas Đ&agrave; Lạt Resort &amp; Spa</strong>&nbsp;c&oacute;&nbsp;<strong>hồ bơi ngo&agrave;i trời, nh&agrave; h&agrave;ng</strong>&nbsp;v&agrave; trung t&acirc;m spa rất hiện đại, sang trọng, l&agrave; nơi l&yacute; tưởng để bạn hưởng thụ v&agrave; thư gi&atilde;n sau những giờ l&agrave;m việc mệt nho&agrave;i. La Cochinchine Spa c&oacute; 5 ph&ograve;ng thư gi&atilde;n với c&aacute;c liệu ph&aacute;p như massage ch&acirc;n, ph&ograve;ng x&ocirc;ng hơi kh&ocirc; v&agrave; ướt,... gi&uacute;p bạn kho&aacute;c l&ecirc;n một diện mạo mới trong kỳ nghỉ dưỡng.</p>\n<p>Nếu như bạn c&oacute; bất kỳ thắc mắc n&agrave;o về dịch vụ&nbsp;<strong>đặt ph&ograve;ng&nbsp;</strong><strong>Ana Mandara Villas Đ&agrave; Lạt</strong>&nbsp;hay&nbsp;<strong><a href=\"https://www.vietnambooking.com/hotel/vietnam/khach-san-da-lat.html\">đặt ph&ograve;ng kh&aacute;ch sạn Đ&agrave; Lạt</a></strong>, vui l&ograve;ng li&ecirc;n hệ số&nbsp;<strong>hotline&nbsp;1900 4698&nbsp;</strong>để được tư vấn v&agrave; hỗ trợ chi tiết nhất.</p>', 0, 39, 'Giá cực tốt', 14, 12, 9),
(18, 'Stelia Beach Resort Phú Yên', 'Độc Lập, Phường 9, Thành phố Tuy Hoà, Tỉnh Phú Yên', 20, 5, '<div class=\"MuiBox-root jss5438\"><strong><span class=\"MuiBox-root jss5439\">Ch&iacute;nh s&aacute;ch chung</span></strong>\n<div class=\"MuiBox-root jss5440 jss5420\">\n<p>Kh&ocirc;ng cho ph&eacute;p h&uacute;t thuốc</p>\n<p>Kh&ocirc;ng cho ph&eacute;p th&uacute; cưng</p>\n<p>Cho ph&eacute;p tổ chức tiệc / sự kiện</p>\n</div>\n</div>\n<div class=\"MuiBox-root jss5441\"><strong><span class=\"MuiBox-root jss5442\">Ch&iacute;nh s&aacute;ch trẻ em</span></strong>\n<div class=\"MuiBox-root jss5443 jss5420\">\n<p>Trẻ em từ 12 tuổi sẽ được xem như người lớn</p>\n<p>Qu&yacute; kh&aacute;ch h&agrave;ng vui l&ograve;ng nhập đ&uacute;ng số lượng kh&aacute;ch v&agrave; tuổi để c&oacute; gi&aacute; ch&iacute;nh x&aacute;c.</p>\n</div>\n</div>', '<p class=\"MsoNormal\"><strong><a href=\"https://www.vietnambooking.com/hotel/vietnam/stelia-beach-resort-phu-yen.html\" target=\"_blank\" rel=\"noopener\">Stelia Beach Resort Ph&uacute; Y&ecirc;n</a></strong>&nbsp;l&agrave; khu biệt thự nghỉ dưỡng hiện đại nằm giữa thi&ecirc;n nhi&ecirc;n trong l&agrave;nh xanh m&aacute;t, Diện t&iacute;ch l&ecirc;n đến 9 hecta với b&atilde;i biển ri&ecirc;ng, resort được thiết kế theo phong c&aacute;ch Địa Trung Hải Santorini sẽ mang đến cho du kh&aacute;ch trải nghiệm nghỉ dưỡng đẳng cấp 5 sao. Resort nằm c&aacute;ch s&acirc;n bay Tuy H&ograve;a 8 km, th&aacute;p Nghinh Phong,&nbsp;Quảng Trường 1-4,&nbsp;N&uacute;i Nhạn, ch&ugrave;a Bảo L&acirc;m, G&agrave;nh &Ocirc;ng, G&agrave;nh B&agrave; c&ugrave;ng nhiều địa điểm tham quan du lịch kh&aacute;c của Ph&uacute; Y&ecirc;n chỉ với v&agrave;i ph&uacute;t di chuyển bằng xe.&nbsp;</p>\n<p class=\"MsoNormal\">Đến với&nbsp;<strong>Stelia Beach Resort Ph&uacute; Y&ecirc;n</strong>&nbsp;qu&yacute; kh&aacute;ch sẽ bị đắm ch&igrave;m v&agrave;o cảnh sắc thi&ecirc;n nhi&ecirc;n tuyệt đẹp h&ograve;a hợp với kiệt t&aacute;c s&aacute;ng tạo của con người. Với thiết kế 41 ph&ograve;ng v&agrave; biệt thự nghỉ dưỡng với hai t&ocirc;ng m&agrave;u xanh trắng chủ đạo, tối giản nhưng tinh tế h&agrave;i h&ograve;a với thi&ecirc;n nhi&ecirc;n. Được trang bị nội thất cao cấp, sang trọng phục vụ cho nhu cầu nghỉ dưỡng của du kh&aacute;ch c&ugrave;ng với c&aacute;c tiện t&iacute;ch miễn ph&iacute; c&oacute; tại Resort qu&yacute; kh&aacute;ch c&oacute; thể tận hưởng chuyến đi v&agrave; vui chơi c&ugrave;ng gia đ&igrave;nh v&agrave; người th&acirc;n với c&aacute;c hoạt động ngo&agrave;i trời như bể bơi v&ocirc; cực, đạp xe dạo quanh, khu vui chơi trẻ em, xem phim, chạy bộ tr&ecirc;n b&atilde;i biển, ph&ograve;ng tập thể dục...&nbsp;</p>\n<p class=\"MsoNormal\">Khu vực nh&agrave; h&agrave;ng Gozo được thiết kế rất đặc biệt với h&igrave;nh d&aacute;ng c&aacute;nh diều đ&oacute;n gi&oacute; hướng ra biển, Gozo Brew House l&agrave; nh&agrave; h&agrave;ng tre lớn nhất Việt Nam với diện t&iacute;ch l&ecirc;n đến 1900m2, được gh&eacute;p từ hơn 40.000 c&acirc;y tầm v&ocirc;ng v&agrave; m&aacute;i v&ograve;m được lợp từ h&agrave;ng trăm l&aacute; dừa nước rất độc đ&aacute;o. Nh&agrave; h&agrave;ng phục vụ c&aacute;c m&oacute;n ăn mang phong c&aacute;ch từ &Acirc;u đến &Aacute; v&agrave; c&aacute;c m&oacute;n hải sản tươi sống đặc sản của v&ugrave;ng biển Ph&uacute; Y&ecirc;n, đặc biệt hơn nữa nơi d&acirc;y c&ograve;n sở hữu d&acirc;y chuyền nấu bia truyền thống ngay trong nh&agrave; h&agrave;ng, Gozo Brew House tạo ra những ly bia tươi ngon trọn vị kh&oacute; qu&ecirc;n. Ngo&agrave;i ra&nbsp;Stelia Beach Resort Ph&uacute; Y&ecirc;n&nbsp;c&ograve;n c&oacute; khu vực Aura Spa gi&uacute;p bạn c&oacute; thời gian thư giản xua tan những mệt mỏi c&ugrave;ng với dịch vụ x&ocirc;ng hơi, massage chuy&ecirc;n nghiệp nhất sẽ l&agrave;m h&agrave;i l&ograve;ng tuyệt đối d&ugrave; l&agrave; vị kh&aacute;ch kh&oacute; t&iacute;nh nhất.</p>', 0, 46, 'Giá độc quyền', 14, 12, 9),
(19, 'Azerai Cần Thơ', 'Cồn Ấu, Phường Hưng Phú, Quận Cái Răng, Thành phố Cần Thơ', 10, 5, '<div class=\"MuiBox-root jss506\"><strong><span class=\"MuiBox-root jss507\">Ch&iacute;nh s&aacute;ch chung</span></strong>\n<div class=\"MuiBox-root jss508 jss488\">\n<p>Kh&ocirc;ng cho ph&eacute;p h&uacute;t thuốc</p>\n<p>Kh&ocirc;ng cho ph&eacute;p th&uacute; cưng</p>\n<p>Kh&ocirc;ng cho ph&eacute;p tổ chức tiệc / sự kiện</p>\n<p>Hạn chế người Việt Nam v&agrave; người nước ngo&agrave;i check-in c&ugrave;ng 1 ph&ograve;ng, nếu kh&ocirc;ng xuất tr&igrave;nh giấy đăng k&yacute; kết h&ocirc;n</p>\n</div>\n</div>\n<div class=\"MuiBox-root jss509\"><strong><span class=\"MuiBox-root jss510\">Ch&iacute;nh s&aacute;ch trẻ em</span></strong>\n<div class=\"MuiBox-root jss511 jss488\">\n<p>Trẻ em từ 13 tuổi sẽ được xem như người lớn</p>\n<p>Qu&yacute; kh&aacute;ch h&agrave;ng vui l&ograve;ng nhập đ&uacute;ng số lượng kh&aacute;ch v&agrave; tuổi để c&oacute; gi&aacute; ch&iacute;nh x&aacute;c.</p>\n</div>\n</div>', '<p><strong><a href=\"https://www.vietnambooking.com/hotel/vietnam/khu-nghi-duong-azerai-can-tho.html\">Khu nghỉ dưỡng&nbsp;Azerai Cần Thơ</a></strong>&nbsp;tọa lạc tại vị tr&iacute; tuyệt đẹp của Cồn Ấu, gần trung t&acirc;m th&agrave;nh phố Cần Thơ.&nbsp;<strong>Khu nghỉ dưỡng Azerai Cần Thơ</strong>&nbsp;mang d&aacute;ng vẻ phương Đ&ocirc;ng đặc trưng h&ograve;a c&ugrave;ng khung cảnh thi&ecirc;n nhi&ecirc;n b&ecirc;n d&ograve;ng s&ocirc;ng Hậu đầy thơ mộng. &ldquo;Ốc đảo b&igrave;nh dị độc đ&aacute;o&rdquo; n&agrave;y ẩn m&igrave;nh dưới h&agrave;ng c&acirc;y trăm tuổi được giữ lại nguy&ecirc;n vẹn trong qu&aacute; tr&igrave;nh x&acirc;y dựng.&nbsp;</p>\n<p><strong>Khu nghỉ dưỡng Azerai Cần Thơ</strong>&nbsp;l&agrave; sản phẩm cao cấp kết hợp của tập đo&agrave;n Novaland c&ugrave;ng tập đo&agrave;n danh tiếng thế giới Adrian Zecha với tham vọng ph&aacute;t triển Cần Thơ th&agrave;nh ng&ocirc;i sao s&aacute;ng tr&ecirc;n bản đồ du lịch thế giới.</p>\n<p><strong>Khu nghỉ dưỡng Azerai Cần Thơ</strong>&nbsp;c&oacute; tất cả 60 bungalow với kh&ocirc;ng gian mở, chan h&ograve;a &aacute;nh s&aacute;ng, nội thất nền n&atilde; v&agrave; sang trọng. Đặc biệt,&nbsp;<strong>Khu nghỉ dưỡng Azerai Cần Thơ</strong> c&ograve;n cung cấp nhiều dịch vụ đi k&egrave;m đạt chuẩn 5 sao như hồ bơi ngo&agrave;i trời, spa thư gi&atilde;n, ph&ograve;ng gym, yoga, tennis, nh&agrave; h&agrave;ng với ẩm thực phong ph&uacute;, cửa h&agrave;ng lưu niệm.</p>', 0, 14, 'Vị trí đẹp', 15, 12, 9),
(20, 'Vinpearl Resort & Spa Phú Quốc', 'Bãi Dài, Xã Gành Dầu, Thành phố Phú Quốc, Tỉnh Kiên Giang', 25, 5, '<div class=\"MuiBox-root jss503\"><strong><span class=\"MuiBox-root jss504\">Ch&iacute;nh s&aacute;ch chung</span></strong>\n<div class=\"MuiBox-root jss505 jss485\">\n<p>Kh&ocirc;ng cho ph&eacute;p h&uacute;t thuốc</p>\n<p>Kh&ocirc;ng cho ph&eacute;p th&uacute; cưng</p>\n<p>Cho ph&eacute;p tổ chức tiệc / sự kiện</p>\n</div>\n</div>\n<div class=\"MuiBox-root jss506\"><strong><span class=\"MuiBox-root jss507\">Ch&iacute;nh s&aacute;ch trẻ em</span></strong>\n<div class=\"MuiBox-root jss508 jss485\">\n<p>Trẻ em từ 12 tuổi sẽ được xem như người lớn</p>\n<p>Qu&yacute; kh&aacute;ch h&agrave;ng vui l&ograve;ng nhập đ&uacute;ng số lượng kh&aacute;ch v&agrave; tuổi để c&oacute; gi&aacute; ch&iacute;nh x&aacute;c.</p>\n</div>\n</div>', '<p><strong><a href=\"https://www.vietnambooking.com/hotel/vietnam/vinpearl-resort-spa-phu-quoc.html\">Vinpearl Resort &amp; Spa Ph&uacute; Quốc</a>&nbsp;</strong>nằm ở ph&iacute;a Bắc của đảo Ph&uacute; Quốc,&nbsp;l&agrave; lựa chọn tuyệt vời d&agrave;nh cho du kh&aacute;ch mỗi khi đến tham quan h&ograve;n đảo Ph&uacute; Quốc xinh đẹp.&nbsp;Khu nghỉ dưỡng chỉ c&aacute;ch s&acirc;n bay Ph&uacute; Quốc khoảng 24 km, c&aacute;ch chợ đ&ecirc;m Ph&uacute; Quốc 18 km, c&aacute;ch s&ograve;ng bạc Corona Casino 1 km...</p>\n<p><strong>Vinpearl Resort &amp; Spa Ph&uacute; Quốc</strong>&nbsp;mang đậm n&eacute;t kiến tr&uacute;c Đ&ocirc;ng Dương với h&igrave;nh ảnh những t&ograve;a nh&agrave; m&aacute;i ng&oacute;i đỏ đặc trưng. C&aacute;c ph&ograve;ng đều được trang bị đầy đủ tiện nghi đ&aacute;p ứng c&aacute;c nhu cầu của kh&aacute;ch h&agrave;ng. Đến đ&acirc;y, bạn sẽ kh&ocirc;ng khỏi ngạc nhi&ecirc;n trước sự sang trọng bậc nhất m&agrave; kh&ocirc;ng t&igrave;m thấy ở nơi kh&aacute;c.</p>\n<p>Khu nghỉ dưỡng được kết nối thuận tiện với c&aacute;c khu resort kh&aacute;c của Vinpearl tr&ecirc;n đảo Ph&uacute; Quốc. Hệ thống nh&agrave; h&agrave;ng với sự đa dạng trong ẩm thực hứa hẹn sẽ l&agrave;m h&agrave;i l&ograve;ng bất kỳ ai.&nbsp;<strong>Vinpearl Resort &amp; Spa Ph&uacute; Quốc</strong>&nbsp;được c&aacute;c gia đ&igrave;nh, nh&oacute;m bạn v&agrave; cặp đ&ocirc;i rất ưa chuộng.</p>\n<p>Nếu như bạn c&oacute; bất kỳ thắc mắc n&agrave;o về dịch vụ&nbsp;đặt ph&ograve;ng<strong>&nbsp;<a href=\"https://www.vietnambooking.com/hotel/vietnam/khach-san-phu-quoc.html\">kh&aacute;ch sạn Ph&uacute; Quốc</a></strong>, vui l&ograve;ng li&ecirc;n hệ số tổng đ&agrave;i&nbsp;<span>1900 4698</span>&nbsp;để được hỗ trợ v&agrave; tư vấn chi tiết nhất.</p>', 0, 34, 'Giá cực tốt', 14, 12, 2),
(21, 'Vinpearl Resort Nha Trang', 'Lê Thánh Tôn, Phường Lộc Thọ, Thành phố Nha Trang, Tỉnh Khánh Hòa', 10, 5, '<div class=\"MuiBox-root jss503\"><strong><span class=\"MuiBox-root jss504\">Ch&iacute;nh s&aacute;ch chung</span></strong>\n<div class=\"MuiBox-root jss505 jss485\">\n<p>Kh&ocirc;ng cho ph&eacute;p h&uacute;t thuốc</p>\n<p>Kh&ocirc;ng cho ph&eacute;p th&uacute; cưng</p>\n<p>Cho ph&eacute;p tổ chức tiệc / sự kiện</p>\n</div>\n</div>\n<div class=\"MuiBox-root jss506\"><strong><span class=\"MuiBox-root jss507\">Ch&iacute;nh s&aacute;ch trẻ em</span></strong>\n<div class=\"MuiBox-root jss508 jss485\">\n<p>Trẻ em từ 12 tuổi sẽ được xem như người lớn</p>\n<p>Qu&yacute; kh&aacute;ch h&agrave;ng vui l&ograve;ng nhập đ&uacute;ng số lượng kh&aacute;ch v&agrave; tuổi để c&oacute; gi&aacute; ch&iacute;nh x&aacute;c.</p>\n</div>\n</div>', '<p><a href=\"https://www.vietnambooking.com/hotel/vietnam/melia-vinpearl-nha-trang-empire.html\"><strong>Melia Vinpearl Nha Trang Empire</strong></a>&nbsp;l&agrave; sản phẩm căn hộ kh&aacute;ch sạn đẳng cấp mang đến cho kh&aacute;ch h&agrave;ng kh&ocirc;ng gian lưu tr&uacute; tiện nghi nhất. Đến đ&acirc;y qu&yacute; kh&aacute;ch sẽ được tận hưởng trải nghiệm du lịch sinh th&aacute;i ngay trong kh&ocirc;ng gian th&agrave;nh phố biển. Với quy m&ocirc; 41 tầng đẳng cấp tọa lạc ngay&nbsp;<strong>trung t&acirc;m th&agrave;nh phố Nha Trang,</strong>&nbsp;hứa hẹn<strong>&nbsp;</strong>đem đến cho du kh&aacute;ch những cảm nhận trọn vẹn nhất về nhịp sống hiện đại.&nbsp;</p>\n<p>Điểm đặc biệt tại&nbsp;<strong>Melia Vinpearl Nha Trang Empire</strong>&nbsp;đ&oacute; l&agrave; đa số c&aacute;c&nbsp;<strong>ph&ograve;ng đều c&oacute; view biển</strong>&nbsp;v&agrave; Vingroup c&ograve;n thu&ecirc; cho kh&aacute;ch một&nbsp;<strong>b&atilde;i biển ri&ecirc;ng&nbsp;</strong>đ&atilde; được k&ecirc; ghế d&ugrave; đầy đủ. Ngo&agrave;i ra, qu&yacute; kh&aacute;ch c&ograve;n c&oacute; thể vui chơi, mua sắm thỏa th&iacute;ch tại Trung t&acirc;m thương mại Vincom, khu giải tr&iacute; Vinpearl Land, Vinpearl Golf, Trung t&acirc;m ẩm thực &amp; giải tr&iacute; Ocean Hill&hellip; của hệ sinh th&aacute;i Vinpearl.</p>\n<div>\n<div>Kh&ocirc;ng chỉ c&oacute; thế,<strong>&nbsp;</strong><strong>Melia Vinpearl Nha Trang Empire</strong>&nbsp;c&ograve;n nằm gần nhiều địa điểm nổi tiếng như:&nbsp;<strong>Th&aacute;p Trầm Hương, Viện Hải dương học,</strong>&nbsp;Th&aacute;p b&agrave; Ponagar,... Nếu như bạn đang muốn t&igrave;m kiếm một kh&aacute;ch sạn 5 sao chuẩn quốc tế theo m&ocirc; h&igrave;nh căn hộ, tận hưởng kh&ocirc;ng gian nghỉ dưỡng sang trọng v&agrave; ri&ecirc;ng tư giống như ở nh&agrave; th&igrave; đ&acirc;y l&agrave; lựa chọn l&yacute; tưởng d&agrave;nh cho bạn.&nbsp;</div>\n</div>', 0, 33, 'Khách sạn yêu thích', 14, 12, 2);

-- --------------------------------------------------------

--
-- Table structure for table `khunggio`
--

CREATE TABLE `khunggio` (
  `ID` int(11) NOT NULL,
  `GioBatDau` time NOT NULL,
  `GioKetThuc` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `khunggio`
--

INSERT INTO `khunggio` (`ID`, `GioBatDau`, `GioKetThuc`) VALUES
(1, '09:00:00', '12:00:00'),
(2, '14:00:00', '16:00:00'),
(3, '19:00:00', '23:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `khuyenmai`
--

CREATE TABLE `khuyenmai` (
  `ID` int(11) NOT NULL,
  `TieuDe` varchar(100) NOT NULL,
  `IDKhachSan` int(11) NOT NULL,
  `PhanTramKM` int(11) NOT NULL,
  `SoLuongSD` int(100) NOT NULL,
  `MaKhuyenMai` varchar(20) DEFAULT NULL,
  `BatDau` datetime NOT NULL,
  `KetThuc` datetime NOT NULL,
  `MoTa` text DEFAULT NULL,
  `DieuKien` text DEFAULT NULL,
  `SoLuongKM` int(11) DEFAULT NULL,
  `IDKhungGio` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `khuyenmai`
--

INSERT INTO `khuyenmai` (`ID`, `TieuDe`, `IDKhachSan`, `PhanTramKM`, `SoLuongSD`, `MaKhuyenMai`, `BatDau`, `KetThuc`, `MoTa`, `DieuKien`, `SoLuongKM`, `IDKhungGio`) VALUES
(3, 'Khách sạn giảm đến 200K', 8, 4, 0, 'CHAOHE23', '2023-05-09 00:00:00', '2023-05-30 00:00:00', 'Khách sạn giảm đến 200K', '<div class=\"MuiBox-root jss947 jss942\"><strong><span class=\"MuiBox-root jss948 jss944\">Kh&aacute;ch sạn giảm đến 200K</span></strong>\n<ul>\n<li>Giảm ngay 4% tối đa 200.000Đ cho đơn ph&ograve;ng kh&aacute;ch sạn (mức giảm &aacute;p dụng cho gi&aacute; trị đơn chưa bao gồm thuế ph&iacute;).</li>\n<li>Ưu đ&atilde;i được &aacute;p dụng cho một số hạng ph&ograve;ng của kh&aacute;ch sạn</li>\n<li>Thời gian sử dụng m&atilde;: 10/05/2023 - 31/05/2023</li>\n<li>Ưu đ&atilde;i kh&ocirc;ng được &aacute;p dụng c&ugrave;ng c&aacute;c chương tr&igrave;nh khuyến m&atilde;i kh&aacute;c.</li>\n<li>Mỗi kh&aacute;ch h&agrave;ng chỉ được hưởng ưu đ&atilde;i 01 lần/ chương tr&igrave;nh. Chương tr&igrave;nh chỉ &aacute;p dụng cho kh&aacute;ch h&agrave;ng c&aacute; nh&acirc;n.</li>\n<li>Nếu ph&aacute;t hiện c&aacute;c đặt ph&ograve;ng c&oacute; dấu hiệu lạm dụng, trục lợi ưu đ&atilde;i, My Travelc&oacute; quyền từ chối &aacute;p dụng.</li>\n<li>&Aacute;p dụng ho&agrave;n hủy theo ch&iacute;nh s&aacute;ch kh&aacute;ch sạn.</li>\n<li>My Travel c&oacute; quyền thay đổi điều khoản v&agrave; thể lệ của chương tr&igrave;nh khuyến mại m&agrave; kh&ocirc;ng cần th&ocirc;ng b&aacute;o trước. Vui l&ograve;ng</li>\n<li>truy cập MyTravel.vn để cập nhật c&aacute;c ưu đ&atilde;i v&agrave; ch&iacute;nh s&aacute;ch mới nhất.<br>Mọi quyết định của Mytour l&agrave; kết quả cuối c&ugrave;ng.<br><em>*** Mọi thắc mắc vui l&ograve;ng li&ecirc;n hệ 1900 2083.</em></li>\n</ul>\n</div>', 100, NULL),
(4, 'Khuyến mãi mùa hè', 16, 5, 0, 'CHAOHE22', '2023-05-11 00:00:00', '0000-00-00 00:00:00', 'Khuyến mãi mùa hè', '<div class=\"MuiBox-root jss947 jss942\"><strong>Khuyến m&atilde;i m&ugrave;a h&egrave;</strong><br>\n<ul>\n<li>Giảm ngay 4% tối đa 200.000Đ cho đơn ph&ograve;ng kh&aacute;ch sạn (mức giảm &aacute;p dụng cho gi&aacute; trị đơn chưa bao gồm thuế ph&iacute;).</li>\n<li>Ưu đ&atilde;i được &aacute;p dụng cho một số hạng ph&ograve;ng của kh&aacute;ch sạn</li>\n<li>Thời gian sử dụng m&atilde;: 10/05/2023 - 31/05/2023</li>\n<li>Ưu đ&atilde;i kh&ocirc;ng được &aacute;p dụng c&ugrave;ng c&aacute;c chương tr&igrave;nh khuyến m&atilde;i kh&aacute;c.</li>\n<li>Mỗi kh&aacute;ch h&agrave;ng chỉ được hưởng ưu đ&atilde;i 01 lần/ chương tr&igrave;nh. Chương tr&igrave;nh chỉ &aacute;p dụng cho kh&aacute;ch h&agrave;ng c&aacute; nh&acirc;n.</li>\n<li>Nếu ph&aacute;t hiện c&aacute;c đặt ph&ograve;ng c&oacute; dấu hiệu lạm dụng, trục lợi ưu đ&atilde;i, My Travelc&oacute; quyền từ chối &aacute;p dụng.</li>\n<li>&Aacute;p dụng ho&agrave;n hủy theo ch&iacute;nh s&aacute;ch kh&aacute;ch sạn.</li>\n<li>My Travel c&oacute; quyền thay đổi điều khoản v&agrave; thể lệ của chương tr&igrave;nh khuyến mại m&agrave; kh&ocirc;ng cần th&ocirc;ng b&aacute;o trước. Vui l&ograve;ng</li>\n<li>truy cập MyTravel.vn để cập nhật c&aacute;c ưu đ&atilde;i v&agrave; ch&iacute;nh s&aacute;ch mới nhất.<br>Mọi quyết định của Mytour l&agrave; kết quả cuối c&ugrave;ng.<br><em>*** Mọi thắc mắc vui l&ograve;ng li&ecirc;n hệ 1900 2083.</em></li>\n</ul>\n</div>', NULL, NULL),
(7, 'Bùng nổ ngày hè', 8, 5, 0, NULL, '2023-05-14 00:00:00', '2023-05-14 00:00:00', NULL, NULL, NULL, 2),
(8, 'Bùng nổ ngày hè 2', 16, 5, 0, NULL, '2023-05-14 00:00:00', '2023-05-31 10:00:00', NULL, NULL, NULL, 2),
(9, 'Bùng nổ ngày hè 3', 20, 5, 0, NULL, '2023-05-14 00:00:00', '2023-05-31 06:00:00', NULL, NULL, NULL, 2),
(10, 'Bùng nổ ngày hè 4', 21, 5, 0, NULL, '2023-05-14 00:00:00', '2023-05-31 06:00:00', NULL, NULL, NULL, 2),
(15, 'Quốc tế thiếu nhi ', 8, 5, 0, 'THIEUNHI23', '2023-05-12 00:00:00', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL),
(16, 'Quốc tế thiếu nhi', 20, 3, 0, 'THIEUNHI23', '2023-05-13 00:00:00', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL),
(17, 'Bùng nổ ngày hè 5', 8, 4, 0, NULL, '2023-05-13 09:29:16', '0000-00-00 00:00:00', NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `loaitiennghikhachsan`
--

CREATE TABLE `loaitiennghikhachsan` (
  `ID` int(11) NOT NULL,
  `TenLoai` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `loaitiennghikhachsan`
--

INSERT INTO `loaitiennghikhachsan` (`ID`, `TenLoai`) VALUES
(1, 'Phương tiện đi lại'),
(2, 'Giải trí'),
(3, 'Thể thao'),
(4, 'Internet'),
(5, 'Dịch vụ lễ tân'),
(6, 'Dịch vụ lau dọn'),
(7, 'Hỗ trợ người khuyết tật'),
(8, 'Thư giãn và làm đẹp'),
(9, 'Dịch vụ nhà hàng'),
(10, 'Dịch vụ trẻ em'),
(11, 'Dịch vụ cho doanh nhân'),
(12, 'Tiện ích tổng quát cho khách sạn'),
(13, 'Vật nuôi');

-- --------------------------------------------------------

--
-- Table structure for table `loaitiennghiphong`
--

CREATE TABLE `loaitiennghiphong` (
  `TenLoai` varchar(50) NOT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `loaitiennghiphong`
--

INSERT INTO `loaitiennghiphong` (`TenLoai`, `ID`) VALUES
('Phòng tắm và vật dụng phòng tắm', 1),
('Tiện Nghi', 2),
('Vật dụng an toàn và an ninh', 3),
('Quần áo và giặt ủi', 4),
('Bố trí và nội thất', 5),
('Ăn uống', 6),
('Điểm đặc trưng', 7);

-- --------------------------------------------------------

--
-- Table structure for table `nguoidung`
--

CREATE TABLE `nguoidung` (
  `ID` int(11) NOT NULL,
  `HoTen` varchar(50) NOT NULL,
  `HinhAnh` varchar(10000) NOT NULL DEFAULT 'https://t4.ftcdn.net/jpg/05/49/98/39/360_F_549983970_bRCkYfk0P6PP5fKbMhZMIb07mCJ6esXL.jpg',
  `Email` varchar(50) NOT NULL,
  `SoDienThoai` varchar(10) DEFAULT NULL,
  `DiaChi` varchar(100) DEFAULT NULL,
  `MatKhau` varchar(100) NOT NULL,
  `PhanQuyen` int(11) NOT NULL,
  `TenCongTy` varchar(100) DEFAULT NULL,
  `MaSoThue` varchar(10) DEFAULT NULL,
  `QuyMo` varchar(100) DEFAULT NULL,
  `TrangThai` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nguoidung`
--

INSERT INTO `nguoidung` (`ID`, `HoTen`, `HinhAnh`, `Email`, `SoDienThoai`, `DiaChi`, `MatKhau`, `PhanQuyen`, `TenCongTy`, `MaSoThue`, `QuyMo`, `TrangThai`) VALUES
(1, 'Admin', 'https://t4.ftcdn.net/jpg/05/49/98/39/360_F_549983970_bRCkYfk0P6PP5fKbMhZMIb07mCJ6esXL.jpg', 'admin@gmail.com', NULL, NULL, 'admin', 2, NULL, NULL, NULL, 1),
(2, 'Vinpearl', 'https://inkythuatso.com/uploads/images/2021/09/vinpearl-logo-inkythuatso-1-13-10-21-19.jpg', 'vinpearl@gmail.com', '0928754123', 'Vinpearl Beachfront Nha Trang, 78 - 80 Đường Trần Phú, Phường Lộc Thọ, Tp. Nha Trang', '$2a$10$2sqBZxyEuduEJgNJvdIFA.ZRZV/rShXHXVcjm5Fl4jB4RTR4FlZ9C', 1, 'Vinpearl', '012578541', '20 - 49 nhân viên', 1),
(3, 'Nguyễn Đăng Mạnh Tú', 'https://t4.ftcdn.net/jpg/05/49/98/39/360_F_549983970_bRCkYfk0P6PP5fKbMhZMIb07mCJ6esXL.jpg	', 'manhtu2272002@gmail.com', '', '', '$2a$10$UAdFFtuw/24puqwJ.BYUtufh3k9yhjb7tTCjZcJLw4LUIBnoP79xW', 0, '', '', '', 0),
(4, 'Tran Thao Quyen', 'https://t4.ftcdn.net/jpg/05/49/98/39/360_F_549983970_bRCkYfk0P6PP5fKbMhZMIb07mCJ6esXL.jpg	', 'quyenquyen@gmail.com', '098231189', 'Phường 2, quận 3, TPHCM', '$2a$10$5kf9MtdD1CyWY53vT5Um6O9ZPHsMBC2JMapEi5V/lpvW.lwmwoNuW', 0, NULL, NULL, NULL, 1),
(5, 'Trần Huỳnh Ngọc Diệp', 'https://t4.ftcdn.net/jpg/05/49/98/39/360_F_549983970_bRCkYfk0P6PP5fKbMhZMIb07mCJ6esXL.jpg	', 'HuynhNgoc123@gmail.com', '098992321', 'Số nhà 412, đường Nguyễn Văn Cừ, quận 5, TPHCM', '$2a$10$U9eqIonkF8OOPrmKZIVpE.lMt45vqfEeLQnGKLk/OYDuU/LoXuvFC', 1, NULL, NULL, NULL, 0),
(8, 'Bình Phước', 'https://t4.ftcdn.net/jpg/05/49/98/39/360_F_549983970_bRCkYfk0P6PP5fKbMhZMIb07mCJ6esXL.jpg', 'lapdoan.010102@gmail.com', '0985374624', '70 Hoàng Hoa Thám Tp Vũng Tàu', '$2a$10$2QW8cAx.eDr4ELEyzMvHCeJq.Py/qYFFpMGYLNm2eOZlnYVrWBEiC', 1, 'Hiệp phước', '123', '1 - 19 nhân viên', 1),
(9, 'Nguyễn Đăng Mạnh', 'https://t4.ftcdn.net/jpg/05/49/98/39/360_F_549983970_bRCkYfk0P6PP5fKbMhZMIb07mCJ6esXL.jpg', 'manhtu2002227@gmail.com', '0985374623', '77 Chuyên Dùng 9 Phường Phú Mỹ Quận 7 TPHCM', '$2a$10$1UVGUz4pLYH/tDZP2Cst7O5YF/yFTOU8KLiJYyF7wUeKp9BaGKph2', 1, 'Ozawa suruki', '7000', '50 - 99 nhân viên', 1),
(11, 'Le Nguyen Lan Vy', 'https://t4.ftcdn.net/jpg/05/49/98/39/360_F_549983970_bRCkYfk0P6PP5fKbMhZMIb07mCJ6esXL.jpg', 'vyle4119@gmail.com', '0346678902', '135B Trần Hưng Đạo, quận 1, TP Hồ Chí Minh', '$2a$10$MIEodqdEXp.uKwKQU.Gfoeo8ctFJAEEdMnEDY0AyAx3B6EjkQbKle', 1, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nguoinhanphong`
--

CREATE TABLE `nguoinhanphong` (
  `ID` int(11) NOT NULL,
  `HoTen` varchar(255) NOT NULL,
  `Sdt` varchar(10) NOT NULL,
  `IDKhachHang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phong`
--

CREATE TABLE `phong` (
  `ID` int(11) NOT NULL,
  `TenLoaiPhong` varchar(50) NOT NULL,
  `IDKhachSan` int(11) NOT NULL,
  `SoPhongTrong` int(11) NOT NULL,
  `SoNguoi` int(11) NOT NULL,
  `DienTich` int(11) NOT NULL,
  `Gia` int(11) NOT NULL,
  `TrangThai` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `phong`
--

INSERT INTO `phong` (`ID`, `TenLoaiPhong`, `IDKhachSan`, `SoPhongTrong`, `SoNguoi`, `DienTich`, `Gia`, `TrangThai`) VALUES
(1, 'Deluxe King', 8, 25, 2, 38, 2389716, 1),
(2, 'Standard Room', 9, 32, 2, 33, 1556718, 1),
(3, 'Deluxe Family Triple Room', 10, 22, 3, 32, 1771571, 1),
(4, 'Phòng, 1 giường cỡ king, Quang cảnh sông', 11, 17, 3, 37, 2500400, 1),
(5, 'Phòng Deluxe View Vườn (Hướng Núi)', 12, 5, 2, 30, 1385982, 1),
(6, 'Deluxe Suite', 13, 8, 2, 50, 4017339, 1),
(7, 'Superior Room With Sea View', 14, 26, 2, 35, 1973758, 1),
(8, 'Garden Pool Villa 02-Bedroom', 15, 12, 4, 125, 5272756, 1),
(9, 'Deluxe King Ocean View', 16, 34, 2, 39, 2760845, 1),
(10, 'Villa Studio', 17, 5, 2, 40, 2729782, 1),
(11, 'Premium Twin with Balcony - Garden View', 18, 13, 2, 45, 1807802, 1),
(12, 'Phòng Hướng Sông', 19, 30, 2, 35, 7091607, 1),
(13, 'Deluxe Twin Ocean View', 20, 47, 2, 46, 2825975, 1),
(14, 'GRAND DELUXE TWIN BED', 21, 33, 2, 42, 2234286, 1);

-- --------------------------------------------------------

--
-- Table structure for table `taikhoanthanhtoan`
--

CREATE TABLE `taikhoanthanhtoan` (
  `IDKhachHang` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `HoTenTK` varchar(100) NOT NULL,
  `SoTaiKhoan` varchar(50) NOT NULL,
  `NgayHetHan` date NOT NULL,
  `anhQR` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `thongtinhuuich`
--

CREATE TABLE `thongtinhuuich` (
  `ID` int(11) NOT NULL,
  `ThongTin` varchar(255) NOT NULL,
  `HinhAnh` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `thongtinhuuich`
--

INSERT INTO `thongtinhuuich` (`ID`, `ThongTin`, `HinhAnh`) VALUES
(1, 'Khoảng cách tới trung tâm', '<svg width=\"20\" height=\"20\" fill=\"none\"><path d=\"M4.166 19.166H2.333a1.5 1.5 0 01-1.5-1.5v-5.333a1.5 1.5 0 011.5-1.5h1.833M7.5 13.333h1.667M7.5 15.833h1.667M7.5 10.833h1.667\" stroke=\"#1A202C\" stroke-linecap=\"round\" stroke-linejoin=\"round\"></path><path d=\"M10.833 5V3.683a1.5 1.5 0 011.93-1.437l5.334 1.6a1.5 1.5 0 011.069 1.437v12.383a1.5 1.5 0 01-1.5 1.5h-12a1.5 1.5 0 01-1.5-1.5V9a1.5 1.5 0 011.5-1.5h5.333A1.5 1.5 0 0112.5 9v10.166M15.833 15.833V7.5\" stroke=\"#1A202C\" stroke-linecap=\"round\" stroke-linejoin=\"round\"></path></svg>'),
(2, 'Khoảng cách tới sân bay', '<svg width=\"20\" height=\"20\" fill=\"none\"><path d=\"M2.047 11.896h15.906M4.014 15.021h1.282M7.435 15.021h1.282M10.855 15.021h1.284M14.276 15.021h1.283M13.642 1.367a1.482 1.482 0 011.148 1.43 1.467 1.467 0 01-.685 1.272L5.653 9.32a.52.52 0 01-.573-.017L1.98 7.126a.286.286 0 01.006-.451l1.3-1.147a.286.286 0 01.277-.047l1.629.97L7.26 5.01 3.343 2.583a.357.357 0 01.017-.556l.957-.709a.357.357 0 01.333-.048l5.398 2.01 2.5-1.704a1.386 1.386 0 011.094-.209v0zM11.25 8.77h4.879a1.29 1.29 0 011.259.947l1.948 7.5a1.26 1.26 0 01-1.26 1.554H1.925a1.26 1.26 0 01-1.258-1.554l1.705-6.565\" stroke=\"#000\" stroke-linecap=\"round\" stroke-linejoin=\"round\"></path></svg>'),
(3, 'Khoảng cách tới trung tâm thị trấn', '<svg width=\"20\" height=\"20\" fill=\"none\"><path d=\"M15.833 6.667c0 3.6-5.834 9.479-5.834 9.479s-5.833-5.88-5.833-9.48c0-3.69 3.014-5.833 5.833-5.833 2.82 0 5.834 2.142 5.834 5.834z\" stroke=\"#1A202C\" stroke-linecap=\"round\" stroke-linejoin=\"round\"></path><path d=\"M10 8.333A1.667 1.667 0 1010 5a1.667 1.667 0 000 3.333zM15 14.57c2.508.447 4.166 1.22 4.166 2.097 0 1.38-4.104 2.5-9.166 2.5-5.063 0-9.167-1.12-9.167-2.5 0-.878 1.658-1.65 4.167-2.096\" stroke=\"#1A202C\" stroke-linecap=\"round\" stroke-linejoin=\"round\"></path></svg>'),
(4, 'Năm khách sạn xây dựng', '<svg width=\"20\" height=\"20\" fill=\"none\"><path d=\"M15 4.167H5c-.92 0-1.667.746-1.667 1.666v10c0 .92.746 1.667 1.667 1.667h10c.92 0 1.666-.746 1.666-1.667v-10c0-.92-.746-1.667-1.666-1.667zM13.333 2.5v3.333M6.667 2.5v3.333M3.333 9.166h13.333\" stroke=\"#1A202C\" stroke-linecap=\"round\" stroke-linejoin=\"round\"></path></svg>'),
(5, 'Số quán bar\r\n', '<svg width=\"20\" height=\"20\" fill=\"none\"><path d=\"M4.167 6.212h12.121M10.228 12.273c-3.334 0-6.061-2.728-6.061-6.061V1.667h12.121v4.545c0 3.333-2.727 6.06-6.06 6.06zM10.227 12.273v6.06M6.44 18.333h7.575\" stroke=\"#1A202C\" stroke-miterlimit=\"10\" stroke-linecap=\"round\" stroke-linejoin=\"round\"></path></svg>'),
(6, 'Số phòng khách sạn', '<svg width=\"20\" height=\"20\" fill=\"none\"><path d=\"M3.334 9.445V7.778a1.111 1.111 0 011.111-1.111H8.89A1.111 1.111 0 0110 7.778v1.667\" stroke=\"#1A202C\" stroke-linecap=\"round\" stroke-linejoin=\"round\"></path><path d=\"M10 9.445V7.778a1.111 1.111 0 011.111-1.111h4.445a1.111 1.111 0 011.11 1.111v1.667\" stroke=\"#1A202C\" stroke-linecap=\"round\" stroke-linejoin=\"round\"></path><path d=\"M3.148 9.445h13.704a1.481 1.481 0 011.482 1.481v3.519H1.667v-3.519a1.482 1.482 0 011.481-1.481v0zM1.667 14.445v2.222M18.334 14.445v2.222\" stroke=\"#1A202C\" stroke-linecap=\"round\" stroke-linejoin=\"round\"></path><path d=\"M16.667 9.445v-5a1.111 1.111 0 00-1.11-1.112H4.444a1.111 1.111 0 00-1.111 1.112v5\" stroke=\"#1A202C\" stroke-linecap=\"round\" stroke-linejoin=\"round\"></path></svg>'),
(7, 'Số nhà hàng', '<svg width=\"20\" height=\"20\" fill=\"none\"><path d=\"M14.167 15l2.5 2.5M3.334 4.167l6.667 6.666M5 2.5l4.167 4.167L5.834 10 1.667 5.833M3.334 17.5L17.501 3.334A6.761 6.761 0 0115.834 10c-2.947 2.947-5 3.334-5 3.334\" stroke=\"#1A202C\" stroke-miterlimit=\"10\" stroke-linecap=\"round\" stroke-linejoin=\"round\"></path></svg>'),
(8, 'Số tầng khách sạn\r\n', '<svg width=\"20\" height=\"20\" fill=\"none\"><path d=\"M8.542 12.5h4.791a.417.417 0 01.417.417v6.458H8.125v-6.458a.417.417 0 01.417-.417z\" stroke=\"#1A202C\" stroke-linecap=\"round\" stroke-linejoin=\"round\"></path><path d=\"M13.75 19.375h4.375v-10a.625.625 0 00-.625-.625h-5.625a.625.625 0 00-.625.625V12.5M8.125 19.375h-1.25M19.375 19.375h-1.25M11.25 15h2.5M16.25 12.5h1.875M16.25 15h1.875M16.25 8.75V6.875\" stroke=\"#1A202C\" stroke-linecap=\"round\" stroke-linejoin=\"round\"></path><path d=\"M19.375 1.25a.625.625 0 00-.625-.625H1.25a.625.625 0 00-.625.625v17.5a.625.625 0 00.625.625h2.5a.625.625 0 00.625-.625V4.375H18.75a.625.625 0 00.625-.625v-2.5zM3.125 9.375h1.25M3.125 14.375h1.25M9.375 4.375v-1.25M14.375 4.375v-1.25\" stroke=\"#1A202C\" stroke-linecap=\"round\" stroke-linejoin=\"round\"></path><path d=\"M.625 4.375h3.75V.625\" stroke=\"#1A202C\" stroke-linecap=\"round\" stroke-linejoin=\"round\"></path></svg>');

-- --------------------------------------------------------

--
-- Table structure for table `thongtinhuuich_ks`
--

CREATE TABLE `thongtinhuuich_ks` (
  `IDKhachSan` int(11) NOT NULL,
  `IDThongTin` int(11) NOT NULL,
  `NoiDung` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `thongtinhuuich_ks`
--

INSERT INTO `thongtinhuuich_ks` (`IDKhachSan`, `IDThongTin`, `NoiDung`) VALUES
(8, 1, '2'),
(8, 2, '3'),
(8, 3, '4'),
(8, 4, '2015'),
(8, 5, '5'),
(8, 6, '10'),
(8, 8, '15'),
(9, 1, '5'),
(9, 2, '3'),
(9, 3, '1'),
(9, 4, '2015'),
(9, 5, '3'),
(9, 6, '1'),
(9, 7, '12'),
(9, 8, '12'),
(10, 8, '12'),
(11, 1, '2'),
(11, 2, '3'),
(11, 3, '4'),
(11, 4, '2018'),
(11, 6, '30'),
(11, 7, '2'),
(11, 8, '3'),
(12, 1, '1'),
(12, 2, '2'),
(12, 3, '3'),
(12, 4, '2010'),
(12, 5, '2'),
(12, 6, '30'),
(12, 7, '10'),
(12, 8, '30'),
(13, 1, '5'),
(13, 2, '10'),
(13, 3, '10'),
(13, 4, '2018'),
(13, 5, '1'),
(13, 6, '50'),
(13, 7, '2'),
(13, 8, '40'),
(14, 1, '2'),
(14, 2, '4'),
(14, 3, '5'),
(14, 4, '2013'),
(14, 5, '22'),
(14, 6, '23'),
(14, 7, '12'),
(14, 8, '45'),
(15, 1, '3'),
(15, 2, '3'),
(15, 3, '4'),
(15, 4, '2010'),
(15, 5, '23'),
(15, 6, '43'),
(15, 7, '1'),
(15, 8, '45'),
(16, 1, '12'),
(16, 2, '3'),
(16, 3, '1'),
(16, 4, '2019'),
(16, 5, '3'),
(16, 6, '30'),
(16, 7, '1'),
(16, 8, '23'),
(17, 1, '1'),
(17, 2, '35'),
(17, 3, '3.8'),
(17, 4, '2006'),
(17, 5, '1'),
(17, 6, '81'),
(17, 7, '1'),
(17, 8, '3'),
(18, 1, '3'),
(18, 2, '6.8'),
(18, 3, '3'),
(18, 4, '2018'),
(18, 5, '1'),
(18, 6, '59'),
(18, 7, '2'),
(18, 8, '1'),
(19, 1, '4'),
(19, 2, '5'),
(19, 3, '10'),
(19, 4, '2010'),
(19, 5, '1'),
(19, 6, '40'),
(19, 7, '3'),
(19, 8, '40'),
(20, 1, '20'),
(20, 2, '30.4'),
(20, 3, '21.2'),
(20, 4, '2014'),
(20, 5, '3'),
(20, 6, '750'),
(20, 7, '3'),
(20, 8, '7'),
(21, 1, '6'),
(21, 2, '40'),
(21, 3, '5.7'),
(21, 4, '2003'),
(21, 5, '4'),
(21, 6, '476'),
(21, 7, '4'),
(21, 8, '5');

-- --------------------------------------------------------

--
-- Table structure for table `tiennghichung_ks`
--

CREATE TABLE `tiennghichung_ks` (
  `ID` int(11) NOT NULL,
  `Icon` varchar(200) NOT NULL,
  `TenTienNghi` varchar(50) NOT NULL,
  `IDLoai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tiennghichung_ks`
--

INSERT INTO `tiennghichung_ks` (`ID`, `Icon`, `TenTienNghi`, `IDLoai`) VALUES
(1, 'https://storage.googleapis.com/tripi-assets/images/hotels/amenities/phuongtiendilai/san-bay.png', 'Đưa/đón khách sân bay', 1),
(2, 'https://storage.googleapis.com/tripi-assets/images/hotel/amenity/ferry_transfer.png', 'Đưa/đón khách bến phà', 1),
(3, 'https://storage.googleapis.com/tripi-assets/images/hotel/amenity/car_for_hire.png', 'Cho thuê xe hơi', 1),
(4, 'https://storage.googleapis.com/tripi-assets/images/hotel/amenity/bike_for_hire.png', 'Cho thuê xe máy', 1),
(5, 'https://storage.googleapis.com/tripi-assets/images/hotel/amenity/car_for_hire.png', 'Bãi đỗ xe', 1),
(11, 'https://storage.googleapis.com/tripi-assets/images/hotels/amenities/giaitri/bai-tam-rieng.png', 'Bãi tắm riêng', 2),
(12, 'https://storage.googleapis.com/tripi-assets/images/hotels/amenities/giaitri/karaok.png', 'Karaoke', 2),
(21, 'https://storage.googleapis.com/tripi-assets/images/hotels/amenities/thethao/gym.png', 'Phòng gym', 3),
(22, 'https://storage.googleapis.com/tripi-assets/images/hotels/amenities/thethao/tennis.png', 'Sân tennis', 3),
(23, 'https://storage.googleapis.com/tripi-assets/images/hotels/amenities/thethao/bong-ban.png', 'Bóng bàn', 3),
(31, 'https://storage.googleapis.com/tripi-assets/images/hotels/amenities/internet/Amenities_wifi.png', 'Internet miễn phí', 4),
(41, 'https://storage.googleapis.com/tripi-assets/images/hotels/amenities/letan/reception-hotel-24h.svg', 'Lễ tân 24h', 5),
(42, 'https://storage.googleapis.com/tripi-assets/images/hotel/amenity/special_aid.png', 'Trợ giúp đặc biệt', 5),
(43, ' https://storage.googleapis.com/tripi-assets/images/hotels/amenities/letan/doi-ngoai-te.png', 'Thu đổi ngoại tệ', 5),
(44, 'https://storage.googleapis.com/tripi-assets/images/hotels/amenities/letan/giu-hanh-ly.png', 'Giữ hành lý', 5),
(45, 'https://storage.googleapis.com/tripi-assets/images/hotels/amenities/letan/dat-tour.png', 'Bán tour', 5),
(46, 'https://storage.googleapis.com/tripi-assets/images/hotels/amenities/letan/bao-thuc.png', 'Báo thức', 5),
(47, 'https://storage.googleapis.com/tripi-assets/images/hotels/amenities/letan/ket-sat.png', 'Két an toàn', 5),
(51, 'https://storage.googleapis.com/tripi-assets/images/hotels/amenities/vesinh/don-dep-hang-ngay.png', 'Dọn phòng hàng ngày', 6),
(52, 'https://storage.googleapis.com/tripi-assets/images/hotels/amenities/vesinh/giat-la.png', 'Dịch vụ giặt là', 6),
(53, 'https://storage.googleapis.com/tripi-assets/images/hotels/amenities/vesinh/la-do.png', ' Ủi đồ', 6),
(61, 'https://storage.googleapis.com/tripi-assets/images/hotels/amenities/khuyettat/loi-vao-xe-lan.png', 'Lối vào người khuyết tật', 7),
(62, 'https://storage.googleapis.com/tripi-assets/images/hotel/amenity/toilet_for_the_disabled.png', 'Toilet người khuyết tật', 7),
(63, 'https://storage.googleapis.com/tripi-assets/images/hotels/amenities/khuyettat/bon-rua-mat-thap-hon.png', 'Bồn rửa mặt thấp hơn', 7),
(71, 'https://storage.googleapis.com/tripi-assets/images/hotels/amenities/thuagianlamdep/massage.png', 'Massage', 8),
(72, 'https://storage.googleapis.com/tripi-assets/images/hotels/amenities/thuagianlamdep/spa-stone 1.png', 'Spa', 8),
(73, 'https://storage.googleapis.com/tripi-assets/images/hotels/amenities/thuagianlamdep/xong-hoi.png', 'Phòng xông hơi khô', 8),
(81, 'https://storage.googleapis.com/tripi-assets/images/hotels/amenities/nhahanganuong/bua-sang-tru-toi.png', 'Bữa sáng', 9),
(82, 'https://storage.googleapis.com/tripi-assets/images/hotels/amenities/nhahanganuong/bua-sang-tru-toi.png', 'Bữa trưa', 9),
(83, 'https://storage.googleapis.com/tripi-assets/images/hotels/amenities/nhahanganuong/bua-sang-tru-toi.png', 'Bữa tối', 9),
(84, 'https://storage.googleapis.com/tripi-assets/images/hotels/amenities/nhahanganuong/ruou-sam-pang.png', 'Rượu vang/Sâm panh', 9),
(85, 'https://storage.googleapis.com/tripi-assets/images/hotels/amenities/nhahanganuong/nha-hang.png', 'Nhà hàng', 9),
(86, 'https://storage.googleapis.com/tripi-assets/images/hotel/amenity/bar.png', 'Quầy bar', 9),
(91, 'https://storage.googleapis.com/tripi-assets/images/hotels/amenities/treem/khu-vui-choi.png', 'Khu vui chơi cho trẻ em', 10),
(92, 'https://storage.googleapis.com/tripi-assets/images/hotels/amenities/treem/bua-an-tre-em.png', 'Bữa ăn trẻ em', 10),
(101, 'https://storage.googleapis.com/tripi-assets/images/hotels/amenities/doanhnhanh/phong-hop.png', 'Phòng họp', 11),
(102, 'https://storage.googleapis.com/tripi-assets/images/hotels/amenities/doanhnhanh/phong-hop.png', 'Tổ chức sự kiện', 11),
(103, 'https://storage.googleapis.com/tripi-assets/images/hotels/amenities/doanhnhanh/printer%201.png', 'Máy fax/Photocopy', 11),
(111, 'https://storage.googleapis.com/tripi-assets/images/hotels/amenities/tongquat/thang-may.png', 'Thang máy', 12),
(112, 'https://storage.googleapis.com/tripi-assets/images/hotel/amenity/smoking_room.png', 'Không hút thuốc', 12),
(113, 'https://storage.googleapis.com/tripi-assets/images/hotel/amenity/balcony.png', 'Ban công', 12),
(114, 'https://storage.googleapis.com/tripi-assets/images/hotel/amenity/air_conditioner.png', 'Điều hoà nhiệt độ', 12),
(115, 'https://storage.googleapis.com/tripi-assets/images/hotels/amenities/tongquat/san-vuon.png', 'Sân vườn', 12),
(116, 'https://storage.googleapis.com/tripi-assets/images/hotels/amenities/tongquat/san-thuong.png', 'Sân thượng', 12),
(121, 'https://storage.googleapis.com/tripi-assets/images/hotel/amenity/allow_pet.png', 'Được mang vật nuôi', 13);

-- --------------------------------------------------------

--
-- Table structure for table `tiennghichung_phong`
--

CREATE TABLE `tiennghichung_phong` (
  `ID` int(11) NOT NULL,
  `TenTienNghi` varchar(50) NOT NULL,
  `Icon` varchar(50) NOT NULL,
  `IDLoai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tiennghichung_phong`
--

INSERT INTO `tiennghichung_phong` (`ID`, `TenTienNghi`, `Icon`, `IDLoai`) VALUES
(1, 'Áo Choàng tắm', 'shirt', 1),
(2, 'Gương', 'face-smile', 1),
(3, 'Vật dụng tắm rửa', 'soap', 1),
(4, 'Phòng tắm vòi sen', 'shower', 1),
(5, 'Dầu gội', 'pump-soap', 1),
(6, 'Bộ vệ sinh cá nhân', 'box-tissue', 1),
(54, 'Dép đi trong nhà', 'shoe-prints', 2),
(55, 'Điều hòa', 'wind', 2),
(56, 'Rèm che ánh sáng', 'virus-slash', 2),
(57, 'Đồng hồ báo thức', 'bell', 2),
(58, 'Wifi miễn phí trong phòng', 'wifi', 2),
(59, 'Khóa điện tử', 'lock', 2),
(60, 'Quạt', 'fan', 2),
(61, 'Sản phẩm vệ sinh', 'soap', 2),
(62, 'Đầu báo khói', 'smog', 3),
(63, 'Két sách trong phòng', 'hard-hat', 3),
(64, 'Cách âm', 'satellite-dish', 3),
(65, 'Bình chữa cháy', 'fire-extinguisher', 3),
(66, 'Giá treo quần áo', 'hat-cowboy-side', 4),
(67, 'Tủ quần áo', 'door-closed', 4),
(72, 'Ghế làm việc', 'chair', 5),
(73, 'Ghế sofa', 'couch', 5),
(74, 'Phòng khách riêng', 'person-booth', 5),
(75, 'Sàn gỗ', 'leaf', 5),
(76, 'Nước đóng chai miễn phí', 'wine-bottle', 6),
(77, 'Đồ uống mới khách miễn phí', 'tint', 6),
(78, 'Tủ lạnh nhỏ trong phòng', 'wind', 6),
(79, 'Quầy bar mini', 'cocktail', 6),
(80, 'Máy pha sinh tố', 'blender', 6),
(81, 'Máy pha cà phê', 'coffee', 6),
(82, 'Diện tích phòng', 'home', 7),
(83, 'Wifi miễn phí', 'wifi', 7),
(84, 'Ban công/ sân hiên', 'shop', 7),
(85, 'Không hút thuốc', 'smoking-ban', 7),
(86, 'Phòng tắm vòi sen & bồn tắm', 'bath', 7);

-- --------------------------------------------------------

--
-- Table structure for table `tiennghi_khachsan`
--

CREATE TABLE `tiennghi_khachsan` (
  `IDKhachSan` int(11) NOT NULL,
  `IDTienNghi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tiennghi_khachsan`
--

INSERT INTO `tiennghi_khachsan` (`IDKhachSan`, `IDTienNghi`) VALUES
(8, 1),
(8, 2),
(8, 3),
(8, 4),
(8, 5),
(8, 11),
(8, 12),
(8, 21),
(8, 22),
(8, 23),
(8, 31),
(8, 41),
(8, 42),
(8, 43),
(8, 44),
(8, 45),
(8, 46),
(8, 47),
(8, 61),
(8, 62),
(8, 63),
(9, 1),
(9, 2),
(9, 3),
(9, 4),
(9, 5),
(9, 11),
(9, 12),
(9, 21),
(9, 22),
(9, 23),
(9, 31),
(9, 41),
(9, 42),
(9, 43),
(9, 44),
(9, 45),
(9, 46),
(9, 47),
(9, 61),
(9, 62),
(9, 63),
(10, 115),
(11, 1),
(11, 2),
(11, 3),
(11, 4),
(11, 5),
(11, 11),
(11, 12),
(11, 21),
(11, 22),
(11, 23),
(11, 31),
(11, 41),
(11, 42),
(11, 43),
(11, 44),
(11, 45),
(11, 46),
(11, 47),
(11, 61),
(11, 62),
(11, 63),
(12, 1),
(12, 2),
(12, 3),
(12, 4),
(12, 5),
(12, 21),
(12, 22),
(12, 23),
(12, 31),
(12, 41),
(12, 42),
(12, 43),
(12, 44),
(12, 45),
(12, 46),
(12, 47),
(12, 51),
(12, 52),
(12, 53),
(12, 61),
(12, 62),
(12, 63),
(13, 1),
(13, 2),
(13, 3),
(13, 4),
(13, 5),
(13, 11),
(13, 12),
(13, 21),
(13, 22),
(13, 23),
(13, 31),
(13, 41),
(13, 42),
(13, 43),
(13, 44),
(13, 45),
(13, 46),
(13, 47),
(13, 51),
(13, 52),
(13, 53),
(13, 61),
(13, 62),
(13, 63),
(14, 1),
(14, 2),
(14, 3),
(14, 4),
(14, 5),
(14, 11),
(14, 12),
(14, 21),
(14, 22),
(14, 23),
(14, 31),
(14, 41),
(14, 42),
(14, 43),
(14, 44),
(14, 45),
(14, 46),
(14, 47),
(15, 1),
(15, 2),
(15, 3),
(15, 4),
(15, 5),
(15, 11),
(15, 12),
(15, 21),
(15, 22),
(15, 23),
(15, 31),
(15, 41),
(15, 42),
(15, 43),
(15, 44),
(15, 45),
(15, 46),
(15, 47),
(15, 51),
(15, 52),
(15, 53),
(15, 61),
(15, 62),
(15, 63),
(16, 1),
(16, 2),
(16, 3),
(16, 4),
(16, 5),
(16, 11),
(16, 12),
(16, 31),
(16, 41),
(16, 42),
(16, 43),
(16, 44),
(16, 45),
(16, 46),
(16, 47),
(16, 61),
(16, 62),
(16, 63),
(17, 1),
(17, 4),
(17, 11),
(17, 22),
(17, 31),
(17, 41),
(17, 44),
(17, 46),
(17, 61),
(17, 72),
(17, 73),
(17, 81),
(17, 82),
(17, 83),
(17, 84),
(17, 85),
(17, 92),
(17, 101),
(17, 102),
(17, 111),
(17, 112),
(17, 113),
(17, 114),
(17, 115),
(17, 116),
(18, 1),
(18, 3),
(18, 4),
(18, 5),
(18, 11),
(18, 21),
(18, 31),
(18, 41),
(18, 44),
(18, 46),
(18, 51),
(18, 61),
(18, 71),
(18, 72),
(18, 81),
(18, 84),
(18, 85),
(18, 86),
(18, 91),
(18, 102),
(18, 111),
(18, 112),
(18, 113),
(18, 115),
(18, 116),
(19, 1),
(19, 2),
(19, 4),
(19, 5),
(19, 11),
(19, 12),
(19, 22),
(19, 41),
(19, 44),
(19, 47),
(19, 51),
(19, 52),
(19, 62),
(19, 71),
(19, 72),
(19, 81),
(19, 84),
(19, 101),
(19, 111),
(19, 114),
(20, 1),
(20, 4),
(20, 5),
(20, 11),
(20, 21),
(20, 22),
(20, 31),
(20, 41),
(20, 42),
(20, 44),
(20, 46),
(20, 47),
(20, 51),
(20, 53),
(20, 61),
(20, 62),
(20, 71),
(20, 72),
(20, 81),
(20, 82),
(20, 83),
(20, 84),
(20, 85),
(20, 86),
(20, 91),
(20, 101),
(20, 102),
(20, 111),
(20, 112),
(20, 113),
(20, 114),
(20, 115),
(20, 116),
(21, 1),
(21, 5),
(21, 11),
(21, 21),
(21, 22),
(21, 31),
(21, 41),
(21, 44),
(21, 46),
(21, 51),
(21, 52),
(21, 63),
(21, 71),
(21, 72),
(21, 81),
(21, 82),
(21, 84),
(21, 85),
(21, 86),
(21, 91),
(21, 101),
(21, 102),
(21, 111),
(21, 112),
(21, 113),
(21, 114),
(21, 115);

-- --------------------------------------------------------

--
-- Table structure for table `tiennghi_phong`
--

CREATE TABLE `tiennghi_phong` (
  `IDPhong` int(11) NOT NULL,
  `IDTienNghi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tiennghi_phong`
--

INSERT INTO `tiennghi_phong` (`IDPhong`, `IDTienNghi`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `uudai`
--

CREATE TABLE `uudai` (
  `ID` int(11) NOT NULL,
  `NoiDung` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `uudai`
--

INSERT INTO `uudai` (`ID`, `NoiDung`) VALUES
(1, ' Bữa sáng miễn phí'),
(2, 'Sử dụng miễn phí hồ bơi'),
(3, 'Dọn phòng hàng ngày'),
(4, 'Phòng có ban công'),
(5, 'TV truyền hình cáp'),
(7, 'Miễn phí phòng tập thể dục'),
(8, 'Sử dụng miễn phí phòng gym'),
(9, 'Chỗ đậu xe'),
(10, 'Sử dụng 2 chai nước'),
(11, 'Truy cập wifi miễn phí'),
(12, 'Nước uống đóng chai miễn phí'),
(13, 'Cho thuê xe máy'),
(14, 'Trà/cà phê miễn phí'),
(15, 'Dịch vụ đánh giày miễn phí'),
(16, 'Dịch vụ giặt ủi miễn phí'),
(17, 'Dịch vụ thuê nấu ăn miễn phí'),
(18, 'Mượn đồ'),
(19, 'Quà tặng miễn phí'),
(20, 'Dịch vụ đỗ xe và đưa đón miễn phí');

-- --------------------------------------------------------

--
-- Table structure for table `uudai_phong`
--

CREATE TABLE `uudai_phong` (
  `IDPhong` int(11) NOT NULL,
  `IDUuDai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `danhgia`
--
ALTER TABLE `danhgia`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `DanhGia_fk0` (`IDKhachSan`),
  ADD KEY `DanhGia_fk1` (`IDKhachHang`);

--
-- Indexes for table `danhsachyeuthich`
--
ALTER TABLE `danhsachyeuthich`
  ADD PRIMARY KEY (`IDKhachHang`,`IDKhachSan`),
  ADD KEY `DanhSachYeuThich_fk1` (`IDKhachSan`);

--
-- Indexes for table `diadiem`
--
ALTER TABLE `diadiem`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `dondatphong`
--
ALTER TABLE `dondatphong`
  ADD PRIMARY KEY (`MaDatPhong`),
  ADD KEY `DonDatPhong_fk0` (`IDKhachHang`);

--
-- Indexes for table `giuong`
--
ALTER TABLE `giuong`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `giuong_phong`
--
ALTER TABLE `giuong_phong`
  ADD PRIMARY KEY (`IDPhong`,`IDGiuong`),
  ADD KEY `Giuong_Phong_fk1` (`IDGiuong`);

--
-- Indexes for table `hinhanh_khachsan`
--
ALTER TABLE `hinhanh_khachsan`
  ADD PRIMARY KEY (`IDKhachSan`,`HinhAnh`);

--
-- Indexes for table `hinhanh_phong`
--
ALTER TABLE `hinhanh_phong`
  ADD PRIMARY KEY (`IDPhong`,`HinhAnh`);

--
-- Indexes for table `khachsan`
--
ALTER TABLE `khachsan`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `KhachSan_fk0` (`IDDiaDiem`),
  ADD KEY `IDChuKhachSan` (`IDChuKhachSan`);
ALTER TABLE `khachsan` ADD FULLTEXT KEY `Ten` (`Ten`);
ALTER TABLE `khachsan` ADD FULLTEXT KEY `DiaChi` (`DiaChi`);

--
-- Indexes for table `khunggio`
--
ALTER TABLE `khunggio`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `KhuyenMai_fk0` (`IDKhachSan`),
  ADD KEY `KhuyenMai_KG_fk1` (`IDKhungGio`);

--
-- Indexes for table `loaitiennghikhachsan`
--
ALTER TABLE `loaitiennghikhachsan`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `loaitiennghiphong`
--
ALTER TABLE `loaitiennghiphong`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `nguoinhanphong`
--
ALTER TABLE `nguoinhanphong`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `NguoiNhanPhong_fk0` (`IDKhachHang`);

--
-- Indexes for table `phong`
--
ALTER TABLE `phong`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Phong_fk0` (`IDKhachSan`);

--
-- Indexes for table `taikhoanthanhtoan`
--
ALTER TABLE `taikhoanthanhtoan`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `TaiKhoanThanhToan_fk0` (`IDKhachHang`);

--
-- Indexes for table `thongtinhuuich`
--
ALTER TABLE `thongtinhuuich`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `thongtinhuuich_ks`
--
ALTER TABLE `thongtinhuuich_ks`
  ADD PRIMARY KEY (`IDKhachSan`,`IDThongTin`),
  ADD KEY `ThongTinHuuIch_KS_fk1` (`IDThongTin`);

--
-- Indexes for table `tiennghichung_ks`
--
ALTER TABLE `tiennghichung_ks`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `TienNghiChung_KS_fk0` (`IDLoai`);

--
-- Indexes for table `tiennghichung_phong`
--
ALTER TABLE `tiennghichung_phong`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `TienNghiChung_Phong_fk0` (`IDLoai`);

--
-- Indexes for table `tiennghi_khachsan`
--
ALTER TABLE `tiennghi_khachsan`
  ADD PRIMARY KEY (`IDKhachSan`,`IDTienNghi`),
  ADD KEY `TienNghi_KhachSan_fk1` (`IDTienNghi`);

--
-- Indexes for table `tiennghi_phong`
--
ALTER TABLE `tiennghi_phong`
  ADD PRIMARY KEY (`IDPhong`,`IDTienNghi`),
  ADD KEY `TienNghi_Phong_fk1` (`IDTienNghi`);

--
-- Indexes for table `uudai`
--
ALTER TABLE `uudai`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `uudai_phong`
--
ALTER TABLE `uudai_phong`
  ADD PRIMARY KEY (`IDPhong`,`IDUuDai`),
  ADD KEY `UuDai_Phong_fk1` (`IDUuDai`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `danhgia`
--
ALTER TABLE `danhgia`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `diadiem`
--
ALTER TABLE `diadiem`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `hinhanh_khachsan`
--
ALTER TABLE `hinhanh_khachsan`
  MODIFY `IDKhachSan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `khachsan`
--
ALTER TABLE `khachsan`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `khunggio`
--
ALTER TABLE `khunggio`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `khuyenmai`
--
ALTER TABLE `khuyenmai`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `loaitiennghikhachsan`
--
ALTER TABLE `loaitiennghikhachsan`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `loaitiennghiphong`
--
ALTER TABLE `loaitiennghiphong`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `nguoinhanphong`
--
ALTER TABLE `nguoinhanphong`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phong`
--
ALTER TABLE `phong`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `taikhoanthanhtoan`
--
ALTER TABLE `taikhoanthanhtoan`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `thongtinhuuich`
--
ALTER TABLE `thongtinhuuich`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tiennghichung_ks`
--
ALTER TABLE `tiennghichung_ks`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `tiennghichung_phong`
--
ALTER TABLE `tiennghichung_phong`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `uudai`
--
ALTER TABLE `uudai`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `danhgia`
--
ALTER TABLE `danhgia`
  ADD CONSTRAINT `DanhGia_fk0` FOREIGN KEY (`IDKhachSan`) REFERENCES `khachsan` (`ID`),
  ADD CONSTRAINT `DanhGia_fk1` FOREIGN KEY (`IDKhachHang`) REFERENCES `nguoidung` (`ID`);

--
-- Constraints for table `khachsan`
--
ALTER TABLE `khachsan`
  ADD CONSTRAINT `khachsan_ibfk_1` FOREIGN KEY (`IDChuKhachSan`) REFERENCES `nguoidung` (`ID`),
  ADD CONSTRAINT `khachsan_ibfk_2` FOREIGN KEY (`IDDiaDiem`) REFERENCES `diadiem` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

import React, { useState, useEffect, useContext } from 'react'
import Search from '~/components/Search'
import classes from './Detail.module.scss'
import {
    faBath,
    faBed,
    faBlender,
    faBoxTissue,
    faBroom,
    faCocktail,
    faCouch,
    faDumbbell,
    faElevator,
    faGlassCheers,
    faHotTub,
    faHouse,
    faJugDetergent,
    faKey,
    faLuggageCart,
    faMapMarkedAlt,
    faMugHot,
    faParking,
    faPhone,
    faPlaneDeparture,
    faPumpSoap,
    faRulerCombined,
    faShower,
    faSink,
    faSmokingBan,
    faSoap,
    faSpa,
    faSwimmer,
    faTv,
    faUserCheck,
    faUserShield,
    faUserTie,
    faUtensilSpoon,
    faUtensils,
    faWheelchair,
    faWifi,
    faWind,
    faWineBottle,
    faWineGlass,
    faWineGlassAlt,
} from '@fortawesome/free-solid-svg-icons'
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'
// import ButtonPrimary from '~/components/Button/ButtonPrimary'
import { faBell, faBuilding, faCalendar, faSnowflake, faSun } from '@fortawesome/free-regular-svg-icons'
import RoomsList from '~/components/DetailRoom/RoomList/RoomsList'
// import ImageHotel from '~/components/DetailRoom/ButtonPopUpDetail/ImageHotel'
import PriceDetail from './PriceDetail/PriceDeatil'
import FacilityList from '~/components/DetailRoom/FacilityList/FacilityList'
import { RecentViews, SliderHotels } from '~/components'
import notableDes from '~/assets/jsons/notable.json'
import PictureDetail from './PictureDetail/PictureDetail'
import Rating from './Rating/Rating'
import { useLocation, useNavigate, useParams } from 'react-router-dom'
import Axios from 'axios'
import DataContext from '~/contexts/DataContext'
import NotFound from '../NotFound'
const Detail = () => {
    const { data, handleData } = useContext(DataContext)
    const [similarHotels, setSimilarHotels] = useState([])
    const { id } = useParams()
    const [reviewHistory, setReviewHistory] = useState(JSON.parse(localStorage.getItem('reviewHistory')) || [])
    const [data1, setData1] = useState(null)
    useEffect(() => {
        localStorage.setItem('reviewHistory', JSON.stringify(reviewHistory))
    }, [reviewHistory])

    // UI Homepage
    useEffect(() => {
        if (data) {
            data.hotels.map((hotel) => {
                const HinhAnh = data.hotelImages.find((item) => item.IDKhachSan === hotel.ID)
                if (HinhAnh) hotel.HinhAnh = HinhAnh.HinhAnh

                const DiaDiem = data.places.find((item) => item.ID === hotel.IDDiaDiem)
                if (DiaDiem) hotel.DiaDiem = DiaDiem.TenDiaDiem

                let SoDanhGia = 0
                data.rates.map((rate) => {
                    if (rate.IDKhachSan === hotel.ID) SoDanhGia++
                })
                hotel.SoDanhGia = SoDanhGia

                const PhongTieuChuan = data.rooms.find((item) => item.IDKhachSan === hotel.ID)
                if (PhongTieuChuan) hotel.GiaTieuChuan = PhongTieuChuan.Gia

                if (hotel.GiamGia !== 0 && hotel.TrangThai === 1) {
                    hotel.GiaSauKhiGiam = hotel.GiaTieuChuan - (hotel.GiaTieuChuan / 100) * hotel.GiamGia
                }

                if (hotel.IDChuKhachSan === 2 && hotel.TrangThai === 1) {
                    hotel.type = 'Đối tác độc quyền'
                }
            })
        }
    }, [data])
    const user = JSON.parse(localStorage.getItem('user'))

    const [hotel, setHotel] = useState(null)
    const [rooms, setRooms] = useState(null)
    useEffect(() => {
        Axios.get('http://localhost:8800/hotel/detail', { params: { idKs: id, IDUser: user?.ID || null } })
            .then((response) => {
                setHotel(response.data)
                setRooms(response.data.rooms)
                if (data) {
                    const hotels = data.hotels.filter((item) => item.IDDiaDiem === response.data.infor.IDDiaDiem)
                    const activeHotels = hotels.filter((item) => item.TrangThai === 1)
                    setSimilarHotels(activeHotels.filter((item) => item.ID !== id))
                    const { ...view } = response.data.infor
                    view.HinhAnh = response.data.picHotel[0].HinhAnh

                    if (!reviewHistory.find((item) => item.ID === view.ID)) {
                        setReviewHistory([view, ...reviewHistory])
                    }
                }
                window.scrollTo(0, 0)
            })
            .catch((error) => {
                console.log(error)
            })
    }, [id])

    useEffect(() => {
        if (data && data1) {
            const orders = data.orders.filter((order) => {
                return (
                    new Date(order.NgayTraPhong) > new Date(data1.startDate) &&
                    new Date(order.NgayNhanPhong) < new Date(data1.endDate)
                )
            })
            // const [check] = hotel.rooms.filter((room) => {
            const updatedRooms = rooms.map((room) => {
                let soPhongTrong = +room.SoPhongTrong

                for (const item of orders) {
                    if (item.IDPhong === room.ID) {
                        soPhongTrong -= +item.SoLuongPhong
                    }
                }

                return {
                    ...room,
                    checkRoom: soPhongTrong <= 0,
                }
            })

            setRooms(updatedRooms)
        }
    }, [data, data1])

    const handleSearch = (data1) => {
        localStorage.setItem('dates', JSON.stringify(data1))
        setData1(data1)
    }
    return (
        <React.Fragment>
            <div className={classes.spacing}> </div>
            <Search />

            {hotel && (
                <>
                    {hotel.infor.TrangThai === 1 ? (
                        <>
                            <div className={classes.subContainer}>
                                <PictureDetail
                                    picHotel={hotel.picHotel}
                                    ID={hotel.infor.ID}
                                    liked={hotel.infor.liked}
                                />
                            </div>
                            <PriceDetail infor={hotel.infor} types={hotel.types} typesHotel={hotel.typesHotel} />

                            <div className={classes.container}>
                                <div className="row">
                                    <div className="col-lg-12 col-md-12">
                                        <div className={classes['box-map']}>
                                            <div className={classes['box-content']}>
                                                <div className={classes['box-title']}>
                                                    <h3>Khám phá địa điểm lân cận</h3>
                                                </div>
                                                <div className={classes['content-item']}>
                                                    <ul>
                                                        <li>Công viên nước Vũng Tàu </li>
                                                        <li>Cổng Hoa Giấy Checkin Vũng Tàu </li>
                                                        <li>Căn Nhà Hoang Bãi Sau </li>
                                                        <li>Sat </li>
                                                        <li>Monument for War Heroes </li>
                                                        <li>DU LỊCH BẢO HÂN VŨNG TÀU </li>
                                                        <li>Nhà SEO FI / Selfie House </li>
                                                        <li>Chùa Phước Hải Tự </li>
                                                        <li>Linh Sơn Cổ Tự </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div className={classes['box-content']}>
                                                <a
                                                    href="https://www.google.com/maps/search/?api=1&query=10.3524333,107.1015845"
                                                    title=""
                                                >
                                                    <img
                                                        src="https://data.vietnambooking.com/business/hotel/svg/common/icon_map.svg"
                                                        alt="map google"
                                                    />
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <hr className={classes.spacing2} id="roomListContainer" />
                            <Search detail={true} setDateDetail={(data) => handleSearch(data)} />
                            <div>
                                <RoomsList rooms={rooms} />
                            </div>

                            <div className={classes.subContainer}>
                                <div className="row">
                                    <div className="col-lg-12 col-md-12">
                                        <div>
                                            <div className={classes['box-title']}>
                                                <h3>Chính sách Khách sạn </h3>
                                            </div>
                                            <div className={classes.hotelPolicyHour}>
                                                <div className={classes.hour}>
                                                    <div className={classes.CheckInAndOut}>
                                                        <div>Nhận phòng</div>
                                                        <div className={classes.hourPolicy}>
                                                            Từ {hotel.infor.GioNhanPhong}:00
                                                        </div>
                                                    </div>
                                                </div>
                                                <div className={classes.hour}>
                                                    <div className={classes.CheckInAndOut}>
                                                        <div>Trả phòng</div>
                                                        <div className={classes.hourPolicy}>
                                                            Trước {hotel.infor.GioTraPhong}:00
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div className={classes.hotelPolicyRegular}>
                                                <div className={classes.regular}>
                                                    {/* <span className={classes.regularTitle}>Chính sách chung</span> */}
                                                    <div className={classes.regularContent}>
                                                        <div
                                                            dangerouslySetInnerHTML={{ __html: hotel.infor.ChinhSach }}
                                                        />
                                                    </div>
                                                </div>
                                            </div>
                                            <hr />
                                        </div>
                                    </div>
                                </div>
                                <div className="row">
                                    <div className="col-lg-12 col-md-12 mt-1">
                                        <div>
                                            <div className={classes['box-title']}>
                                                <h3>Thông tin hữu ích </h3>
                                            </div>
                                            <div className={classes.usefulInformation}>
                                                {hotel.thongTinHuuIch.map((thongTin) => {
                                                    return (
                                                        <div key={thongTin.ID} className={classes.item}>
                                                            <div className={classes.partOfItem}>
                                                                <span
                                                                    dangerouslySetInnerHTML={{
                                                                        __html: thongTin.HinhAnh,
                                                                    }}
                                                                />
                                                                <span className={classes.text}>
                                                                    {thongTin.ThongTin}
                                                                </span>
                                                            </div>
                                                            <span>{thongTin.NoiDung}</span>
                                                        </div>
                                                    )
                                                })}
                                            </div>

                                            <hr />
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div className={classes.subContainer}>
                                <div className="row">
                                    <div className="col-lg-12 col-md-12">
                                        <div className={classes['box-title']}>
                                            <h3>Giới thiệu về khách sạn</h3>
                                        </div>
                                        <div>
                                            <div dangerouslySetInnerHTML={{ __html: hotel.infor.GioiThieu }} />
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <RecentViews data={reviewHistory} />

                            {similarHotels && (
                                <div className="part">
                                    <div className="part__content">
                                        <h1 className="part__title">Các khách sạn tương tự</h1>

                                        <SliderHotels hotels={similarHotels} />
                                    </div>
                                </div>
                            )}

                            <Rating feedback={hotel.feedbackHotel} infor={hotel.infor} />
                        </>
                    ) : (
                        <NotFound />
                    )}
                </>
            )}
        </React.Fragment>
    )
}
export default Detail

import React from 'react'
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
const Detail = () => {
    return (
        <React.Fragment>
            <div className={classes.spacing}> </div>
            <Search />
            {/* <div className={classes.container}>
                <ImageHotel />
            </div> */}
            <div className={classes.subContainer}>
                <PictureDetail />
            </div>
            <PriceDetail />
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
            <hr className={classes.spacing2} />
            <div id="roomListContainer">
                <RoomsList />
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
                                        <div className={classes.hourPolicy}>Từ 14:00</div>
                                    </div>
                                </div>
                                <div className={classes.hour}>
                                    <div className={classes.CheckInAndOut}>
                                        <div>Trả phòng</div>
                                        <div className={classes.hourPolicy}>Trước 12:00</div>
                                    </div>
                                </div>
                            </div>
                            <div className={classes.hotelPolicyRegular}>
                                <div className={classes.regular}>
                                    <span className={classes.regularTitle}>Chính sách chung</span>
                                    <div className={classes.regularContent}>
                                        <p>Không cho phép hút thuốc</p>
                                        <p>Không cho phép thú cưng</p>
                                        <p>
                                            Hạn chế người Việt Nam và người nước ngoài check-in cùng 1 phòng, nếu không
                                            xuất trình giấy đăng ký kết hôn
                                        </p>
                                    </div>
                                </div>
                                <div className={classes.regular}>
                                    <span className={classes.regularTitle}>Chính sách trẻ em</span>
                                    <div className={classes.regularContent}>
                                        <p>Trẻ em từ 12 tuổi sẽ được xem như người lớn</p>
                                        <p>
                                            Quý khách hàng vui lòng nhập đúng số lượng khách và tuổi để có giá chính
                                            xác.
                                        </p>
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
                                <div className={classes.item}>
                                    <div className={classes.partOfItem}>
                                        <span>
                                            <FontAwesomeIcon icon={faBuilding} />
                                        </span>
                                        <span className={classes.text}>Khoảng cách tới trung tâm</span>
                                    </div>
                                    <span>--:--km</span>
                                </div>
                                <div className={classes.item}>
                                    <div className={classes.partOfItem}>
                                        <span>
                                            <FontAwesomeIcon icon={faPlaneDeparture} />
                                        </span>
                                        <span className={classes.text}>Khoảng cách tới sân bay</span>
                                    </div>
                                    <span>--:--km</span>
                                </div>
                                <div className={classes.item}>
                                    <div className={classes.partOfItem}>
                                        <span>
                                            <FontAwesomeIcon icon={faMapMarkedAlt} />
                                        </span>
                                        <span className={classes.text}>Khoảng cách tới trung tâm thị trấn</span>
                                    </div>
                                    <span>--:--km</span>
                                </div>
                                <div className={classes.item}>
                                    <div className={classes.partOfItem}>
                                        <span>
                                            <FontAwesomeIcon icon={faCalendar} />
                                        </span>
                                        <span className={classes.text}>Năm khách sạn xây dựng</span>
                                    </div>
                                    <span>2018</span>
                                </div>
                                <div className={classes.item}>
                                    <div className={classes.partOfItem}>
                                        <span>
                                            <FontAwesomeIcon icon={faWineGlassAlt} />
                                        </span>
                                        <span className={classes.text}>Số quán bar</span>
                                    </div>
                                    <span>2</span>
                                </div>
                                <div className={classes.item}>
                                    <div className={classes.partOfItem}>
                                        <span>
                                            <FontAwesomeIcon icon={faBed} />
                                        </span>
                                        <span className={classes.text}>Số phòng khách sạn</span>
                                    </div>
                                    <span>80</span>
                                </div>
                                <div className={classes.item}>
                                    <div className={classes.partOfItem}>
                                        <span>
                                            <FontAwesomeIcon icon={faUtensils} />
                                        </span>
                                        <span className={classes.text}>Số nhà hàng</span>
                                    </div>
                                    <span>2</span>
                                </div>
                                <div className={classes.item}>
                                    <div className={classes.partOfItem}>
                                        <span>
                                            <FontAwesomeIcon icon={faRulerCombined} />
                                        </span>
                                        <span className={classes.text}>Số tầng khách sạn</span>
                                    </div>
                                    <span>15</span>
                                </div>
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
                        <p>
                            Khách sạn Vias Vũng Tàu sở hữu vị trí độc đáo nằm đối diện bãi biển Thùy Vân, hứa hẹn mang
                            đến quý khách những giây phút nghỉ ngơi thoải mái. So với tất cả các khách sạn Vũng Tàu nằm
                            cạnh bãi biển, Vias Hotel nổi bật hơn hẳn với kiến trúc sang trọng, nội thất cao cấp đạt
                            tiêu chuẩn quốc tế 4 sao. Điều đầu tiên gây ấn tượng đối với quý khách khi đến khách sạn
                            Vias Vũng Tàu đó chính là cảnh quan bờ biển vô cùng xinh đẹp. Lưu trú tại bất kỳ một trong
                            150 phòng nghỉ sang trọng và phòng suite đẳng cấp của khách sạn, quý khách đều có cơ hội
                            ngắm nhìn khung cảnh biển trời mênh mông, lắng nghe tiếng sóng xô bờ qua khung cửa sổ từ các
                            phòng. Tại sảnh khách sạn có đặt quầy bar sang trọng và một quầy bar phong cách bên hồ bơi
                            để bạn tận hưởng trọn vẹn hương vị đặc sắc của đồ uống bên dòng nước mát trong. Đặc biệt,
                            khách sạn còn sở hữu Serenity Spa, hồ bơi vô cực và thơ mộng đầu tiên tại Vũng Tàu, phòng
                            tập thể thao với đầy đủ trang thiết bị hiện đại giúp quý khách có được những phút giây thư
                            giãn, giải trí tuyệt vời nhất. Ngoài ra, Khách sạn Vias Vũng Tàu còn cung cấp phòng hội thảo
                            cao cấp với đầy đủ trang thiết bị chuyên nghiệp. Nhanh tay gọi ngay 1900 4698 và đặt ngay
                            phòng khách sạn Vũng Tàu để sở hữu phòng giá tốt cùng cơ hội nhận nhiều ưu đãi hấp dẫn và
                            trải nghiệm kỳ nghỉ khó quên giữa không gian biển xanh cát vàng.
                        </p>
                    </div>
                </div>
            </div>

            <RecentViews />
            <div className="part">
                <div className="part__content">
                    <h1 className="part__title">Các khách sạn tương tự</h1>

                    <SliderHotels hotels={notableDes} />
                </div>
            </div>

            <Rating />
        </React.Fragment>
    )
}
export default Detail
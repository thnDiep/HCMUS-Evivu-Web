import React, { useEffect, useState } from 'react'
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'
import { faArrowLeft, faCheckCircle, faStar } from '@fortawesome/free-solid-svg-icons'
import clsx from 'clsx'
import styles from './OrderDetailCard.module.scss'
import moment from 'moment'
import Profile from '../../../Profile/profile'
import Axios from 'axios'

function OrderDetailCard({ MaDatPhong }) {
    const [data, setData] = useState()
    useEffect(() => {
        console.log(MaDatPhong)
        Axios.get('http://localhost:8800/profile/order/detail', { params: { ID: MaDatPhong } })
            .then((response) => {
                console.log(response.data)
                setData(response.data[0])
            })
            .catch((error) => {
                console.log(error)
            })
    }, [])
    console.log(data)
    return (
        <React.Fragment>
            {data && (
                <div className={styles.container}>
                    <div className={styles.checkoutInfo}>
                        {/* <div className={styles.time}>
                        <span>Vui lòng thanh toán trước 22:35, Thứ tư, ngày 03/05/2023</span>
                    </div> */}
                        <div className={styles.info}>
                            <h6 className={styles.title}>Thông tin chuyển khoản</h6>

                            <div className={styles.info__part}>
                                <span className={styles.subTitle}>Ngân hàng</span>
                                <div className="d-flex-js">
                                    <span className={styles.title}>
                                        Ngân hàng TMCP Kỹ Thương Việt Nam – CN Thăng Long
                                    </span>
                                    <img src="https://storage.googleapis.com/tripi-assets/images/banks_list/techcombank_logo.png" />
                                </div>
                            </div>

                            <div className={styles.info__part}>
                                <span className={styles.subTitle}>Số tài khoản</span>
                                <div className="d-flex-js">
                                    <span className={styles.title}>M555P553392</span>
                                    <div className={styles.copy}>
                                        <svg width="16" height="16" fill="none">
                                            <path
                                                d="M12 5.333H6.666c-.736 0-1.333.597-1.333 1.334V12c0 .736.597 1.334 1.333 1.334H12c.736 0 1.333-.598 1.333-1.334V6.667c0-.737-.597-1.333-1.333-1.333z"
                                                stroke="#00B6F3"
                                                strokeWidth="1.2"
                                                strokeLinecap="round"
                                                strokeLinejoin="round"
                                            ></path>
                                            <path
                                                d="M10.667 5.333V4a1.334 1.334 0 00-1.333-1.333H4A1.333 1.333 0 002.667 4v5.333A1.333 1.333 0 004 10.666h1.334"
                                                stroke="#00B6F3"
                                                strokeWidth="1.2"
                                                strokeLinecap="round"
                                                strokeLinejoin="round"
                                            ></path>
                                        </svg>
                                        <span>Sao chép</span>
                                    </div>
                                </div>
                            </div>

                            <div className={styles.info__part}>
                                <span className={styles.subTitle}>Tên chủ tài khoản</span>
                                <div className="d-flex-js">
                                    <span className={styles.title}>Ctcp Du Lich Vn Vntravel H1219655</span>
                                </div>
                            </div>

                            <div className={styles.info__part}>
                                <span className={styles.subTitle}>Số tiền</span>
                                <div className="d-flex-js">
                                    <span className={styles.title}>
                                        {data.TongTien.toLocaleString('vi-VN', {
                                            style: 'currency',
                                            currency: 'VND',
                                        })}{' '}
                                        {/* <sup>₫</sup> */}
                                    </span>
                                    <div className={styles.copy}>
                                        <svg width="16" height="16" fill="none">
                                            <path
                                                d="M12 5.333H6.666c-.736 0-1.333.597-1.333 1.334V12c0 .736.597 1.334 1.333 1.334H12c.736 0 1.333-.598 1.333-1.334V6.667c0-.737-.597-1.333-1.333-1.333z"
                                                stroke="#00B6F3"
                                                strokeWidth="1.2"
                                                strokeLinecap="round"
                                                strokeLinejoin="round"
                                            ></path>
                                            <path
                                                d="M10.667 5.333V4a1.334 1.334 0 00-1.333-1.333H4A1.333 1.333 0 002.667 4v5.333A1.333 1.333 0 004 10.666h1.334"
                                                stroke="#00B6F3"
                                                strokeWidth="1.2"
                                                strokeLinecap="round"
                                                strokeLinejoin="round"
                                            ></path>
                                        </svg>
                                        <span>Sao chép</span>
                                    </div>
                                </div>
                            </div>

                            <div className={styles.info__part}>
                                <span className={styles.subTitle}>Nội dung chuyển khoản</span>
                                <div className="d-flex-js">
                                    <span className={styles.title}>THANHTOAN {data.MaDatPhong}</span>
                                    <div className={styles.copy}>
                                        <svg width="16" height="16" fill="none">
                                            <path
                                                d="M12 5.333H6.666c-.736 0-1.333.597-1.333 1.334V12c0 .736.597 1.334 1.333 1.334H12c.736 0 1.333-.598 1.333-1.334V6.667c0-.737-.597-1.333-1.333-1.333z"
                                                stroke="#00B6F3"
                                                strokeWidth="1.2"
                                                strokeLinecap="round"
                                                strokeLinejoin="round"
                                            ></path>
                                            <path
                                                d="M10.667 5.333V4a1.334 1.334 0 00-1.333-1.333H4A1.333 1.333 0 002.667 4v5.333A1.333 1.333 0 004 10.666h1.334"
                                                stroke="#00B6F3"
                                                strokeWidth="1.2"
                                                strokeLinecap="round"
                                                strokeLinejoin="round"
                                            ></path>
                                        </svg>
                                        <span>Sao chép</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div className={styles.orderInfo}>
                        <div className={styles.hotelImage}>
                            <img src={data.HinhAnhKhachSan} alt="" />
                        </div>
                        <div className={styles.info}>
                            <div className={styles.info__hotel}>
                                <h3 className={styles.title}>{data.TenKhachSan}</h3>

                                <div className={styles.rating}>
                                    <FontAwesomeIcon className={styles.icon} icon={faStar} />
                                    <FontAwesomeIcon className={styles.icon} icon={faStar} />
                                    <FontAwesomeIcon className={styles.icon} icon={faStar} />
                                    <FontAwesomeIcon className={styles.icon} icon={faStar} />
                                </div>

                                <div className={styles.subTitle3}>
                                    <svg width="19" height="16" fill="none">
                                        <path
                                            d="M8 9.333a2 2 0 100-4 2 2 0 000 4z"
                                            stroke="#1A202C"
                                            strokeLinecap="round"
                                            strokeLinejoin="round"
                                        ></path>
                                        <path
                                            d="M11.771 11.105l-2.828 2.828a1.333 1.333 0 01-1.885 0l-2.83-2.828a5.333 5.333 0 117.543 0v0z"
                                            stroke="#1A202C"
                                            strokeLinecap="round"
                                            strokeLinejoin="round"
                                        ></path>
                                    </svg>
                                    <span>{data.DiaChi}</span>
                                </div>

                                <div className={styles.info__time}>
                                    <div className={styles.info__time__part}>
                                        <div className={styles.subTitle2}>Nhận phòng</div>
                                        <div className={styles.subTitle3}>
                                            {' '}
                                            {moment(data.NgayNhanPhong).format('DD/MM/yyyy')}
                                        </div>
                                    </div>

                                    <div className={styles.info__time__part}>
                                        <div className={styles.subTitle2}>Trả phòng</div>
                                        <div className={styles.subTitle3}>
                                            {' '}
                                            {moment(data.NgayTraPhong).format('DD/MM/yyyy')}
                                        </div>
                                    </div>

                                    <div className={styles.info__time__part}>
                                        <div className={styles.subTitle2}>Số đêm</div>
                                        <div className={`${styles.subTitle3} text-center`}>
                                            {' '}
                                            {moment(data.NgayTraPhong).diff(data.NgayNhanPhong, 'days')}
                                        </div>
                                    </div>
                                </div>

                                <div className={styles.subTitle1}>
                                    {' '}
                                    {data.SoLuongPhong}x {data.TenLoaiPhong}
                                </div>

                                <div className={styles.subTitle3}>
                                    <svg width="16" height="16" viewBox="0 0 20 20" fill="none">
                                        <path
                                            d="M1 19v-2a4 4 0 014-4h4a4 4 0 014 4v2m1-17.87a4 4 0 010 7.75M19 19v-2a4 4 0 00-3-3.85M11 5a4 4 0 11-8 0 4 4 0 018 0z"
                                            stroke="#1A202C"
                                            strokeWidth="1.5"
                                            strokeLinecap="round"
                                            strokeLinejoin="round"
                                        ></path>
                                    </svg>
                                    <span>{data.SoNguoi} người</span>
                                </div>

                                <div className={styles.subTitle3}>
                                    <svg width="16" height="16" fill="none">
                                        <path
                                            d="M2.667 7.556V6.222a.889.889 0 01.888-.889h3.556a.889.889 0 01.889.89v1.333"
                                            stroke="#4A5568"
                                            strokeLinecap="round"
                                            strokeLinejoin="round"
                                        ></path>
                                        <path
                                            d="M8 7.556V6.222a.889.889 0 01.889-.889h3.555a.889.889 0 01.89.89v1.333"
                                            stroke="#4A5568"
                                            strokeLinecap="round"
                                            strokeLinejoin="round"
                                        ></path>
                                        <path
                                            d="M2.518 7.556h10.963a1.185 1.185 0 011.186 1.185v2.815H1.333V8.74a1.185 1.185 0 011.185-1.185v0zM1.333 11.556v1.777M14.666 11.556v1.777"
                                            stroke="#4A5568"
                                            strokeLinecap="round"
                                            strokeLinejoin="round"
                                        ></path>
                                        <path
                                            d="M13.333 7.556v-4a.889.889 0 00-.889-.89H3.555a.889.889 0 00-.889.89v4"
                                            stroke="#4A5568"
                                            strokeLinecap="round"
                                            strokeLinejoin="round"
                                        ></path>
                                    </svg>
                                    <span>
                                        {' '}
                                        {data.SoGiuong} {data.TenLoaiGiuong}
                                    </span>
                                </div>

                                <div className={clsx(styles.subTitle3, styles.green)}>
                                    <svg width="16" height="16" fill="none">
                                        <path
                                            d="M11.31 11.976l1.862 1.862M3.241 3.908l4.966 4.965M4.483 2.667L7.586 5.77 5.103 8.253 2 5.149M3.241 13.838l10.552-10.55a5.036 5.036 0 01-1.242 4.965c-2.194 2.194-3.724 2.482-3.724 2.482"
                                            stroke="#48bb78"
                                            strokeMiterlimit="10"
                                            strokeLinecap="round"
                                            strokeLinejoin="round"
                                        ></path>
                                    </svg>
                                    <span>Bữa sáng miễn phí</span>
                                </div>

                                {/* <div className={clsx(styles.subTitle3, styles.green)}>
                                    <svg width="16" height="16" fill="none" class="svgFillAll jss3681">
                                        <path
                                            d="M13.444 6.111H5.667c-.86 0-1.556.696-1.556 1.556v4.666c0 .86.697 1.556 1.556 1.556h7.777c.86 0 1.556-.697 1.556-1.556V7.667c0-.86-.697-1.556-1.556-1.556z"
                                            stroke="#48bb78"
                                            strokeLinecap="round"
                                            strokeLinejoin="round"
                                        ></path>
                                        <path
                                            d="M9.556 11.555a1.556 1.556 0 100-3.11 1.556 1.556 0 000 3.11zM11.889 6.111V4.556A1.556 1.556 0 0010.333 3H2.556A1.556 1.556 0 001 4.556v4.666a1.555 1.555 0 001.556 1.556H4.11"
                                            stroke="#48bb78"
                                            strokeLinecap="round"
                                            strokeLinejoin="round"
                                        ></path>
                                    </svg>
                                    <span>Hủy phòng miễn phí</span>
                                    <svg width="16" height="16" fill="none" class="svgFillAll jss3682">
                                        <path
                                            d="M8 14A6 6 0 108 2a6 6 0 000 12zM8 5.333h.007"
                                            stroke="#48bb78"
                                            strokeLinecap="round"
                                            strokeLinejoin="round"
                                        ></path>
                                        <path
                                            d="M7.333 8H8v2.667h.666"
                                            stroke="#48bb78"
                                            strokeLinecap="round"
                                            strokeLinejoin="round"
                                        ></path>
                                    </svg>
                                </div> */}
                            </div>

                            <div className={styles.info__order}>
                                <div className={styles.info__order__part}>
                                    <h3 className={styles.title}>Thông tin liên hệ</h3>
                                    <div className={styles.content1}>
                                        <span className={styles.subTitle3}>Họ tên:</span>
                                        <span className={styles.subTitle3}>Điện thoại:</span>
                                        <span className={styles.subTitle3}>Email:</span>
                                    </div>
                                    <div className={styles.content2}>
                                        <span className={styles.subTitle2}>{data.TenKhachHang}</span>
                                        <span className={styles.subTitle2}>{data.SoDienThoaiKhachHang}</span>
                                        <span className={styles.subTitle2}>{data.EmailKhachHang}</span>
                                    </div>
                                </div>

                                <div className={styles.info__order__part}>
                                    <h3 className={styles.title}>Yêu cầu đặc biệt</h3>
                                    <div className={styles.content1}>
                                        {/* <span className={styles.subTitle2}>Yêu cầu đặc biệt</span> */}
                                        <span className={styles.subTitle3}>Phòng 1: {data.TenLoaiPhong}</span>
                                        <div className={styles.subTitle3}>
                                            <FontAwesomeIcon className={styles.icon} icon={faCheckCircle} />
                                            <span>1 giường Queen</span>
                                        </div>

                                        <div className="d-flex-js">
                                            <span className={styles.subTitle2}>
                                                Thời gian nhận phòng dự kiến: &nbsp;
                                            </span>
                                            <span className={styles.subTitle3}>
                                                {moment(data.NgayNhanPhong).format('DD/MM/yyyy')}
                                            </span>
                                        </div>
                                    </div>
                                </div>

                                <div className={styles.info__order__part}>
                                    <h3 className={styles.title}>Chi tiết giá</h3>
                                    <div className={clsx(styles.content1, 'flex-1')}>
                                        <div className={styles.price}>
                                            <span>
                                                {' '}
                                                {data.SoLuongPhong} phòng x{' '}
                                                {moment(data.NgayTraPhong).diff(data.NgayNhanPhong, 'days')} đêm
                                            </span>
                                            <span>
                                                {data.Gia.toLocaleString('vi-VN', {
                                                    style: 'currency',
                                                    currency: 'VND',
                                                })}{' '}
                                                {/* <sup>₫</sup> */}
                                            </span>
                                        </div>
                                        {/* <div className={styles.price}>
                                            <span>Phụ phí</span>
                                            <span>
                                                {data.PhuPhi.toLocaleString('vi-VN', {
                                                    style: 'currency',
                                                    currency: 'VND',
                                                })}{' '}
                                                <sup>₫</sup>
                                            </span>
                                        </div> */}
                                        <div className={styles.price}>
                                            <span>Thuế và phí dịch vụ khách sạn</span>
                                            <span>
                                                {data.ThueVaDichVuKhachSan.toLocaleString('vi-VN', {
                                                    style: 'currency',
                                                    currency: 'VND',
                                                })}{' '}
                                                {/* <sup>₫</sup> */}
                                            </span>
                                        </div>
                                        {data.GiamGia > 0 && (
                                            <div className={styles.price}>
                                                <div>
                                                    <span className={styles.green}>Giảm thêm</span>
                                                    <span className={styles.code}>{data.GiamGia} %</span>
                                                </div>
                                                <span className={styles.green}>
                                                    {data.GiamThem.toLocaleString('vi-VN', {
                                                        style: 'currency',
                                                        currency: 'VND',
                                                    })}
                                                </span>
                                            </div>
                                        )}
                                        {/* {data.GiamGia < 0 && (
                                            <div className={styles.price}>
                                                <span className={styles.green}>Chúng tôi khớp giá, giảm thêm</span>
                                                <span className={styles.green}>
                                                    {data.GiamThem.toLocaleString('vi-VN', {
                                                        style: 'currency',
                                                        currency: 'VND',
                                                    })}{' '}
                                                    <sup>₫</sup>
                                                </span>
                                            </div>
                                        )} */}

                                        {data.GiamGiaKhuyenMai < 0 && (
                                            <div className={styles.price}>
                                                <div>
                                                    <span className={styles.green}>Mã giảm giá</span>
                                                    <span className={styles.code}>{data.TenKhuyenMai}</span>
                                                </div>
                                                <span className={styles.green}>
                                                    {data.GiamGiaKhuyenMai.toLocaleString('vi-VN', {
                                                        style: 'currency',
                                                        currency: 'VND',
                                                    })}{' '}
                                                    <sup>₫</sup>
                                                </span>
                                            </div>
                                        )}

                                        {data.GiamGiaFlashSale < 0 && (
                                            <div className={styles.price}>
                                                <div>
                                                    <span className={styles.green}>{data.TieuDeFlashSale}</span>
                                                </div>
                                                <span className={styles.green}>
                                                    {data.GiamGiaFlashSale.toLocaleString('vi-VN', {
                                                        style: 'currency',
                                                        currency: 'VND',
                                                    })}{' '}
                                                    {/* <sup>₫</sup> */}
                                                </span>
                                            </div>
                                        )}

                                        <div className={clsx(styles.price, styles.total)}>
                                            <span className={styles.subTitle2}>Tổng tiền</span>
                                            <span className={styles.subTitle2}>
                                                {data.TongTien.toLocaleString('vi-VN', {
                                                    style: 'currency',
                                                    currency: 'VND',
                                                })}{' '}
                                                {/* <sup>₫</sup> */}
                                            </span>
                                        </div>
                                    </div>
                                </div>

                                {(data.TrangThai === 2 || data.TrangThai === 1) && (
                                    <div className={styles.info__order__part}>
                                        <h3 className={styles.title}>Thanh toán</h3>

                                        <div className={clsx(styles.content1, 'flex-1')}>
                                            <div className={styles.checkout}>
                                                <span>Phương thức thanh toán:&nbsp;</span>
                                                <span className={`ml-5 ${styles.pay}`}>Chuyển khoản ngân hàng</span>
                                            </div>
                                            <div className={styles.checkout}>
                                                <span>Trạng thái</span>
                                                {data.TrangThai === 2 && (
                                                    <span className={clsx(styles.status, styles.success)}>
                                                        Thành công
                                                    </span>
                                                )}
                                                {data.TrangThai === 1 && (
                                                    <span className={clsx(styles.status, styles.success)}>
                                                        Chưa thanh toán
                                                    </span>
                                                )}
                                            </div>
                                        </div>
                                    </div>
                                )}
                            </div>
                        </div>
                    </div>
                </div>
            )}
        </React.Fragment>
    )
}

export default OrderDetailCard

import React, { useState, useReducer } from "react";
import styles from "./Checkout.module.scss"
import { faStar, faCheckCircle, faPen } from '@fortawesome/free-solid-svg-icons'
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome"
import { Checkbox, FormControlLabel } from '@material-ui/core';
import { ButtonPrimary } from "~/components";

const inputReducer = (state, action) => {
    let regex;
    let errorText;
    if (state.type === "email") {
        regex = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/
        errorText = 'Địa chỉ email sai định dạng';
    } else if (state.type === "phone") {
        regex = /^\d{10}$/;
        errorText = 'Số điện thoại không hợp lệ';
    } else {
        regex = /^[a-zA-Z\s]+$/
        errorText = 'Họ và tên chỉ được chứa các ký tự chữ cái và khoảng trắng';
    }
    let value;
    if (action.type === "User_input") {
        value = action.val
    } else if (action.type === "input_blur") {
        value = state.value
    }
    if (value.trim().length === 0) {
        return { value: value, isValid: true, error: "Bạn chưa nhập thông tin", type: state.type };
    } else if (!regex.test(value)) {
        return { value: value, isValid: true, error: errorText, type: state.type };
    }
    return { value: value, isValid: false, error: "", type: state.type }
}
const Checkout = () => {
    const [selectedPayment, setSelectedPayment] = useState('');
    const [check, setCheck] = useState(false)
    const handleCheckboxChange = (event) => {
        setCheck(!check)
    };
    const handleCheckboxPayment = (event) => {
        setSelectedPayment(event.target.value);
    };
    const [emailState, dispatchEmail] = useReducer(inputReducer, { value: '', isValid: false, error: '', type: "email" })
    const [phoneState, dispatchPhone] = useReducer(inputReducer, { value: '', isValid: false, error: '', type: "phone" })
    const [nameState, dispatchName] = useReducer(inputReducer, { value: '', isValid: false, error: '', type: "name" })
    const [nameRecieveState, dispatchNameRecieve] = useReducer(inputReducer, { value: '', isValid: false, error: '', type: "name" })
    // const [phoneState, dispatchPhone] = useReducer(inputReducer, { value: '', isValid: false, error: '' }, inputType: "phone",)
    const emailChangeHandler = (event) => {
        dispatchEmail({ type: 'User_input', val: event.target.value }) // kichs hoat ham emailReducer
    };
    const validateEmailHandler = () => {
        dispatchEmail({ type: 'input_blur' })
    };
    const phoneChangeHandler = (event) => {
        console.log("helo")
        dispatchPhone({ type: 'User_input', val: event.target.value }) // kichs hoat ham phoneReducer
    };
    const validatePhoneHandler = () => {
        dispatchPhone({ type: 'input_blur' })
    };
    const nameChangeHandler = (event) => {
        console.log("helo")
        dispatchName({ type: 'User_input', val: event.target.value }) // kichs hoat ham phoneReducer
    };
    const validateNameHandler = () => {
        dispatchName({ type: 'input_blur' })
    };
    const nameRecieveChangeHandler = (event) => {
        console.log("helo")
        dispatchNameRecieve({ type: 'User_input', val: event.target.value }) // kichs hoat ham phoneReducer
    };
    const validateNameRecieveHandler = () => {
        dispatchNameRecieve({ type: 'input_blur' })
    };
    return (
        <div className={styles.content}>
            <div className={styles.checkout}>
                <div className={styles.infor}>
                    <div className={styles.infor__regulation}>
                        <div className={styles.infor__title}>
                            <div className={styles["infor__title--img"]}>
                                <img style={{ borderRadius: "8px" }}
                                    src="https://img.tripi.vn/cdn-cgi/image/width=320/https://storage.googleapis.com/hms_prod/photo/thumb/455407VAWtMx/dsc00160---resized.jpg"
                                    alt=""
                                />
                            </div>
                            <div className={styles["infor__title--right"]}>
                                <p className={styles["infor__title--name"]}>Sailing Club Signature Resort Phú Quốc</p>
                                <div className={styles["infor__title--star"]}>
                                    <div className={styles["infor__title--rate"]}>
                                        <FontAwesomeIcon className="fa-star" icon={faStar} />
                                        <FontAwesomeIcon className="fa-star" icon={faStar} />
                                        <FontAwesomeIcon className="fa-star" icon={faStar} />
                                    </div>
                                    <span className={styles["infor__title--utilities"]}>
                                        Khu nghỉ dưỡng
                                    </span>
                                </div>
                                <div className={styles["infor__title--address"]}>Tổ 6, Dương Tơ, Phú Quốc, Kiên Giang, Việt Nam</div>
                            </div>
                        </div>
                        <div className={` ${styles.infor__hour}`}>
                            <div style={{ paddingRight: '60px' }} className='d-flex flex-column align-items-start'>
                                <span style={{ fontWeight: '600' }}>Nhận phòng</span>
                                <span className="mt-2">15:00, T3, 02 tháng 5</span>
                            </div>
                            <div style={{ paddingRight: '60px' }} className='d-flex flex-column align-items-start'>
                                <span style={{ fontWeight: '600' }}>Trả phòng</span>
                                <span className="mt-2">15:00, T3, 02 tháng 5</span>
                            </div>
                            <div className='d-flex flex-column align-items-start'>
                                <span style={{ fontWeight: '600' }}>Số đêm</span>
                                <span className="mt-2">1</span>
                            </div>
                        </div>
                        <div className='d-flex flex-column align-items-start mt-3'>
                            <span style={{ fontWeight: '600' }}>Số phòng</span>
                            <span className="mt-2">1 x Castor - 2 Bedrooms Villa, Private Pool</span>
                        </div>
                        <div className='d-flex flex-column align-items-start mt-3'>
                            <span style={{ fontWeight: '600' }}>Đủ chỗ ngủ cho</span>
                            <span className="mt-2">2 người lớn</span>
                        </div>
                    </div>
                    <form>
                        <div className={styles.inforContact}>
                            <p className={styles.nameTitle}>Thông tin liên hệ</p>
                            {/* ho ten */}
                            <div className='d-flex flex-column align-items-start'>
                                <span className={styles.label}>Họ và tên</span>
                                <div className={styles.input}>
                                    <div className={styles.inputName}>
                                        <input type="text" name="name"
                                            value={nameState.value}
                                            className={`${nameState.isValid && styles.inputRed}`}
                                            onChange={nameChangeHandler}
                                            onBlur={validateNameHandler} />
                                    </div>
                                    <p className={styles.error}>{nameState.error}</p>
                                </div>
                            </div>
                            {/* email, so dien thoai */}
                            <div className="d-flex">
                                <div style={{ width: "49%" }}>
                                    <span className={styles.label}>Email</span>
                                    <div className={styles.input}>
                                        <div className={`${styles.inputName} `}>
                                            <input
                                                className={`${emailState.isValid && styles.inputRed}`}
                                                type="text"
                                                name="name"
                                                value={emailState.value}
                                                onChange={emailChangeHandler}
                                                onBlur={validateEmailHandler} />
                                        </div>
                                        <p className={styles.error}>{emailState.isValid && emailState.error}</p>
                                    </div>
                                </div>
                                <div style={{ width: "49%", marginLeft: "2%" }}>
                                    <span className={styles.label}>Số điện thoại</span>
                                    <div className={styles.input}>
                                        <div className={styles.inputName}>
                                            <input
                                                className={`${phoneState.isValid && styles.inputRed}`}
                                                type="text"
                                                onChange={phoneChangeHandler}
                                                value={phoneState.value}
                                                onBlur={validatePhoneHandler}
                                                name="name" />
                                        </div>
                                        <p className={styles.error}>{phoneState.error}</p>
                                    </div>
                                </div>
                            </div>
                            {/* nguoi nhan phong */}
                            <div className={styles.people}>
                                <FormControlLabel
                                    control={<Checkbox checked={check}
                                        icon={<span className='iconCheckBox'></span>}
                                        checkedIcon={<span className='iconCheckBox checked'></span>}
                                        onChange={handleCheckboxChange}
                                    />}
                                />
                                <span className={styles.peopleTitle}>Tôi đặt phòng giúp cho người khác.</span>
                            </div>
                            {check && (<><p className={styles.inforRecieve}>Thông tin khách nhận phòng</p>
                                <div className='d-flex flex-column align-items-start'>
                                    <span className={styles.label}>Họ tên</span>
                                    <div className={styles.input}>
                                        <div className={styles.inputName}>
                                            <input
                                                type="text"
                                                className={`${nameRecieveState.isValid && styles.inputRed}`}
                                                onChange={nameRecieveChangeHandler}
                                                value={nameRecieveState.value}
                                                onBlur={validateNameRecieveHandler}
                                                name="name" />
                                        </div>
                                        <p className={styles.error}>{nameRecieveState.error}</p>
                                    </div>
                                </div></>)}
                        </div>
                    </form>
                    <div className={styles.infor__sale}>
                        <div className={styles.saleLabel}>
                            <svg width="36" height="34" fill="none" style={{ marginRight: "12px" }}>
                                <g filter="url(#icon_promo_code_svg__filter0_d)">
                                    <path
                                        d="M30.25 6H13.625a.881.881 0 00-.62.255l-1.13 1.133-1.13-1.133a.881.881 0 00-.62-.255H5.75C4.786 6 4 6.786 4 7.75V23.5c0 .966.786 1.75 1.75 1.75h4.375a.882.882 0 00.62-.256l1.13-1.132 1.13 1.13a.876.876 0 00.62.258H30.25A1.75 1.75 0 0032 23.5V7.75C32 6.786 31.216 6 30.25 6z"
                                        fill="url(#icon_promo_code_svg__paint0_linear)"></path>
                                    <path
                                        d="M18.875 14.75a2.628 2.628 0 01-2.625-2.625A2.628 2.628 0 0118.875 9.5a2.628 2.628 0 012.625 2.625 2.628 2.628 0 01-2.625 2.625zm0-3.5a.875.875 0 100 1.75.875.875 0 000-1.75zM24.125 21.75a2.628 2.628 0 01-2.625-2.625 2.628 2.628 0 012.625-2.625 2.628 2.628 0 012.625 2.625 2.628 2.628 0 01-2.625 2.625zm0-3.5a.878.878 0 00-.875.875c0 .481.394.875.875.875a.878.878 0 00.875-.875.878.878 0 00-.875-.875zM17.125 21.75a.875.875 0 01-.672-1.435l8.75-10.5a.876.876 0 011.232-.112c.37.31.42.861.11 1.234l-8.75 10.5a.875.875 0 01-.67.313zM12.75 9.5H11v1.75h1.75V9.5zM12.75 20H11v1.75h1.75V20zM12.75 16.5H11v1.75h1.75V16.5zM12.75 13H11v1.75h1.75V13z"
                                        fill="#fff"></path>
                                </g>
                                <defs>
                                    <linearGradient id="icon_promo_code_svg__paint0_linear" x1="18" y1="6" x2="18" y2="25.25"
                                        gradientUnits="userSpaceOnUse">
                                        <stop stopColor="#5BD68E"></stop>
                                        <stop offset="1" stopColor="#48BB78"></stop>
                                    </linearGradient>
                                    <filter id="icon_promo_code_svg__filter0_d" x="-2" y="0" width="40" height="40" filterUnits="userSpaceOnUse"
                                        colorInterpolationFilters="sRGB">
                                        <feFlood floodOpacity="0" result="BackgroundImageFix"></feFlood>
                                        <feColorMatrix in="SourceAlpha" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 127 0"></feColorMatrix>
                                        <feOffset dy="4"></feOffset>
                                        <feGaussianBlur stdDeviation="2"></feGaussianBlur>
                                        <feColorMatrix values="0 0 0 0 0.305882 0 0 0 0 0.764706 0 0 0 0 0.501961 0 0 0 0.15 0"></feColorMatrix>
                                        <feBlend in2="BackgroundImageFix" result="effect1_dropShadow"></feBlend>
                                        <feBlend in="SourceGraphic" in2="effect1_dropShadow" result="shape"></feBlend>
                                    </filter>
                                </defs>
                            </svg>
                            <div>Mã giảm giá</div>
                        </div>
                        <div className={styles.saleName}>
                            <div className={styles.saleNameLabel}>
                                <div className={styles.nameLabelColumn}>
                                    <div className={styles.nameLabelColumnIcon}></div>
                                    <div className={styles.nameLabelColumnIcon}></div>
                                    <div className={styles.nameLabelColumnIcon}></div>
                                    <div className={styles.nameLabelColumnIcon}></div>
                                    <div className={styles.nameLabelColumnIcon}></div>
                                </div>
                                <div className={styles.nameLabelIcon}>
                                    <FontAwesomeIcon icon={faCheckCircle} />
                                </div>
                                <div className={styles.nameLabelTitle}>CHAOHE2023</div>
                            </div>
                            <div className={styles.saleNameEdit}>
                                <FontAwesomeIcon icon={faPen} />
                            </div>
                        </div>

                    </div>
                    <div className={styles.infor__submit}>
                        <p className={styles.nameTitle}>Phương thức thanh toán</p>
                        <p className={styles.inforConfirm}>Sau khi hoàn tất thanh toán, mã xác nhận phòng sẽ được gửi ngay qua SMS và Email của bạn.</p>
                        <div className={styles.payment}>
                            <div className={`checkBoxPayment ${styles.paymentOnl}`}>
                                <div className={styles.paymentTiltle}>
                                    <svg width="32" height="32" fill="none">
                                        <path d="M4 13.5l.5-6 2-1H19l3 1 .5 3V12H11l-1.5 2-.5 6-4.5-1-.5-5.5z"
                                            fill="url(#icon_method_bank_transfer_svg__paint0_linear)"></path>
                                        <path
                                            d="M25.333 12H12a2.667 2.667 0 00-2.667 2.667v8A2.667 2.667 0 0012 25.333h13.333A2.667 2.667 0 0028 22.667v-8A2.667 2.667 0 0025.333 12z"
                                            fill="#fff" stroke="#2D3748" strokeWidth="1.5" strokeLinecap="round" strokeLinejoin="round"></path>
                                        <path
                                            d="M18.667 21.333a2.667 2.667 0 100-5.333 2.667 2.667 0 000 5.333zM22.667 12V9.333A2.667 2.667 0 0020 6.667H6.667A2.667 2.667 0 004 9.333v8A2.667 2.667 0 006.667 20h2.666"
                                            stroke="#2D3748" strokeWidth="1.5" strokeLinecap="round" strokeLinejoin="round"></path>
                                        <defs>
                                            <linearGradient id="icon_method_bank_transfer_svg__paint0_linear" x1="13.25" y1="6.5" x2="13.25" y2="20"
                                                gradientUnits="userSpaceOnUse">
                                                <stop stopColor="#E2E8F0"></stop>
                                                <stop offset="1" stopColor="#CBD5E0"></stop>
                                            </linearGradient>
                                        </defs>
                                    </svg>
                                    <span>Chuyển khoản</span>
                                </div>
                                <FormControlLabel
                                    control={<Checkbox checked={selectedPayment === 'bankTransfer'}
                                        icon={<span className='iconCheckBox'></span>}
                                        checkedIcon={<span className='iconCheckBox checked'></span>}
                                        onChange={handleCheckboxPayment}
                                        value="bankTransfer"
                                    />}
                                />
                            </div>
                            <hr />
                            <div className={`checkBoxPayment ${styles.paymentOnl}`}>
                                <div className={styles.paymentTiltle}>
                                    <svg width="32" height="32" fill="none">
                                        <path d="M4 13.5l.5-6 2-1H19l3 1 .5 3V12H11l-1.5 2-.5 6-4.5-1-.5-5.5z"
                                            fill="url(#icon_method_bank_transfer_svg__paint0_linear)"></path>
                                        <path
                                            d="M25.333 12H12a2.667 2.667 0 00-2.667 2.667v8A2.667 2.667 0 0012 25.333h13.333A2.667 2.667 0 0028 22.667v-8A2.667 2.667 0 0025.333 12z"
                                            fill="#fff" stroke="#2D3748" strokeWidth="1.5" strokeLinecap="round" strokeLinejoin="round"></path>
                                        <path
                                            d="M18.667 21.333a2.667 2.667 0 100-5.333 2.667 2.667 0 000 5.333zM22.667 12V9.333A2.667 2.667 0 0020 6.667H6.667A2.667 2.667 0 004 9.333v8A2.667 2.667 0 006.667 20h2.666"
                                            stroke="#2D3748" strokeWidth="1.5" strokeLinecap="round" strokeLinejoin="round"></path>
                                        <defs>
                                            <linearGradient id="icon_method_bank_transfer_svg__paint0_linear" x1="13.25" y1="6.5" x2="13.25" y2="20"
                                                gradientUnits="userSpaceOnUse">
                                                <stop stopColor="#E2E8F0"></stop>
                                                <stop offset="1" stopColor="#CBD5E0"></stop>
                                            </linearGradient>
                                        </defs>
                                    </svg>
                                    <span>Thanh toán paypall</span>
                                </div>
                                <FormControlLabel
                                    control={<Checkbox checked={selectedPayment === 'paypal'}
                                        icon={<span className='iconCheckBox'></span>}
                                        checkedIcon={<span className='iconCheckBox checked'></span>}
                                        onChange={handleCheckboxPayment}
                                        value="paypal"
                                    />}
                                />
                            </div>
                        </div>
                        <div className={styles.submitButton}>
                            <ButtonPrimary className="btnLarge">Thanh toán</ButtonPrimary>
                            <p>Bằng cách nhấn vào nút này, bạn công nhận mình đã đọc và đồng ý với</p>
                            <p>Điều kiện và Điều khoản của chúng tôi</p>
                        </div>

                    </div>
                </div>
                <div className={styles.room}>
                    <div className={styles.roomInfor}>
                        <span className={styles.nameTitle}>Thông tin phòng</span>
                        <div className={styles.roomInforImg}>
                            <div className={styles.roomInforSale}>
                                <div className={styles.roomInforSaleLabel}>Giảm giá </div> 36%
                            </div>
                            <img src="https://img.tripi.vn/cdn-cgi/image/width=640,height=640/https://storage.googleapis.com/hms_prod/photo/thumb/1616820015154EF/43507457.png" alt="" />
                        </div>
                        <div className={styles.roomDetail}>
                            <span> Deluxe King Room </span>
                            <div className={`mt-2 d-flex justify-content-start`}>
                                <svg width="16" height="16" fill="none">
                                    <path
                                        d="M2 14v-1.333A2.667 2.667 0 014.667 10h2.666A2.667 2.667 0 0110 12.667V14m.667-11.913a2.667 2.667 0 010 5.166M14 14v-1.333a2.667 2.667 0 00-2-2.567M8.667 4.667a2.667 2.667 0 11-5.334 0 2.667 2.667 0 015.334 0z"
                                        stroke="#4A5568" strokeLinecap="round" strokeLinejoin="round"></path>
                                </svg>
                                <div className="mx-3">2 người</div>
                            </div>
                            <div className={`mt-2 d-flex justify-content-start`}>
                                <svg width="16" height="16" fill="none">
                                    <path
                                        d="M2 14v-1.333A2.667 2.667 0 014.667 10h2.666A2.667 2.667 0 0110 12.667V14m.667-11.913a2.667 2.667 0 010 5.166M14 14v-1.333a2.667 2.667 0 00-2-2.567M8.667 4.667a2.667 2.667 0 11-5.334 0 2.667 2.667 0 015.334 0z"
                                        stroke="#4A5568" strokeLinecap="round" strokeLinejoin="round"></path>
                                </svg>
                                <div className="mx-3">Hướng thành phố</div>
                            </div>
                            <div className={`mt-2 d-flex justify-content-start`}>
                                <svg width="16" height="16" fill="none">
                                    <path
                                        d="M2 14v-1.333A2.667 2.667 0 014.667 10h2.666A2.667 2.667 0 0110 12.667V14m.667-11.913a2.667 2.667 0 010 5.166M14 14v-1.333a2.667 2.667 0 00-2-2.567M8.667 4.667a2.667 2.667 0 11-5.334 0 2.667 2.667 0 015.334 0z"
                                        stroke="#4A5568" strokeLinecap="round" strokeLinejoin="round"></path>
                                </svg>
                                <div className="mx-3">1 giường đôi</div>
                            </div>
                            <div className={`mt-2 d-flex justify-content-start`}>
                                <svg width="16" height="16" fill="none">
                                    <path
                                        d="M2 14v-1.333A2.667 2.667 0 014.667 10h2.666A2.667 2.667 0 0110 12.667V14m.667-11.913a2.667 2.667 0 010 5.166M14 14v-1.333a2.667 2.667 0 00-2-2.567M8.667 4.667a2.667 2.667 0 11-5.334 0 2.667 2.667 0 015.334 0z"
                                        stroke="#4A5568" strokeLinecap="round" strokeLinejoin="round"></path>
                                </svg>
                                <div className="mx-3">Không hỗ trợ hoàn hủy</div>
                            </div>
                            <div style={{ color: "#48BB78" }} className={`mt-2 d-flex justify-content-start`}>
                                <svg width="16" height="16" fill="none">
                                    <path
                                        d="M11.31 11.976l1.862 1.862M3.241 3.908l4.966 4.965M4.483 2.667L7.586 5.77 5.103 8.253 2 5.149M3.241 13.838l10.552-10.55a5.036 5.036 0 01-1.242 4.965c-2.194 2.194-3.724 2.482-3.724 2.482"
                                        stroke="#48BB78" strokeMiterlimit="10" strokeLinecap="round" strokeLinejoin="round"></path>
                                </svg>
                                <div className="mx-3">Bữa sáng miễn phí</div>
                            </div>
                        </div>
                    </div>
                    <div className={styles.roomInfor}>
                        <span className={styles.nameTitle}>Chi tiết giá</span>
                        <div className={styles.detailPrice}>
                            <div className={`${styles.columnFlex} ${styles.priceRoom}`}>
                                <span>1 phòng x 1 đêm</span>
                                <span className={styles.priceSale}>
                                    <div className={styles.priceSale1}>
                                        <div className={styles.pricePercent}>-36%</div>
                                        <div className={styles.priceSaleOld}>2.805.195 ₫</div>
                                    </div>
                                    <span>1.800.144 ₫</span>
                                </span>
                            </div>
                            <div className={`${styles.columnFlex} `}>
                                <span className={styles.priceSale1}>Mã giảm giá
                                    <span className={styles.labelSale}>CHAOHE2023</span>
                                </span>
                                <span className={styles.labelPrice}> -72.005 ₫</span>
                            </div>
                            <div className={`${styles.columnFlex} ${styles.afterSale}`}>
                                <span>Giá sau giảm giá</span>
                                <span> 1.728.139 ₫</span>
                            </div>
                            <div className={`${styles.columnFlex} `}>
                                <span>Thuế và phí dịch vụ khách sạn</span>
                                <span> 279.856 ₫</span>
                            </div>
                            <div className={`${styles.columnFlex1} `}>
                                <span>Tổng tiền thanh toán</span>
                                <span>2.007.995 ₫</span>
                            </div>
                            <div className={styles.vat}>Đã bao gồm thuế, phí, VAT</div>
                            <div className={styles.congratulation}>Chúc mừng! Bạn đã tiết kiệm được
                                72.005 ₫</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    )
}
export default Checkout
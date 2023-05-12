/* eslint-disable no-lone-blocks */
import React, { useState, useRef, useEffect } from 'react'
import clsx from 'clsx'
import TitleLinkButton from '~/components/Button/TitleButton'
import { Tag, NavBar, DropdownButton, DropdownOption } from '~/components'
import { Table } from 'react-bootstrap'
import styles from './OrderManagement.module.scss'

import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'
import Swal from 'sweetalert2'
import withReactContent from 'sweetalert2-react-content'
import OrderDetailCard from '~/pages/Hotelier/OrderManagement/OrderDetailCard/OrderDetailCard'
import FooterPaging from '~/components/FooterPaging/FooterPaging'
import { useNavigate } from 'react-router-dom'
import Axios from 'axios'

const MySwal = withReactContent(Swal)
function HotelTable() {
    const [enteredPendingBtn, setEnteredPendingBtn] = useState(false)
    // khi nhấn nút xóa của 1 thẻ
    const [enteredDel, setEnteredDel] = useState(false)
    const [enteredDel1, setEnteredDel1] = useState(false)
    const [data, setData] = useState(null)
    const [option, setOption] = useState([])
    useEffect(() => {
        Axios.get('http://localhost:8800/cks/order', { params: { idCKS: 1 } })
            .then((response) => {
                setData(response.data.orders[0])
                console.log(response.data.orders[0])
                setOption([
                    {
                        name: 'Xóa',
                        handle: function () {},
                    },
                ])
            })
            .catch((error) => {
                console.log(error)
            })
    }, [])

    const handleButtonClick = () =>
        MySwal.fire({
            title: 'Đơn hàng',
            html: <OrderDetailCard />,
            showCloseButton: true,
            showConfirmButton: false,
            width: '784px',
            height: '530px',
            backdrop: '#fffff',
        })

    const pendingBtnChangeHandler = () => {
        setEnteredPendingBtn(!enteredPendingBtn)
    }
    const del1ChangeHandler = () => {
        setEnteredDel1(!enteredDel1)
    }
    const btnChangeHandler = (e) => {
        e.stopPropagation()
        pendingBtnChangeHandler()
    }
    const numberFormat = new Intl.NumberFormat('vi-VN', {
        style: 'currency',
        currency: 'VND',
    })
    return (
        <div className={styles.tableWrapper}>
            <Table responsive className={styles.cusTable}>
                <thead>
                    <tr>
                        <th className={styles.center}>
                            <input type="checkbox" className={styles.checkBox} />
                        </th>
                        <th>
                            <h3 className={styles.title}>Khách hàng</h3>
                        </th>
                        <th>
                            <h3 className={styles.title}>Tên khách sạn</h3>
                        </th>
                        <th>
                            <h3 className={styles.title}>Loại phòng</h3>
                        </th>
                        <th>
                            <h3 className={styles.title}>Ngày nhận phòng</h3>
                        </th>
                        <th>
                            <h3 className={styles.title}>Ngày trả phòng</h3>
                        </th>
                        <th>
                            <h3 className={styles.title}>Số điện thoại</h3>
                        </th>
                        <th>
                            <h3 className={styles.title}>Số tiền thanh toán</h3>
                        </th>
                        <th>
                            <h3 className={styles.title}>Trạng thái</h3>
                        </th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    {data &&
                        data.map((data) => {
                            return (
                                <tr className={styles.memberRow} onClick={handleButtonClick}>
                                    <td className={styles.center}>
                                        <input type="checkbox" className={styles.checkBox} />
                                    </td>
                                    <td>
                                        <div className="d-flex-js">
                                            <img src={data.HinhAnh} />
                                            <div className={styles.text1}>
                                                <span className={styles.codeOrder}>#{data.MaDatPhong}</span>
                                                <h4>{data.HoTen}</h4>
                                                <br />
                                            </div>
                                        </div>
                                    </td>
                                    <td>
                                        <span className={`${styles.text2} text-left`}>{data.Ten}</span>
                                    </td>
                                    <td>
                                        <span className={`${styles.text2} text-left`}>{data.TenLoaiPhong}</span>
                                    </td>

                                    <td>
                                        <span className={styles.date}>
                                            {new Date(data.NgayNhanPhong).toLocaleDateString('en-SG', {
                                                day: '2-digit',
                                                month: '2-digit',
                                                year: 'numeric',
                                            })}
                                        </span>
                                    </td>
                                    <td>
                                        <span className={styles.date}>
                                            {new Date(data.NgayTraPhong).toLocaleDateString('en-SG', {
                                                day: '2-digit',
                                                month: '2-digit',
                                                year: 'numeric',
                                            })}
                                        </span>
                                    </td>
                                    <td>
                                        <span className={styles.text2}>{data.SoDienThoai}</span>
                                    </td>
                                    <td>
                                        <h3 className={clsx(styles.text1, styles.primary)}>
                                            {numberFormat.format(data.TongTien).replace('₫', '')}
                                            <sup>VND</sup>
                                        </h3>
                                    </td>
                                    <td>
                                        <button className={styles.btnPending} onClick={btnChangeHandler}>
                                            <div
                                                className={clsx(
                                                    'btn-1',
                                                    {
                                                        active: enteredPendingBtn && data.TrangThai === 0,
                                                        pending: !enteredPendingBtn && data.TrangThai === 1,
                                                    },
                                                    styles.statusPending,
                                                    !enteredPendingBtn && styles.statusPending1,
                                                )}
                                            >
                                                {enteredPendingBtn ? 'Đã duyệt' : 'Chờ duyệt'}
                                            </div>
                                        </button>
                                    </td>
                                    <td className={`${styles.relative} ${styles.btnDotted}`}>
                                        <DropdownOption />
                                    </td>
                                </tr>
                            )
                        })}
                </tbody>
            </Table>
            <FooterPaging />
        </div>
    )
}
const OrderManagement = () => {
    return (
        <div className={styles.content}>
            <div className="mt-4 d-flex justify-content-between align-items-center ">
                <div className="card-action coin-tabs mb-2">
                    <ul className="nav nav-tabs nav" role="tablist">
                        <li className="nav-item nav-item">
                            <TitleLinkButton name="Tất cả" className="btnChoose" active="active"></TitleLinkButton>
                        </li>
                        <li className="nav-item nav-item">
                            <TitleLinkButton name="Đã duyệt" className="btnChoose"></TitleLinkButton>
                        </li>
                        <li className="nav-item nav-item">
                            <TitleLinkButton name="Chờ duyệt" className="btnChoose"></TitleLinkButton>
                        </li>
                        <li className="nav-item nav-item">
                            <TitleLinkButton name="Đã xóa" className="btnChoose"></TitleLinkButton>
                        </li>
                    </ul>
                </div>
                <div className="d-flex align-items-center mb-2">
                    <div className="input-group">
                        <div id="search-autocomplete" className="form-outline">
                            <input type="search" id="form1" className={`form-control ${styles.form1}`} />
                        </div>
                        <button type="button" className={`btn btn-primary ${styles.btnSearch}`}>
                            <i className="fas fa-search"></i>
                        </button>
                    </div>
                </div>
            </div>
            <div className="row mt-4">
                <div className="col-xl-12">
                    <div className="card">
                        <div className="card-body p-0">
                            <div className="table-responsive">
                                <div id="room_wrapper" className="dataTables_wrapper no-footer">
                                    <HotelTable />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    )
}

export default OrderManagement

import React from 'react'
import clsx from 'clsx'
import TitleButton from '~/components/Button/TitleButton'
import { ButtonPrimary } from '~/components'
import { Tag, NavBar, DropdownButton, DropdownOption } from '~/components'
import { Table } from 'react-bootstrap'
import styles from './OrderManagement.module.scss'
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'
import { faTrash } from '@fortawesome/free-solid-svg-icons'
function HotelTable() {
    return (
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
                        <h3 className={styles.title}>Ngày đặt phòng</h3>
                    </th>
                    <th>
                        <h3 className={styles.title}>Ngày nhận phòng</h3>
                    </th>
                    <th>
                        <h3 className={styles.title}>Ngày trả phòng</h3>
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
                <tr className={styles.memberRow}>
                    <td className={styles.center}>
                        <input type="checkbox" className={styles.checkBox} />
                    </td>
                    <td>
                        <div className="d-flex-js">
                            <img src="https://i.pinimg.com/originals/2e/35/a6/2e35a66dc08e778e1b7fb130c9cc026e.jpg" />
                            <div className={styles.text1}>
                                <h4>Phạm Thị Thanh Thảo</h4>
                                <br />
                                <span>#EMP-00025</span>
                            </div>
                        </div>
                    </td>
                    <td>
                        <span className={styles.text2}>Oct 30th 2022</span>
                    </td>
                    <td>
                        <span className={styles.date}>Nov 2th, 2022</span>
                    </td>
                    <td>
                        <span className={styles.date}>Nov 4th, 2022</span>
                    </td>

                    <td>
                        <span className={styles.text2}>1.500.000 VND</span>
                    </td>
                    <td>
                        <div className={clsx('btn-1', 'active', styles.status)}>Đã duyệt</div>
                    </td>
                    <td>
                        <FontAwesomeIcon icon={faTrash} className={styles.icon} />
                    </td>
                </tr>
                <tr className={styles.memberRow}>
                    <td className={styles.center}>
                        <input type="checkbox" className={styles.checkBox} />
                    </td>
                    <td>
                        <div className="d-flex-js">
                            <img src="https://i.pinimg.com/originals/2e/35/a6/2e35a66dc08e778e1b7fb130c9cc026e.jpg" />
                            <div className={styles.text1}>
                                <h4>Phạm Thị Thanh Thảo</h4>
                                <br />
                                <span>#EMP-00025</span>
                            </div>
                        </div>
                    </td>
                    <td>
                        <span className={styles.text2}>Oct 30th 2022</span>
                    </td>
                    <td>
                        <span className={styles.date}>Nov 2th, 2022</span>
                    </td>
                    <td>
                        <span className={styles.date}>Nov 4th, 2022</span>
                    </td>

                    <td>
                        <span className={styles.text2}>1.500.000 VND</span>
                    </td>
                    <td>
                        <div className={clsx('btn-1', 'pending', styles.status)}>Chờ duyệt</div>
                    </td>
                    <td>
                        <FontAwesomeIcon icon={faTrash} className={styles.icon} />
                    </td>
                </tr>
                <tr className={styles.memberRow}>
                    <td className={styles.center}>
                        <input type="checkbox" className={styles.checkBox} />
                    </td>
                    <td>
                        <div className="d-flex-js">
                            <img src="https://i.pinimg.com/originals/2e/35/a6/2e35a66dc08e778e1b7fb130c9cc026e.jpg" />
                            <div className={styles.text1}>
                                <h4>Phạm Thị Thanh Thảo</h4>
                                <br />
                                <span>#EMP-00025</span>
                            </div>
                        </div>
                    </td>
                    <td>
                        <span className={styles.text2}>Oct 30th 2022</span>
                    </td>
                    <td>
                        <span className={styles.date}>Nov 2th, 2022</span>
                    </td>
                    <td>
                        <span className={styles.date}>Nov 4th, 2022</span>
                    </td>

                    <td>
                        <span className={styles.text2}>1.500.000 VND</span>
                    </td>
                    <td>
                        <div className={clsx('btn-1', 'blocked', styles.status)}>Đã xóa</div>
                    </td>
                </tr>
            </tbody>
        </Table>
    )
}
const OrderManagement = () => {
    return (
        <div className={styles.content}>
            <div className="mt-4 d-flex justify-content-between align-items-center ">
                <div className="card-action coin-tabs mb-2">
                    <ul className="nav nav-tabs nav" role="tablist">
                        <li className="nav-item nav-item">
                            <TitleButton name="Tất cả" className="btnChoose" active="active"></TitleButton>
                        </li>
                        <li className="nav-item nav-item">
                            <TitleButton name="Chờ duyệt" className="btnChoose"></TitleButton>
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

import { Table } from 'react-bootstrap'
import { useState, useRef, useEffect } from 'react'
import clsx from 'clsx'
import { Tag, NavBar, DropdownButton, DropdownOption } from '~/components'
import styles from './Hotel.module.scss'

function HotelTable() {
    return (
        <Table responsive className={styles.cusTable}>
            <thead>
                <tr>
                    <th className={styles.center}>
                        <input type="checkbox" className={styles.checkBox} />
                    </th>
                    <th>
                        <h3 className={styles.title}>Tên khách sạn</h3>
                    </th>
                    <th>
                        <h3 className={styles.title}>Chủ khách sạn</h3>
                    </th>
                    <th>
                        <h3 className={styles.title}>Địa chỉ</h3>
                    </th>
                    <th>
                        <h3 className={styles.title}>Giá tiêu chuẩn</h3>
                    </th>
                    {/* <th>
                        <h3 className={styles.title}>Tiện nghi</h3>
                    </th> */}
                    <th>
                        <h3 className={styles.title}>Khuyến mãi</h3>
                    </th>
                    <th>
                        <h3 className={styles.title}>Đánh giá</h3>
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
                            <img src="https://travl.dexignlab.com/react/demo/static/media/room4.f452c0a5f4a4a74cef98.jpg" />
                            <div className={styles.text1}>
                                <span>#1</span>
                                <br />
                                <span>Deluxe A-91234</span>
                            </div>
                        </div>
                    </td>
                    <td>
                        <span className={styles.text1}>Nguyễn Văn A</span>
                    </td>
                    <td>
                        <span className={styles.text2}>
                            AC, Shower, Double Bed, Towel, Bathup, Coffee Set, LED TV, Wifi
                        </span>
                    </td>
                    <td className={styles.center}>
                        <h3 className={clsx(styles.text1, styles.primary)}>
                            3.160.143 <sup>VND</sup>
                        </h3>
                    </td>
                    {/* <td>
                        <Tag list={['Ưu đãi chớp nhoáng', 'Hồ bơi vô cực']} vertical />
                    </td> */}
                    <td className={styles.center}>
                        <div className="d-flex-js">
                            <span class={styles.voucherCode}>GIAIPHONG</span>
                            <span class={styles.voucherPercent}>- 1%</span>
                        </div>

                        <div className="d-flex-js" style={{ marginTop: '6px' }}>
                            <span class={styles.voucherCode}>GIAIPHONG</span>
                            <span class={styles.voucherPercent}>- 1%</span>
                        </div>
                    </td>
                    <td>
                        <div className={clsx(styles.point, 'd-flex-js')}>
                            <svg width="21" height="16" fill="none" style={{ marginRight: '3px' }}>
                                <path
                                    fillRule="evenodd"
                                    clipRule="evenodd"
                                    d="M5.825 8.157c.044-.13.084-.264.136-.394.31-.783.666-1.548 1.118-2.264.3-.475.606-.95.949-1.398.474-.616 1.005-1.19 1.635-1.665.27-.202.55-.393.827-.59.019-.015.034-.033.038-.08-.036.015-.078.025-.111.045-.506.349-1.024.68-1.51 1.052A15.241 15.241 0 006.627 4.98c-.408.47-.78.97-1.144 1.474-.182.249-.31.534-.474.818-1.096-1.015-2.385-1.199-3.844-.77.853-2.19 2.291-3.862 4.356-5.011 3.317-1.843 7.495-1.754 10.764.544 2.904 2.041 4.31 5.497 4.026 8.465-1.162-.748-2.38-.902-3.68-.314.05-.92-.099-1.798-.3-2.67a14.842 14.842 0 00-.834-2.567 16.416 16.416 0 00-1.225-2.345l-.054.028c.103.193.21.383.309.58.402.81.642 1.67.8 2.553.152.86.25 1.724.287 2.595.027.648.003 1.294-.094 1.936-.01.066-.018.133-.027.219-1.223-1.305-2.68-2.203-4.446-2.617a9.031 9.031 0 00-5.19.29l-.033-.03z"
                                    fill="#F36"
                                ></path>
                                <path
                                    fillRule="evenodd"
                                    clipRule="evenodd"
                                    d="M10 12.92h-.003c.31-1.315.623-2.627.93-3.943.011-.052-.015-.145-.052-.176a1.039 1.039 0 00-.815-.247c-.082.01-.124.046-.142.135-.044.216-.088.433-.138.646-.285 1.207-.57 2.413-.859 3.62l.006.001c-.31 1.314-.623 2.626-.93 3.942-.011.052.016.145.052.177.238.196.51.285.815.247.082-.01.125-.047.142-.134.044-.215.088-.433.138-.648.282-1.208.567-2.414.857-3.62z"
                                    fill="#F36"
                                ></path>
                                <path
                                    fillRule="evenodd"
                                    clipRule="evenodd"
                                    d="M15.983 19.203s-8.091-6.063-17.978-.467c0 0-.273.228.122.241 0 0 8.429-4.107 17.739.458-.002 0 .282.034.117-.232z"
                                    fill="#F36"
                                ></path>
                            </svg>
                            <span>8.7</span>
                        </div>
                    </td>
                    <td>
                        <div className={clsx('btn-1', 'active', styles.status)}>Hoạt động</div>
                    </td>
                    <td>
                        <DropdownOption list={['Xem khách sạn', 'Xem tiện nghi', 'Liên lạc', 'Gỡ']} />
                    </td>
                </tr>
            </tbody>
        </Table>
    )
}

function Hotel() {
    return (
        <div className={styles.container}>
            <div className={styles.header}>
                <NavBar list={['Tất cả', 'chờ duyệt', 'hoạt động', 'Đã khóa']} />
                <DropdownButton list={['Mới nhất', 'Cũ nhất']} />
            </div>
            <div className={styles.content}>
                <HotelTable />
            </div>
        </div>
    )
}

export default Hotel
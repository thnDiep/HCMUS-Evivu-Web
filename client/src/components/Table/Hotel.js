import { Table } from 'react-bootstrap'
import clsx from 'clsx'
import { useContext, useEffect, useState } from 'react'
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'
import { faStar } from '@fortawesome/free-solid-svg-icons'

import { DropdownOption } from '~/components'
import FooterPaging from '../FooterPaging/FooterPaging'
import styles from './Table.module.scss'
import DataContext from '~/contexts/DataContext'

function HotelTable({ header, option, data, filter }) {
    const [page, setPage] = useState(1)
    const [totalPage, setTotalPage] = useState()
    const [hotels, setHotels] = useState(data)
    const context = useContext(DataContext)

    useEffect(() => {
        if (data) {
            let result
            if (filter === 0) {
                result = data
                let total = Math.floor(data.length / 4)
                if (data.length % 4 !== 0) total++
                setTotalPage(total)
            } else {
                const hotels = data.filter((item) => item.TrangThai === filter - 1)
                result = hotels
                let total = Math.floor(hotels.length / 4)
                if (hotels.length % 4 !== 0) total++
                setTotalPage(total)
            }

            result.map((hotel) => {
                const CKS = context.data.users.find((item) => item.ID === hotel.ChuKhachSan.ID)
                if (CKS.TrangThai === 0) {
                    hotel.disableActive = true
                }
            })

            console.log(result)
            setHotels(result)
        }
    }, [data, filter])

    return (
        <div className={styles.tableWrapper}>
            <Table responsive className={styles.cusTable}>
                <thead>
                    <tr>
                        <th className={styles.center}>
                            <input type="checkbox" className={styles.checkBox} />
                        </th>
                        {header &&
                            header.map((item, index) => (
                                <th key={index}>
                                    <h3 className={styles.title}>{item}</h3>
                                </th>
                            ))}
                    </tr>
                </thead>
                <tbody>
                    {hotels &&
                        hotels.slice((page - 1) * 4, page * 4).map((hotel, index) => (
                            <tr key={index} className={styles.memberRow}>
                                <td className={styles.center}>
                                    <input type="checkbox" className={styles.checkBox} />
                                </td>
                                <td style={{ width: '300px' }}>
                                    <div className="d-flex-js">
                                        <div
                                            style={{ backgroundImage: `url(${hotel.HinhAnh})` }}
                                            className={styles.img}
                                        ></div>
                                        <div className={styles.text1} style={{ maxWidth: '180px' }}>
                                            <span>#{hotel.ID}</span>
                                            <br />
                                            <span>{hotel.Ten}</span>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <span className={styles.text1}>{hotel.ChuKhachSan.HoTen}</span>
                                </td>
                                <td style={{ width: '250px' }}>
                                    <span className={styles.text2}>{hotel.DiaChi}</span>
                                </td>
                                {/* <td className={styles.center}>
                                            <h3 className={clsx(styles.text1, styles.primary)}>
                                                {hotel.price} <sup>VND</sup>
                                            </h3>
                                        </td> */}
                                <td>
                                    <div className="d-flex-js">
                                        <h3 className={clsx(styles.text1)}>{hotel.soSao}</h3>
                                        <FontAwesomeIcon icon={faStar} className={styles.icon} />
                                    </div>
                                </td>
                                {/* <td className={styles.center}>
                                            {hotel.vouchers &&
                                                hotel.vouchers.slice(0, 2).map((voucher, index) => (
                                                    <div className="d-flex-js" style={{ marginBottom: '6px' }}>
                                                        <span class={styles.voucherCode}>{voucher.name}</span>
                                                        <span class={styles.voucherPercent}>{voucher.percent}%</span>
                                                    </div>
                                                ))}
                                        </td> */}
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
                                        <span>{hotel.DanhGia || 0}</span>
                                    </div>
                                </td>
                                <td>
                                    {hotel.TrangThai === 0 && (
                                        <div className={clsx('btn-1', 'pending', styles.status)}>Chờ duyệt</div>
                                    )}
                                    {hotel.TrangThai === 1 && (
                                        <div className={clsx('btn-1', 'active', styles.status)}>Hoạt động</div>
                                    )}
                                    {hotel.TrangThai === 2 && (
                                        <div className={clsx('btn-1', 'blocked', styles.status)}>Bị khóa</div>
                                    )}
                                    {hotel.TrangThai === 3 && (
                                        <div className={clsx('btn-1', 'stoped', styles.status)}>Tạm ngưng</div>
                                    )}
                                </td>
                                <td>
                                    <DropdownOption
                                        list={option}
                                        idActive={hotel.ID}
                                        phoneActive={hotel.ChuKhachSan.SoDienThoai}
                                        disables={[false, false, false, false, hotel.disableActive]}
                                        hides={[
                                            false,
                                            false,
                                            hotel.TrangThai !== 0,
                                            hotel.TrangThai !== 1 && hotel.TrangThai !== 3,
                                            hotel.TrangThai !== 2,
                                        ]}
                                    />
                                </td>
                            </tr>
                        ))}
                </tbody>
            </Table>
            <FooterPaging curPage={page} handleChangePage={setPage} totalPage={totalPage} />
        </div>
    )
}

export default HotelTable

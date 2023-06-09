import { Checkbox, FormControlLabel } from '@material-ui/core'
import styles from './CheckFacility.module.scss'
import 'animate.css'
import { useEffect, useState } from 'react'
import axios from 'axios'
const AllNhan = [
    {
        ID: 1,
        Ten: 'Ưu đãi chớp nhoáng',
    },
    {
        ID: 2,
        Ten: 'Giá cực tốt',
    },
    {
        ID: 3,
        Ten: 'Khách sạn yêu thích',
    },
    {
        ID: 4,
        Ten: 'Vị trí đẹp',
    },
    {
        ID: 5,
        Ten: 'Giá độc quyền',
    },
]
const CheckFacility = (props) => {
    const handleCheckboxChangeTienNghi = (event, index) => {
        const { checked } = event.target

        props.handleChangeTienNghi((prevTienNghi) => {
            const newTienNghi = prevTienNghi.map((tienNghi, i) => {
                const newTN = tienNghi.TienNghi.map((check) =>
                    check.ID === index ? { ...check, checked: checked } : check,
                )
                return { ...tienNghi, TienNghi: newTN }
            })
            return newTienNghi
        })
    }
    const handleCheckboxChangeUuDai = (event, index) => {
        const { checked } = event.target

        props.handleChangeUuDai((prevUuDai) =>
            prevUuDai.map((UuDai, i) => (i === index ? { ...UuDai, checked } : UuDai)),
        )
    }
    const handleCheckboxChangeNhan = (event, index) => {
        const value = event.target.value
        props.handleChangeNhan(value)
    }
    const handleCheckboxChangeUseFull = (event, index) => {
        const value = event.target.value
        props.handleChangeThongTin((prevThongTin) =>
            prevThongTin.map((ThongTin, i) => (i === index ? { ...ThongTin, NoiDung: value.toString() } : ThongTin)),
        )
    }
    return (
        <div className={`animate__animated animate__fadeInRight ${styles.content}`} style={{ display: props.display }}>
            <div className={`${styles.chooseTitle} `}>
                Chọn các loại tiện nghi<span>*</span>
            </div>
            {props.tienNghi !== null &&
                props.tienNghi.map((data, index1) => {
                    return (
                        <div key={data.ID}>
                            <div className={styles.chooseTitle1}>{data.TenLoai}</div>
                            <div className={`row mt-3 ${styles.card}`}>
                                {data.TienNghi.map((tienNghi, index) => {
                                    return (
                                        <div
                                            key={tienNghi.ID}
                                            className={`CheckFacility__inline col-4 ${styles.inline} `}
                                        >
                                            <FormControlLabel
                                                control={
                                                    <Checkbox
                                                        checked={tienNghi.checked}
                                                        icon={<span className="iconCheckBox"></span>}
                                                        checkedIcon={<span className="iconCheckBox checked"></span>}
                                                        value={tienNghi.TenTienNghi}
                                                        onChange={(event) =>
                                                            handleCheckboxChangeTienNghi(event, tienNghi.ID)
                                                        }
                                                    />
                                                }
                                            />
                                            <span className={styles.title}>{tienNghi.TenTienNghi}</span>
                                        </div>
                                    )
                                })}
                            </div>
                        </div>
                    )
                })}
            {!props.check ? (
                <>
                    <div className={` ${styles.chooseTitle}`}>
                        Chọn nhãn<span>*</span>
                    </div>
                    <div className={`row mt-3 ${styles.card}`}>
                        {AllNhan.map((nhan1, index) => {
                            return (
                                <div key={index} className={`CheckFacility__inline col-4 ${styles.inline}`}>
                                    <FormControlLabel
                                        control={
                                            <Checkbox
                                                checked={nhan1.Ten === props.nhan ? true : false}
                                                icon={<span className="iconCheckBox"></span>}
                                                checkedIcon={<span className="iconCheckBox checked"></span>}
                                                value={nhan1.Ten}
                                                onChange={handleCheckboxChangeNhan}
                                            />
                                        }
                                    />
                                    <span className={styles.title}>{nhan1.Ten}</span>
                                </div>
                            )
                        })}
                    </div>
                    <div className={` ${styles.chooseTitle}`}>
                        Thông tin hữu ích<span>*</span>
                    </div>
                    <div className="row mt-3">
                        {props.thongTin !== null &&
                            props.thongTin.map((data, index) => {
                                return (
                                    <div key={index} className="col-4 ">
                                        <div className={styles.chooseTitle1}>{data.ThongTin}</div>
                                        <div className={`${styles.card1}`}>
                                            <input
                                                onChange={(event) => handleCheckboxChangeUseFull(event, index)}
                                                className={styles.input}
                                                type="number"
                                                name="name"
                                                value={data.NoiDung}
                                            />
                                            <span dangerouslySetInnerHTML={{ __html: data.HinhAnh }} />
                                        </div>
                                    </div>
                                )
                            })}
                    </div>
                </>
            ) : (
                <>
                    <div className={`${styles.chooseTitle} `}>
                        Chọn các loại ưu đãi của phòng<span>*</span>
                    </div>
                    <div className={`row mt-3 ${styles.card}`}>
                        {props.uuDai !== null &&
                            props.uuDai.map((uuDai, index) => {
                                return (
                                    <div key={index} className={`CheckFacility__inline col-4 ${styles.inline}`}>
                                        <FormControlLabel
                                            control={
                                                <Checkbox
                                                    checked={uuDai.checked}
                                                    icon={<span className="iconCheckBox"></span>}
                                                    checkedIcon={<span className="iconCheckBox checked"></span>}
                                                    value={uuDai.NoiDung}
                                                    onChange={(event) => handleCheckboxChangeUuDai(event, index)}
                                                />
                                            }
                                        />
                                        <span className={styles.title}>{uuDai.NoiDung}</span>
                                    </div>
                                )
                            })}
                    </div>
                </>
            )}
        </div>
    )
}
export default CheckFacility

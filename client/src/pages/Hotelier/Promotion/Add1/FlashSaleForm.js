import React, { useRef, useState } from 'react'
import clsx from 'clsx'
import DatePicker from 'react-datepicker'
import 'react-datepicker/dist/react-datepicker.css'
import styles from '../Promotion.module.scss'
import './datetime.scss'
import { vi } from 'date-fns/locale'

function FlashSaleForm({ data, onEdit }) {
    function handleChange(e, type) {
        if (type === 'BatDau' || type === 'KetThuc' || type === 'IDKhungGio') {
            onEdit({ errors: { ...data.errors, [type]: null }, fields: { ...data.fields, [type]: e } })
            return
        }
        onEdit({ errors: { ...data.errors, [type]: null }, fields: { ...data.fields, [type]: e.target.value } })
    }

    return (
        <React.Fragment>
            {/* Tiêu đề */}
            <div className={styles.form__part}>
                <div className={styles.form__input}>
                    <span className={styles.title}>
                        Tiêu đề <sup>*</sup>
                    </span>
                    <input
                        type="text"
                        placeholder="FlashSale bùng nổ ngày hè"
                        className={clsx({ [styles.error]: data.errors.TieuDe })}
                        value={data.fields.TieuDe || ''}
                        onChange={(e) => handleChange(e, 'TieuDe')}
                    />
                    <span className={styles.form__error}>{data.errors.TieuDe}</span>
                </div>
            </div>

            {/* Phần trăm khuyến mãi */}
            <div className={clsx(styles.form__part, 'd-flex')}>
                <div className={styles.form__input}>
                    <span className={styles.title}>
                        Phần trăm KM <sup>*</sup>
                    </span>
                    <input
                        type="number"
                        min="1"
                        max="99"
                        placeholder="14"
                        className={clsx({ [styles.error]: data.errors.PhanTramKM })}
                        value={data.fields.PhanTramKM || ''}
                        onChange={(e) => handleChange(e, 'PhanTramKM')}
                    />
                    <span className={styles.form__error}>{data.errors.PhanTramKM}</span>
                </div>
            </div>

            {/* Chọn khung giờ */}
            <div className={styles.form__part}>
                <span className={styles.title}>
                    Khung giờ <sup>*</sup>
                </span>

                <div>
                    <div className={styles.form__input}>
                        <input
                            type="radio"
                            name="time"
                            id="0"
                            checked={data.fields.IDKhungGio === 0}
                            onChange={() => handleChange(0, 'IDKhungGio')}
                        />
                        <label htmlFor="0" className={styles.subTitle}>
                            09:00 - 12:00
                        </label>
                    </div>

                    <div className={styles.form__input}>
                        <input
                            type="radio"
                            name="time"
                            id="1"
                            checked={data.fields.IDKhungGio === 1}
                            onChange={() => handleChange(1, 'IDKhungGio')}
                        />
                        <label htmlFor="1" className={styles.subTitle}>
                            14:00 - 16:00
                        </label>
                    </div>
                    <div className={styles.form__input}>
                        <input
                            type="radio"
                            name="time"
                            id="2"
                            checked={data.fields.IDKhungGio === 2}
                            onChange={() => handleChange(2, 'IDKhungGio')}
                        />
                        <label htmlFor="2" className={styles.subTitle}>
                            19:00 - 23:00
                        </label>
                    </div>
                </div>
            </div>

            {/* Thời gian bắt đầu */}
            <div className={clsx(styles.form__part, 'form')}>
                <div className={styles.form__input}>
                    <span className={styles.title}>
                        Ngày bắt đầu <sup>*</sup>
                    </span>
                    <DatePicker
                        locale={vi}
                        dateFormat="dd/MM/yyyy"
                        minDate={new Date()}
                        className={clsx({ [styles.error]: data.errors.BatDau })}
                        selected={data.fields.BatDau || new Date()}
                        onChange={(e) => handleChange(e, 'BatDau')}
                    />
                    <span className={styles.form__error}>{data.errors.BatDau}</span>
                </div>
            </div>

            {/* Thời gian kết thúc */}
            <div className={clsx(styles.form__part, 'form')}>
                <div className={styles.form__input}>
                    <span className={styles.title}>Ngày kết thúc</span>
                    <DatePicker
                        locale={vi}
                        dateFormat="dd/MM/yyyy"
                        minDate={data.fields.BatDau}
                        className={clsx({ [styles.error]: data.errors.KetThuc })}
                        selected={data.fields.KetThuc || null}
                        onChange={(e) => handleChange(e, 'KetThuc')}
                    />
                    <span className={styles.form__error}>{data.errors.KetThuc}</span>
                </div>
            </div>
        </React.Fragment>
    )
}

export default FlashSaleForm

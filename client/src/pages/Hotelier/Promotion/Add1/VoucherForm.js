import { Editor } from '@tinymce/tinymce-react'
import React, { useRef, useState } from 'react'
import clsx from 'clsx'
import DatePicker from 'react-datepicker'
import 'react-datepicker/dist/react-datepicker.css'
import { vi } from 'date-fns/locale'
import './datetime.scss'
import styles from '../Promotion.module.scss'

function VoucherForm({ data, onEdit }) {
    const editorRef = useRef(null)
    const log = () => {
        if (editorRef.current) {
            console.log(editorRef.current.getContent())
        }
    }

    function handleChange(e, type) {
        if (type === 'start' || type === 'end') {
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
                        placeholder="Khách sạn giảm đến 200K"
                        className={clsx({ [styles.error]: data.errors.title })}
                        value={data.fields.title || ''}
                        onChange={(e) => handleChange(e, 'title')}
                    />
                    <span className={styles.form__error}>{data.errors.title}</span>
                </div>
            </div>

            {/* Mã voucher */}
            <div className="d-flex">
                <div className={clsx(styles.form__part, 'd-flex')}>
                    <div className={styles.form__input}>
                        <span className={styles.title}>
                            Mã Voucher <sup>*</sup>
                        </span>
                        <input
                            type="text"
                            placeholder="CHAOHE23"
                            className={clsx({ [styles.error]: data.errors.voucher })}
                            value={data.fields.voucher || ''}
                            onChange={(e) => handleChange(e, 'voucher')}
                        />
                        <span className={styles.form__error}>{data.errors.voucher}</span>
                    </div>
                </div>

                <div className={styles.form__part}>
                    <div className={styles.form__input}>
                        <span className={styles.title}>
                            Phần trăm KM <sup>*</sup>
                        </span>
                        <input
                            type="number"
                            min="1"
                            max="99"
                            placeholder="14"
                            className={clsx({ [styles.error]: data.errors.percent })}
                            value={data.fields.percent || ''}
                            onChange={(e) => handleChange(e, 'percent')}
                        />
                        <span className={styles.form__error}>{data.errors.percent}</span>
                    </div>
                </div>
            </div>

            <div></div>

            {/* Thời gian bắt đầu */}
            <div className={clsx(styles.form__part, 'form')}>
                <div className={styles.form__input}>
                    <span className={styles.title}>
                        Thời gian bắt đầu <sup>*</sup>
                    </span>
                    <DatePicker
                        locale={vi}
                        dateFormat="dd/MM/yyyy - hh:mm aa"
                        minDate={new Date()}
                        className={clsx({ [styles.error]: data.errors.start })}
                        selected={data.fields.start || new Date()}
                        timeInputLabel="Time:"
                        showTimeInput
                        onChange={(e) => handleChange(e, 'start')}
                    />
                    <span className={styles.form__error}>{data.errors.start}</span>
                </div>
            </div>

            {/* Thời gian kết thúc */}
            <div className={clsx(styles.form__part, 'form')}>
                <div className={styles.form__input}>
                    <span className={styles.title}>Thời gian kết thúc</span>
                    <DatePicker
                        locale={vi}
                        dateFormat="dd/MM/yyyy - hh:mm aa"
                        minDate={data.fields.start}
                        className={clsx({ [styles.error]: data.errors.end })}
                        selected={data.fields.end || null}
                        timeInputLabel="Time:"
                        showTimeInput
                        onChange={(e) => handleChange(e, 'end')}
                    />
                    <span className={styles.form__error}>{data.errors.end}</span>
                </div>
            </div>

            {/* Số lượng */}
            <div className={styles.form__part}>
                <div className={styles.form__input}>
                    <span className={styles.title}>Số lượng giới hạn</span>
                    <input
                        type="number"
                        min="1"
                        max="99"
                        placeholder="14"
                        className={clsx({ [styles.error]: data.errors.number })}
                        value={data.fields.number || ''}
                        onChange={(e) => handleChange(e, 'number')}
                    />
                    <span className={styles.form__error}>{data.errors.number}</span>
                </div>
            </div>

            {/* Mô tả khuyến mãi */}
            <div className={styles.form__part}>
                <div className={styles.form__input}>
                    <span className={styles.title}>Mô tả khuyến mãi</span>
                    <textarea
                        rows={5}
                        value={data.fields.description || ''}
                        onChange={(e) => handleChange(e, 'description')}
                    />
                </div>
            </div>

            {/* Điều kiện & thể lệ chương trình */}
            <div className={styles.form__part}>
                <div className={styles.form__input}>
                    <div>
                        <span className={styles.title} style={{ marginRight: '30px' }}>
                            Điều kiện & thể lệ chương trình
                        </span>
                    </div>
                    <Editor
                        onInit={(evt, editor) => (editorRef.current = editor)}
                        initialValue={data.fields.condition || ''}
                        onChange={(e) => handleChange(e, 'condition')}
                        width="520px"
                        init={{
                            menubar: false,
                            plugins: ['code', 'table', 'link', 'lists'],
                            toolbar: [
                                'undo redo | bold italic underline strikethrough | numlist bullist | alignleft aligncenter alignright| forecolor backcolor | table link image media codesample',
                            ],
                        }}
                    />
                </div>
            </div>
        </React.Fragment>
    )
}

export default VoucherForm

import { useState, useEffect } from 'react'
import { NavLink } from 'react-router-dom'
import styles from './login.module.scss'
import { useNavigate } from 'react-router-dom'
import axios from 'axios'
import Swal from 'sweetalert2'
import withReactContent from 'sweetalert2-react-content'
import { useContext } from 'react'
import DataContext from '~/contexts/DataContext'
import { Link } from 'react-router-dom'

function Login() {
    const MySwal = withReactContent(Swal)
    const user = JSON.parse(localStorage.getItem('user'))
    const Nav = useNavigate()
    const data = JSON.parse(localStorage.getItem('identification'))
    const [valid, setValid] = useState(false)
    const { LoginHandler } = useContext(DataContext)
    const [Data, setData] = useState(() => {
        return { email: '', pass: '', isValid: false }
    })
    const [email, setEmail] = useState(() => {
        return { value: '', error: ' ', isValid: false }
    })

    useEffect(() => {
        const filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/
        if (Data.isValid === true) {
            const identifier = setTimeout(() => {
                if (!filter.test(Data.email)) {
                    setEmail({ ...email, error: 'Email không đúng ' })
                    setValid(false)
                } else if (Data.email.length === 0) {
                    setEmail({ ...email, error: 'Thông tin bắt buộc' })
                    setValid(false)
                } else {
                    setEmail({ ...email, error: ' ' })
                    setValid(true)
                }
            }, 500)
            return () => {
                clearTimeout(identifier)
            }
        }
    }, [Data.email])

    const handleLogin = async (e) => {
        e.preventDefault()
        try {
            if (localStorage.getItem('user') !== undefined) {
                localStorage.removeItem('user')
            }
            const res = await axios.post('http://localhost:8800/auth/login', {
                Email: Data.email,
                MatKhau: Data.pass,
            })
            await LoginHandler(res.data.emailAvailable)
            await Swal.fire('Đăng nhập thành công', 'Nhấn nút để đến trang chủ', 'success')
            Nav(res.data.link)
        } catch (err) {
            await Swal.fire(err.response.data, 'Nhấn nút để thực hiện lại việc đăng nhập', 'error')
        }
    }

    return (
        <div className={styles.wrap}>
            <div className={styles.introduction}>
                <div className={styles.infoWeb}>
                    <Link to="/" className="d-flex">
                        <img
                            className={styles.logo}
                            src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaMgiTOs33abnEsiYTsqGrPaj5JsZJOjS-gQ&usqp=CAU"
                            alt=""
                        />
                        <div>
                            <p className={styles.nameOfWeb}>MyTravel</p>
                            <p className={styles.description}>Hotels at your fingertips</p>
                        </div>
                    </Link>
                </div>
                <p className={styles.title1}>Welcome back!</p>
                <p className={styles.title2}>Solution for a great trip</p>
                <img
                    className={styles.image}
                    src="https://travl.dexignlab.com/react/demo/static/media/pic1.5182ad472b66273c2b70.png"
                />
            </div>
            <div className={styles.triangleDown}></div>
            <div className={styles.triangleUp}></div>
            <div className={styles.login}>
                <div>
                    <p className={styles.title}>Đăng nhập vào tài khoản</p>
                    <div>
                        <label className={styles.label}>
                            Email hoặc số điện thoại
                            <span>*</span>
                        </label>
                        <div>
                            <input
                                className={styles.fieldInput}
                                id="field-name"
                                name="email"
                                type="text"
                                placeholder="Nhập email"
                                onChange={(e) => setData({ ...Data, email: e.target.value, isValid: true })}
                            />
                        </div>
                        <p className={styles.err}>{email.error}</p>
                    </div>
                    <div>
                        <label className={styles.label}>
                            Mật khẩu
                            <span>*</span>
                        </label>
                        <div>
                            <input
                                className={styles.fieldInput}
                                id="field-name"
                                name="password"
                                type="password"
                                placeholder="Nhập mật khẩu"
                                onChange={(e) => setData({ ...Data, pass: e.target.value, isValid: true })}
                            />
                        </div>
                    </div>

                    <button onClick={handleLogin} className={styles.loginBtn}>
                        Đăng nhập
                    </button>

                    <p className={styles.title3}>
                        Bạn không có tài khoản?
                        <NavLink to="/signUp">
                            <span className={styles.signUpLink}>Đăng ký</span>
                        </NavLink>
                    </p>
                </div>
            </div>
        </div>
    )
}

export default Login

import { useState, useEffect, useRef, useContext } from 'react'
import Axios from 'axios'
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'
import { faCheckCircle } from '@fortawesome/free-regular-svg-icons'

import { AccountTable } from '~/components/Table'
import { NavLink, NavHandle, ConformModal } from '~/components'
import DataContext from '~/contexts/DataContext'
import nav from '~/assets/jsons/Navigation/admin.json'
import user from '~/assets/jsons/Admin/user.json'
import styles from './account.module.scss'

// tên, email, sđt, địa chỉ, tên đn, nút hoạt động: hoạt động, khóa
function Account() {
    const [option, setOption] = useState([])

    const [active, setActive] = useState(0)
    const [showBlockModal, setShowBlockModal] = useState(false)
    const [showDeleteModal, setShowDeleteModal] = useState(false)
    const [showInformModal, setShowInformModal] = useState(false)

    const { data, handleData } = useContext(DataContext)
    const [users, setUsers] = useState()
    const [userActive, setUserActive] = useState(null)

    useEffect(() => {
        if (data) {
            setUsers(data.users)
            setOption([
                {
                    name: 'Vô hiệu hóa',
                    handle: function (idActive) {
                        const userActive = data.users.find((key) => key.ID === idActive)
                        setUserActive(userActive)
                        setShowBlockModal(true)
                    },
                },
                {
                    name: 'Bỏ vô hiệu hóa',
                    handle: function (idActive) {
                        handleUpdateState(idActive, 1)
                    },
                },
                {
                    name: 'Xóa',
                    handle: function (idActive) {
                        const userActive = data.users.find((key) => key.ID === idActive)
                        setUserActive(userActive)
                        setShowDeleteModal(true)
                    },
                },
            ])
        }
    }, [data])

    // const [data, setData] = useState([])
    // useEffect(() => {
    //     Axios.get('http://localhost:8800/admin/account')
    //         .then((response) => {
    //             setData(response.data)
    //         })
    //         .catch((error) => {
    //             console.log(error)
    //         })
    // }, [])

    // function updateUser(userActive) {
    //     Axios.post('http://localhost:8800/profile/update', {
    //         info: userActive,
    //     })
    //         .then(() => {
    //             setShowInformModal(true)

    //             window.setTimeout(function () {
    //                 setShowInformModal(false)
    //             }, 1000)

    //             // for (let user of users) {
    //             //     if (user.ID === userActive.ID) {
    //             //         user = userActive
    //             //     }
    //             // }

    //             const index = users.findIndex((item) => item.ID === userActive.ID)
    //             users[index].TrangThai = userActive.TrangThai

    //             setUsers(users)
    //             setUserActive(null)
    //             setShowBlockModal(false)
    //         })
    //         .catch((error) => {
    //             console.log(error)
    //             setShowDeleteModal(false)
    //         })
    // }

    function handleBlockUser() {
        handleUpdateState(userActive.ID, 0)
    }

    function handleUpdateState(idActive, state) {
        Axios.post('http://localhost:8800/profile/update/state', {
            id: idActive,
            state,
        })
            .then(() => {
                setShowInformModal(true)

                window.setTimeout(function () {
                    setShowInformModal(false)
                }, 1000)

                if (data) {
                    const index = data.users.findIndex((item) => item.ID === idActive)
                    data.users[index].TrangThai = state

                    const hotels = data.hotels
                    for (const hotel of hotels) {
                        if (hotel.ChuKhachSan.ID === data.users[index].ID) {
                            if (state === 0) {
                                hotel.TrangThai = 2
                            } else {
                                hotel.TrangThai = 1
                            }
                        }
                    }
                }

                setUsers(data.users)
                handleData({ ...data, users: data.users, hotels: data.hotels })
                setUserActive(null)
                setShowBlockModal(false)
            })
            .catch((error) => {
                console.log(error)
                setShowBlockModal(false)
            })
    }

    function handleDeleteUser() {
        Axios.get('http://localhost:8800/profile/del', { params: { idUser: userActive.ID } })
            .then(() => {
                setShowInformModal(true)

                window.setTimeout(function () {
                    setShowInformModal(false)
                }, 1000)

                const newUsers = users.filter((key) => key.ID !== userActive.ID)
                setUsers(newUsers)
                handleData({ ...data, users: newUsers })
                setUserActive(null)
                setShowDeleteModal(false)
            })
            .catch((error) => {
                console.log(error)
                setShowDeleteModal(false)
            })
    }

    return (
        <div className={styles.container}>
            {/* <NavLink list={nav.accountOfAdmin} /> */}
            <NavHandle list={user.menu} active={active} onActive={setActive} />
            <AccountTable option={option} header={user.header} data={users} filter={active} />

            {/* Xác nhận vô hiệu hóa */}
            <ConformModal
                show={showBlockModal}
                onClose={() => setShowBlockModal(false)}
                onConform={() => handleBlockUser()}
                content={`Bạn chắc chắn muốn vô hiệu hóa người dùng`}
                highlight={userActive && userActive.HoTen}
                conFormBtn="Vô hiệu hóa"
            />

            {/* Xác nhận xóa */}
            <ConformModal
                show={showDeleteModal}
                onClose={() => setShowDeleteModal(false)}
                onConform={() => handleDeleteUser()}
                content={`Bạn chắc chắn muốn xóa người dùng`}
                highlight={userActive && userActive.HoTen}
            />

            {/* Thông báo thành công */}
            {showInformModal && (
                <div id="myModal" className="myModal1">
                    {/* <!-- Modal content --> */}
                    <div className="modalContent">
                        <FontAwesomeIcon icon={faCheckCircle} className="modalIcon" />
                        <div>Thao tác thành công</div>
                    </div>
                </div>
            )}
        </div>
    )
}

export default Account

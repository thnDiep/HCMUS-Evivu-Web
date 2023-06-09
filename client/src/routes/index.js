import Login from '~/pages/Login/login'
import SignUp from '~/pages/SignUp/signUp'
import Home from '~/pages/Home'
import Detail from '~/pages/Detail'
import ListByPlace from '~/pages/ListByPlace'
import Checkout from '~/pages/Checkout'
import SuccessCheckOut from '~/pages/Checkout/SuccessCheckOut'
import { Account, Wishlist, Order, OrderDetail } from '~/pages/Profile'
import { AccountAdmin, HotelAdmin, HomeAdmin } from '~/pages/Admin'
import BlockedAccount from '~/pages/Admin/Account/BlockedAccount'
import ActiveAccount from '~/pages/Admin/Account/ActiveAccount'
import QrPay from '~/pages/QrPay'
import HotelManagement from '~/pages/Hotelier/HotelManagement'
import OrderManagement from '~/pages/Hotelier/OrderManagement/OrderManagement'
import AddHotel from '~/pages/Hotelier/AddHotel'
import RoomManage from '~/pages/Hotelier/RoomManage'
import RegisterPartner from '~/pages/RegisterPartner/RegisterPartner'
import OrderResult from '~/pages/OrderResult'
import AddRoom from '~/pages/Hotelier/RoomManage/AddRoom/AddRoom'
import CommentAboutHotel from '~/pages/CommentAboutHotel/CommentAboutHotel'
import ProfileHotelier from '~/pages/ProfileHotelier/ProfileHotelier'
import { AddPromotion, ManagePromotion } from '~/pages/Hotelier'
import { HomeLayout, QrPayLayout, ManageAdminLayout, HotelierLayout, HomeAdminLayout } from '~/components/Layouts'

import CheckOrder from '~/pages/CheckOrder/CheckOrder'
import NotFound from '~/pages/NotFound'

export const publicRoutes = [
    { path: '/', component: Home, layout: HomeLayout },
    // { path: '/detail', component: Detail },
    // { path: '/listByPlace', component: ListByPlace },

    // Hotel
    { path: '/hotels/detail/:id', component: Detail },
    { path: '/hotels/:diadiem', component: ListByPlace },
    { path: '/hotels', component: ListByPlace },

    { path: '/registerPartner', component: RegisterPartner, layout: null },
    { path: '/login', component: Login, layout: null },
    { path: '/signUp', component: SignUp, layout: null },
    { path: '/checkOrder', component: CheckOrder },
    { path: '/profile/order/:id', component: OrderDetail, layout: HomeLayout },
    { path: '/orderResult/:id', component: OrderResult, layout: HomeLayout },
    { path: '/checkOrder/:id/:active', component: OrderDetail, layout: HomeLayout },

    // //Hotelier - Hotel
    // { path: '/cks/profile', component: ProfileHotelier, layout: HotelierLayout },
    // { path: '/cks/manageHotel', component: HotelManagement, layout: HotelierLayout },
    // { path: '/cks/addHotel', component: AddHotel, layout: HotelierLayout },
    // { path: '/cks/manage-room', component: RoomManage, layout: HotelierLayout },
    // { path: '/cks/manageOrder', component: OrderManagement, layout: HotelierLayout },
    // { path: '/cks/addRoom', component: AddRoom, layout: HotelierLayout },
    // { path: '/cks/addHotel/:active/:id', component: AddHotel, layout: HotelierLayout },
    // { path: '/cks/addRoom/:active/:id', component: AddRoom, layout: HotelierLayout },
    // { path: '/cks/addRoom/:active', component: AddRoom, layout: HotelierLayout },
    // { path: '/cks', component: HotelManagement, layout: HotelierLayout },

    // // Hotelier - Voucher - Add
    // { path: '/cks/voucher/add/:active/:id', component: AddPromotion, layout: HotelierLayout },
    // { path: '/cks/voucher/add/:active', component: AddPromotion, layout: HotelierLayout },
    // { path: '/cks/voucher/add', component: AddPromotion, layout: HotelierLayout },

    // // Hotelier - Voucher - Manage
    // { path: '/cks/voucher/:preActive', component: ManagePromotion, layout: HotelierLayout },
    // { path: '/cks/voucher', component: ManagePromotion, layout: HotelierLayout },

    // // Admin
    // { path: '/admin/account', component: AccountAdmin, layout: ManageLayout },
    // { path: '/admin/account/blocked', component: BlockedAccount, layout: ManageLayout },
    // { path: '/admin/account/active', component: ActiveAccount, layout: ManageLayout },
    // { path: '/admin/hotel', component: HotelAdmin, layout: ManageLayout },
    // { path: '/admin', component: HotelAdmin, layout: ManageLayout },

    // // Not Found
    { path: '/*', component: NotFound, layout: null },
]

export const publicRoutesUser = [
    // Checkout
    { path: '/checkout/:id', component: Checkout, layout: HomeLayout },
    { path: '/checkout/:id/:active', component: Checkout, layout: HomeLayout },
    // { path: '/checkout', component: Checkout, layout: HomeLayout },
    { path: '/checkout/success/:id', component: SuccessCheckOut, layout: HomeLayout },
    { path: '/checkout/QRPay/:id', component: QrPay, layout: QrPayLayout },
    { path: '/checkout/QRPay', component: QrPay, layout: QrPayLayout },
    // Profile
    { path: '/profile', component: Account, layout: HomeLayout },
    { path: '/profile/order', component: Order, layout: HomeLayout },
    { path: '/profile/wish-list', component: Wishlist, layout: HomeLayout },
    { path: '/profile/order/comment/:id', component: CommentAboutHotel, layout: null },
]

export const publicRoutesAdmin = [
    // { path: '/registerPartner', component: RegisterPartner, layout: null },
    // { path: '/login', component: Login, layout: null },
    // { path: '/signUp', component: SignUp, layout: null },
    // Admin
    { path: '/admin/hotels/detail/:id', component: Detail, layout: ManageAdminLayout },
    { path: '/admin/hotels', component: ListByPlace, layout: ManageAdminLayout },
    { path: '/admin/account/active', component: ActiveAccount, layout: ManageAdminLayout },
    { path: '/admin/account/blocked', component: BlockedAccount, layout: ManageAdminLayout },
    { path: '/admin/account', component: AccountAdmin, layout: ManageAdminLayout },
    { path: '/admin/hotel', component: HotelAdmin, layout: ManageAdminLayout },
    { path: '/admin', component: HomeAdmin, layout: HomeAdminLayout },

    // Not Found
    // { path: '/*', component: NotFound, layout: null },
]
export const publicRoutesHotelier = [
    { path: '/registerPartner', component: RegisterPartner, layout: null },
    { path: '/login', component: Login, layout: null },
    { path: '/signUp', component: SignUp, layout: null },
    //Hotelier - Hotel
    { path: '/cks/profile', component: ProfileHotelier, layout: HotelierLayout },
    { path: '/cks/manageHotel', component: HotelManagement, layout: HotelierLayout },
    { path: '/cks/addHotel', component: AddHotel, layout: HotelierLayout },
    { path: '/cks/manage-room', component: RoomManage, layout: HotelierLayout },
    { path: '/cks/manageOrder', component: OrderManagement, layout: HotelierLayout },
    { path: '/cks/addRoom', component: AddRoom, layout: HotelierLayout },
    { path: '/cks/addHotel/:active/:id', component: AddHotel, layout: HotelierLayout },
    { path: '/cks/addRoom/:active/:id', component: AddRoom, layout: HotelierLayout },
    { path: '/cks/addRoom/:active', component: AddRoom, layout: HotelierLayout },
    { path: '/cks', component: HotelManagement, layout: HotelierLayout },

    // Hotelier - Voucher - Add
    { path: '/cks/voucher/add/:active/:id', component: AddPromotion, layout: HotelierLayout },
    { path: '/cks/voucher/add/:active', component: AddPromotion, layout: HotelierLayout },
    { path: '/cks/voucher/add', component: AddPromotion, layout: HotelierLayout },

    // Hotelier - Voucher - Manage
    { path: '/cks/voucher/:preActive', component: ManagePromotion, layout: HotelierLayout },
    { path: '/cks/voucher', component: ManagePromotion, layout: HotelierLayout },
    { path: '/*', component: NotFound, layout: null },
]

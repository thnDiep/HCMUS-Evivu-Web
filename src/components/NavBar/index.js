import clsx from 'clsx'
import { NavLink } from 'react-router-dom'
import styles from './NavBar.module.scss'

function NavBar({ list, noneBorder }) {
    {
        console.log(list[0].exact)
        console.log('haha')
    }

    return (
        <div className={clsx(styles.nav, 'nav')}>
            {Array.isArray(list) &&
                list.map((item, index) => (
                    <NavLink
                        key={index}
                        to={item.link}
                        end={item.exact}
                        className={clsx(styles.navItem, {
                            [styles.noneBorder]: noneBorder,
                        })}
                    >
                        {item.name}
                    </NavLink>
                ))}
        </div>
    )
}

export default NavBar

import classes from "./TitleButton.module.scss"
const TitleButton = (props) => {
    return (<a href={props.link} className={classes[props.className]}>
        {props.children}
        {props.name}
        {props.check && <svg width="10" height="6" fill="none" style={{ stroke: 'rgb(26, 32, 44)', marginLeft: '6px' }}>
            <path d="M1.667 1.333L5 4.667l3.333-3.334" stroke="#1A202C" strokeWidth="1.5" strokeLinecap="round"
                strokeLinejoin="round"></path>
        </svg>}</a>)
}
export default TitleButton
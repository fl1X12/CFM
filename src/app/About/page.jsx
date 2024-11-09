import Image from "next/image"
import styles from "./about.module.css"

export const metadata = {
  title: "About Page",
  description: "About us page",
};

const About = () => {
  return (
    <div className={styles.container}>
        <div className={styles.textContainer}>
          <h1 className={styles.title}> Franchise Management System </h1>
          <p className={styles.desc}>
          A platform that streamlines and simplifies the act of setting up new franchises and managing existing ones, providing tools to both the individual franchise owners as well as the overall business owners by integrating all relevant information in one place. 
          Designed to be able to help the business owners keep track of and compare performances of individual franchises using our financial monitoring capabilities.
          </p>
          <div className={styles.box}>
            <h1> Contact US </h1>
            <p> 
              Name1: no.
              <br></br>
              Name2: no.
            </p>

          </div>
        </div>
    </div>
  )
}

export default About

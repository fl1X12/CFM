import styles from "./home.module.css";
import Image from "next/image";

export default function Home() {
  return (
    <div className={styles.container}> 
            <div className={styles.textContainer}>
                <h1 className={styles.title}> Franchise Management System </h1>
                <p className={styles.desc}>
                Effortlessly manage and scale your franchise network with our Centralized Franchise Management system. Streamline operations and track performance all in one place
                </p>
                <div className={styles.buttons}>
                    <button className={styles.button}>Learn More</button>
                    <button className={styles.button}>Contact</button>
                </div>
                <div className={styles.brands}>
                    
                </div>
            </div>

            <div className={styles.imgContainer}>
                
            </div>
        </div>
  );
}

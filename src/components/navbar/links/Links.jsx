"use client";
import { useState } from "react";
import styles from "./links.module.css";
import NavLink from "./navLink/navLink";
import Image from "next/image";

const links=[
    {
        title:"Homepage",
        path:"/"
    },
    {
        title:"About",
        path:"/About"
    }
];

const Links = () => {
    
    const [open,setOpen]=useState(false);

    const session =false;
    const isAdmin=true;

    return (
    <div className={styles.container}>    
        <div className={styles.links}>
            {links.map((link=>(
                <NavLink item={link} key={link.title}/>
            )))}{
                session ? (
                    <>
                    {
                        isAdmin && (
                            <NavLink item={{title:"Admin",path:"/Admin"}}/>        
                        )
                    }
                    <button className={styles.logout}>Logout</button>
                    </>
                ):(
                    <NavLink item={{title:"Login",path:"/Login"}}/>
                )
            }
        </div>
        <Image className={styles.MenuButton} src="/menu.png" alt="" width={30} height={30} onClick={()=>setOpen((prev)=>!prev)}/>
        {
            open && <div className={styles.mobileLinks}>
                {links.map((link)=>(
                    <NavLink item={link} key={link.title}/>
                ))}
            </div>
        }
    </div>
  )
}

export default Links

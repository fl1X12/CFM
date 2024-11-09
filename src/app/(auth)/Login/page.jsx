"use client";
import { useState } from "react";
import styles from "./Login.module.css";
import { useRouter } from "next/navigation";
import { loginUserAction } from "@/data/actions/loginAction";



const LoginPage = () => {
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const formData=new FormData();
  const handleLogin = (e) => {
    e.preventDefault();
    
    console.log('Email:', email);
    console.log('Password:', password);
    formData.append('email', email);
    formData.append('password',password);
    loginUserAction(formData);
  };

  const router=useRouter();

  return (
    <div className={styles.container}>
      <h1>Login</h1>
      <form onSubmit={handleLogin} className={styles.form}>
        <label htmlFor="email">Email:</label>
        <input
          type="email"
          id="email"
          value={email}
          onChange={(e) => setEmail(e.target.value)}
          required
          className={styles.input}
        />

        <label htmlFor="password">Password:</label>
        <input
          type="password"
          id="password"
          value={password}
          onChange={(e) => setPassword(e.target.value)}
          required
          className={styles.input}
        />

        <button type="submit" className={styles.button}>Login</button>
        <button onClick={()=>{router.push("/Register") }} className={styles.button_register}>Sign Up</button>
      </form>
    </div>
  );
};

export default LoginPage;

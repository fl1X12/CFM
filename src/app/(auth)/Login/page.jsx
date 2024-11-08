"use client";
import { useState } from "react";
import styles from "./Login.module.css";


const LoginPage = () => {
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const handleLogin = (e) => {
    e.preventDefault();
    
    console.log('Email:', email);
    console.log('Password:', password);
  };

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
      </form>
    </div>
  );
};

export default LoginPage;

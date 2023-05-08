import React, { useState } from 'react';
import NavBar from "./NavBar";
import './login.css';

function Login() {
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');

  const handleEmailChange = (e) => {
    setEmail(e.target.value);
  };

  const handlePasswordChange = (e) => {
    setPassword(e.target.value);
  };

  const handleSubmit = (e) => {
    e.preventDefault();
    console.log(`Email: ${email}, Password: ${password}`);
  };

  return (
    <div>    <NavBar />
    <div className="login-page">
      <div className="login-container">
        <h1>Login</h1>
        <form onSubmit={handleSubmit}>
          <label>
            Email:
            <input type="email" value={email} onChange={handleEmailChange} />
          </label>
          <label>
            Password:
            <input type="password" value={password} onChange={handlePasswordChange} />
          </label>
          <button type="submit">Submit</button>
        </form>
        <div className="signup-link">
          Don't have an account? <a href="/signup">Sign up here</a>.
        </div>
      </div>
    </div>
  </div>
  );
}

export default Login;

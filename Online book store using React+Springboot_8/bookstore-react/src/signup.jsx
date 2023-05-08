import React, { useState } from 'react';
import './signup.css';
import NavBar from './NavBar';

function Signup() {
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const [confirmPassword, setConfirmPassword] = useState('');

  const handleEmailChange = (e) => {
    setEmail(e.target.value);
  };

  const handlePasswordChange = (e) => {
    setPassword(e.target.value);
  };

  const handleConfirmPasswordChange = (e) => {
    setConfirmPassword(e.target.value);
  };

  const handleSubmit = (e) => {
    e.preventDefault();
    console.log(`Email: ${email}, Password: ${password}, Confirm Password: ${confirmPassword}`);
  };

  return (
    <div>    <NavBar />
    <div className="signup-page">
      <div className="signup-container">
        <h1>Sign Up</h1>
        <form onSubmit={handleSubmit}>
          <label>
            Email:
            <input type="email" value={email} onChange={handleEmailChange} />
          </label>
          <label>
            Password:
            <input type="password" value={password} onChange={handlePasswordChange} />
          </label>
          <label>
            Confirm Password:
            <input type="password" value={confirmPassword} onChange={handleConfirmPasswordChange} />
          </label>
          <button type="submit">Submit</button>
        </form>
        <div className="login-link">
          Already have an account? <a href="/login">Log in here</a>.
        </div>
      </div>
    </div>
    </div>
  );
}

export default Signup;

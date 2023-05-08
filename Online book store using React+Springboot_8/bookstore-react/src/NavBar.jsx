import React from 'react'

import Container from 'react-bootstrap/Container';
import Nav from 'react-bootstrap/Nav';
import Navbar from 'react-bootstrap/Navbar';

import './navbar.css';

const NavBar = () => {
  return (
    <Navbar bg="dark" expand="lg" variant='dark' className="navbar-custom">
      <Container>
        <Navbar.Brand href="#home">
          <span className='fw-bold'>Online VIT Bookstore</span>
          <img src="./images/booklogo.png" alt="asd" className='nav-book-icon' />
        </Navbar.Brand>
        <Navbar.Toggle aria-controls="basic-navbar-nav" />
        <Navbar.Collapse className="justify-content-end" id="basic-navbar-nav">
          <Nav.Link href="/home">Home</Nav.Link>
          <Nav.Link href="/signup">Signup</Nav.Link>
          <Nav.Link href="/login">Login</Nav.Link>
          <Nav.Link href="/collections">Collections</Nav.Link>
        </Navbar.Collapse>
      </Container>
    </Navbar>
  )
}

export default NavBar

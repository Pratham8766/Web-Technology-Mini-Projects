import React from 'react'
import NavBar from "./NavBar"
import Container from 'react-bootstrap/Container';
import './home.css';

const Home = () => {
  return (
	<div>
		<NavBar />
		<Container id="main-container" className='d-flex justify-content-center'>
			<div>
				<hr></hr>
				<h1>Welcome to Online VIT Bookstore</h1>
				<center>
				<h4>
					We offer a wide selection of books on various topics including
					literature, history, science, and more.
				</h4>
				</center>
				<div style={{ textAlign: 'center' }}>
				<img src="./images/bookimage.png" alt="Bookstore" className="small-image"  />
				</div>
    		</div>
		</Container>
	</div>
  )
}

export default Home
import React from 'react'

import "./bookcard.css";

const BookCard = ({id, bookName, authorName, imageURL}) => {
  return (
	<div className='book-container'>
		<div className="image-container">
			<img src={imageURL} alt="" />
		</div>
		<div className="book-name">{bookName}</div>
		<div className="author-name">{authorName}</div>
	</div>
  )
}

export default BookCard
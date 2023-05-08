import React, { useState, useEffect } from "react";
import NavBar from "./NavBar";
import Container from "react-bootstrap/Container";
import Row from "react-bootstrap/Row";
import Col from "react-bootstrap/Col";
import BookCard from "./BookCard";

const Collections = () => {
  const [bookList, setBookList] = useState([]);

  useEffect(() => {
    fetch("http://localhost:8082/books_data")
      .then((response) => {
        return response.json();
      })
      .then((json) => setBookList(json));
  }, []);

  return (
    <div>
      <NavBar />
      <Container
        fluid
        id="collection-container"
        className="d-flex justify-content-center text-center"
      >
        {bookList.map((book) => {
          return (
            <BookCard
              key={book.isbn}
              bookName={book.name}
              authorName={book.author}
              imageURL={book.imageURLString}
            />
          );
        })}
      </Container>
    </div>
  );
};

export default Collections;

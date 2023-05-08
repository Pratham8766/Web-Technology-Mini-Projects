package com.uttexample.uttdemo.service;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import com.uttexample.uttdemo.entity.Book;

@Service
public class BookService implements BookServiceInterface {

	ArrayList<Book> books;
	public BookService() {
		books = new ArrayList<>();
		books.add(new Book(1010, "Harry Potter and the Prisoner of Azkaban", "J.K.Rowling", "https://m.media-amazon.com/images/I/81f7bXC-tTL.jpg"));
		books.add(new Book(1011, "Harry Potter and the Philosopher's Stone", "J.K.Rowling", "https://m.media-amazon.com/images/I/81m1s4wIPML.jpg"));
		books.add(new Book(1012, "Harry Potter and the Chamber of Secrets", "J.K.Rowling", "https://m.media-amazon.com/images/I/81S0LnPGGUL.jpg"));
		books.add(new Book(1013, "Harry Potter and the Goblet of Fire", "J.K.Rowling", "https://m.media-amazon.com/images/I/810jKiNChxL.jpg"));
		books.add(new Book(1014, "Harry Potter and the Order of the Phoenix", "J.K.Rowling", "https://m.media-amazon.com/images/I/81a4yXpXjnL.jpg"));
		books.add(new Book(1015, "Harry Potter and the Half Blood Prince", "J.K.Rowling", "https://m.media-amazon.com/images/I/81p2+4nYtkL.jpg"));
		books.add(new Book(1016, "The Catcher in the Rye", "J. D. Salinger", "https://m.media-amazon.com/images/I/91HPG31dTwL.jpg"));
		books.add(new Book(1017, "The Fault in Our Stars", "John Green", "https://m.media-amazon.com/images/I/817tHNcyAgL.jpg"));
		books.add(new Book(1018, "The Great Gatsby", "F.Scott Fitzgerald", "https://m.media-amazon.com/images/I/71FTb9X6wsL.jpg"));

	}
	@Override
	public ArrayList<Book> getBooks() {
		return books;
	}
	
}

package com.uttexample.uttdemo.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

import com.uttexample.uttdemo.service.BookServiceInterface;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import com.uttexample.uttdemo.entity.Book;

@CrossOrigin(origins = "http://localhost:3000")
@RestController
public class Controller {
	@Autowired
	private BookServiceInterface bookService;

	@GetMapping("/books_data")
	public ArrayList<Book> getBooks() {
		return bookService.getBooks();
	}
	
}

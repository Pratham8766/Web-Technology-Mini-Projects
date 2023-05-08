package com.uttexample.uttdemo.entity;

public class Book {
	private int ISBN;
	private String name, author, imageURLString;

	public Book(int iSBN, String name, String author, String imageURLString) {
		ISBN = iSBN;
		this.name = name;
		this.author = author;
		this.imageURLString = imageURLString;
	}

	public int getISBN() {
		return ISBN;
	}

	public void setISBN(int iSBN) {
		ISBN = iSBN;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getImageURLString() {
		return imageURLString;
	}

	public void setImageURLString(String imageURLString) {
		this.imageURLString = imageURLString;
	}
}

/*
 * Name: Brian Preston
 * Date: 06/15/2025
 * Assignment: Module 4 - JavaBean
 * Purpose: This JavaBean represents a Book with 5 fields and implements Serializable.
 */

package module4;

import java.io.Serializable;

public class Book implements Serializable {
    private String title;
    private String author;
    private String genre;
    private int yearPublished;
    private String isbn;

    public Book() {}

    public Book(String title, String author, String genre, int yearPublished, String isbn) {
        this.title = title;
        this.author = author;
        this.genre = genre;
        this.yearPublished = yearPublished;
        this.isbn = isbn;
    }

    public String getTitle() { return title; }
    public void setTitle(String title) { this.title = title; }

    public String getAuthor() { return author; }
    public void setAuthor(String author) { this.author = author; }

    public String getGenre() { return genre; }
    public void setGenre(String genre) { this.genre = genre; }

    public int getYearPublished() { return yearPublished; }
    public void setYearPublished(int yearPublished) { this.yearPublished = yearPublished; }

    public String getIsbn() { return isbn; }
    public void setIsbn(String isbn) { this.isbn = isbn; }
}


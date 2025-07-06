// Book.java
// Name: Brian Preston
// Date: June 30, 2025
// Assignment: Module 8 - Project Part 3
// Purpose: JavaBean representing a Book record

package module8;

public class Book {
    private int id;
    private String title;
    private String author;
    private String genre;
    private String year;
    private String publisher;

    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public String getTitle() { return title; }
    public void setTitle(String title) { this.title = title; }

    public String getAuthor() { return author; }
    public void setAuthor(String author) { this.author = author; }

    public String getGenre() { return genre; }
    public void setGenre(String genre) { this.genre = genre; }

    public String getYear() { return year; }
    public void setYear(String year) { this.year = year; }

    public String getPublisher() { return publisher; }
    public void setPublisher(String publisher) { this.publisher = publisher; }
}

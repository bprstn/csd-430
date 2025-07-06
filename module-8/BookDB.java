// BookDB.java
// Name: Brian Preston
// Date: June 30, 2025
// Assignment: Module 8 - Project Part 3
// Purpose: JavaBean handling all database operations for Book

package module8;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class BookDB {
    private String url = "jdbc:mysql://localhost:3306/CSD430";
    private String user = "root";
    private String password = "yourpassword"; // <-- Update to your real password

    public List<Book> getAllBooks() {
        List<Book> list = new ArrayList<>();
        try (Connection conn = DriverManager.getConnection(url, user, password);
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery("SELECT * FROM books")) {

            while (rs.next()) {
                Book b = new Book();
                b.setId(rs.getInt("id"));
                b.setTitle(rs.getString("title"));
                b.setAuthor(rs.getString("author"));
                b.setGenre(rs.getString("genre"));
                b.setYear(rs.getString("year"));
                b.setPublisher(rs.getString("publisher"));
                list.add(b);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public Book getBookById(int id) {
        Book b = new Book();
        try (Connection conn = DriverManager.getConnection(url, user, password);
             PreparedStatement stmt = conn.prepareStatement("SELECT * FROM books WHERE id = ?")) {

            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                b.setId(rs.getInt("id"));
                b.setTitle(rs.getString("title"));
                b.setAuthor(rs.getString("author"));
                b.setGenre(rs.getString("genre"));
                b.setYear(rs.getString("year"));
                b.setPublisher(rs.getString("publisher"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return b;
    }

    public void updateBook(Book b) {
        try (Connection conn = DriverManager.getConnection(url, user, password);
             PreparedStatement stmt = conn.prepareStatement(
                 "UPDATE books SET title=?, author=?, genre=?, year=?, publisher=? WHERE id=?")) {

            stmt.setString(1, b.getTitle());
            stmt.setString(2, b.getAuthor());
            stmt.setString(3, b.getGenre());
            stmt.setString(4, b.getYear());
            stmt.setString(5, b.getPublisher());
            stmt.setInt(6, b.getId());
            stmt.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}


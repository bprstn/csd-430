// BookDB.java
// Name: Brian Preston
// Date: July 13, 2025
// Assignment: Module 9 - Project Part 4
// Purpose: JavaBean handling all database operations for Book

package module8;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class BookDB {
    private String url = "jdbc:mysql://localhost:3306/CSD430";
    private String user = "root";
    private String password = ""; // Add your DB password if needed
    private Connection conn;

    // Constructor to initialize DB connection
    public BookDB() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(url, user, password);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // Method to get all books
    public List<Book> getAllBooks() {
        List<Book> books = new ArrayList<>();
        try {
            String sql = "SELECT * FROM larry_movies_data"; // Change to your table name if needed
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(sql);

            while (rs.next()) {
                Book book = new Book();
                book.setId(rs.getInt("id")); // Update column names if different
                book.setTitle(rs.getString("title"));
                book.setAuthor(rs.getString("author"));
                book.setYear(rs.getString("year")); // Using getString to avoid error
                book.setGenre(rs.getString("genre"));
                books.add(book);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return books;
    }

    // Method to delete a book by id
    public void deleteRecord(int id) {
        try {
            String sql = "DELETE FROM larry_movies_data WHERE id = ?";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, id);
            pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}




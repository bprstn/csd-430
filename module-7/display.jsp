<%-- 
Name: Brian Preston
Date: June 2, 2025
Assignment: Module 7 - Project Part 2
Purpose: Insert new book record and display all records in table format.
--%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Book Records</title>
</head>
<body>
    <h1>All Book Records</h1>

    <%
        String url = "jdbc:mysql://localhost:3306/CSD430";
        String user = "root";
        String password = "yourpassword"; // <-- update this

        Connection conn = null;
        Statement stmt = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(url, user, password);
            stmt = conn.createStatement();

            // Get form data
            String title = request.getParameter("title");
            String author = request.getParameter("author");
            String genre = request.getParameter("genre");
            String year = request.getParameter("year");
            String publisher = request.getParameter("publisher");

            if(title != null && author != null && genre != null && year != null && publisher != null) {
                String sql = "INSERT INTO books (title, author, genre, year, publisher) VALUES ('" 
                            + title + "', '" 
                            + author + "', '" 
                            + genre + "', '" 
                            + year + "', '" 
                            + publisher + "')";
                stmt.executeUpdate(sql);
            }

            ResultSet rs = stmt.executeQuery("SELECT * FROM books");
    %>
    <table border="1">
        <thead>
            <tr>
                <th>ID</th>
                <th>Title</th>
                <th>Author</th>
                <th>Genre</th>
                <th>Year</th>
                <th>Publisher</th>
            </tr>
        </thead>
        <tbody>
            <%
                while(rs.next()) {
            %>
            <tr>
                <td><%= rs.getInt("id") %></td>
                <td><%= rs.getString("title") %></td>
                <td><%= rs.getString("author") %></td>
                <td><%= rs.getString("genre") %></td>
                <td><%= rs.getString("year") %></td>
                <td><%= rs.getString("publisher") %></td>
            </tr>
            <%
                }
                rs.close();
                stmt.close();
                conn.close();
            %>
        </tbody>
    </table>
    <%
        } catch(Exception e) {
            out.println("Error: " + e.getMessage());
        }
    %>
    <p><a href="index.jsp">Add another book</a></p>
</body>
</html>

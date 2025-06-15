<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*, module4.Book" %>
<%-- 
    Name: Brian Preston
    Date: 06/15/2025
    Assignment: Module 4 - JavaBean
    Purpose: This JSP page creates and displays Book JavaBeans in a table format.
--%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Books I’ve Enjoyed</title>
    <style>
        table { border-collapse: collapse; width: 100%; }
        th, td { border: 1px solid #ddd; padding: 8px; }
        th { background-color: #f2f2f2; }
    </style>
</head>
<body>
    <h1>Books I’ve Enjoyed</h1>
    <p>This table displays details about some books including title, author, genre, year, and ISBN.</p>

    <%
        List<Book> books = new ArrayList<Book>();
        books.add(new Book("The Midnight Library", "Matt Haig", "Fiction", 2020, "978-0525559474"));
        books.add(new Book("Dune", "Frank Herbert", "Science Fiction", 1965, "978-0441172719"));
        books.add(new Book("The Alchemist", "Paulo Coelho", "Philosophical", 1988, "978-0061122415"));
        books.add(new Book("Becoming", "Michelle Obama", "Memoir", 2018, "978-1524763138"));
        books.add(new Book("Educated", "Tara Westover", "Memoir", 2018, "978-0399590504"));
    %>

    <table>
        <tr>
            <th>Title</th>
            <th>Author</th>
            <th>Genre</th>
            <th>Year</th>
            <th>ISBN</th>
        </tr>
        <%
            for (Book b : books) {
        %>
        <tr>
            <td><%= b.getTitle() %></td>
            <td><%= b.getAuthor() %></td>
            <td><%= b.getGenre() %></td>
            <td><%= b.getYearPublished() %></td>
            <td><%= b.getIsbn() %></td>
        </tr>
        <%
            }
        %>
    </table>
</body>
</html>



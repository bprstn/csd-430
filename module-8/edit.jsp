<%-- 
Name: Brian Preston
Date: June 30, 2025
Assignment: Module 8 - Project Part 3
Purpose: Display selected book fields for editing (except ID).
--%>
<%@ page import="module8.BookDB, module8.Book" %>
<%
    int id = Integer.parseInt(request.getParameter("id"));
    BookDB db = new BookDB();
    Book book = db.getBookById(id);
%>
<!DOCTYPE html>
<html>
<head><title>Edit Book</title></head>
<body>
    <h1>Edit Book Details</h1>
    <form action="update.jsp" method="post">
        <input type="hidden" name="id" value="<%= book.getId() %>">
        <p>ID (read-only): <%= book.getId() %></p>
        Title: <input type="text" name="title" value="<%= book.getTitle() %>"><br><br>
        Author: <input type="text" name="author" value="<%= book.getAuthor() %>"><br><br>
        Genre: <input type="text" name="genre" value="<%= book.getGenre() %>"><br><br>
        Year: <input type="text" name="year" value="<%= book.getYear() %>"><br><br>
        Publisher: <input type="text" name="publisher" value="<%= book.getPublisher() %>"><br><br>
        <input type="submit" value="Update Book">
    </form>
</body>
</html>


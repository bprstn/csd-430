<%-- 
Name: Brian Preston
Date: June 30, 2025
Assignment: Module 8 - Project Part 3
Purpose: Select book to update using dropdown.
--%>
<%@ page import="module8.BookDB, module8.Book, java.util.List" %>
<%
    BookDB db = new BookDB();
    List<Book> books = db.getAllBooks();
%>
<!DOCTYPE html>
<html>
<head><title>Select Book</title></head>
<body>
    <h1>Select Book to Update</h1>
    <form action="edit.jsp" method="get">
        <select name="id">
            <% for (Book b : books) { %>
                <option value="<%= b.getId() %>"><%= b.getTitle() %></option>
            <% } %>
        </select>
        <input type="submit" value="Edit">
    </form>
</body>
</html>


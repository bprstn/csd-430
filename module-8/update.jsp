<%-- 
Name: Brian Preston
Date: June 30, 2025
Assignment: Module 8 - Project Part 3
Purpose: Update book in database and display all books.
--%>
<%@ page import="module8.BookDB, module8.Book, java.util.List" %>
<%
    Book b = new Book();
    b.setId(Integer.parseInt(request.getParameter("id")));
    b.setTitle(request.getParameter("title"));
    b.setAuthor(request.getParameter("author"));
    b.setGenre(request.getParameter("genre"));
    b.setYear(request.getParameter("year"));
    b.setPublisher(request.getParameter("publisher"));

    BookDB db = new BookDB();
    db.updateBook(b);

    List<Book> books = db.getAllBooks();
%>
<!DOCTYPE html>
<html>
<head><title>All Books</title></head>
<body>
    <h1>All Book Records (After Update)</h1>
    <table border="1">
        <tr>
            <th>ID</th><th>Title</th><th>Author</th><th>Genre</th><th>Year</th><th>Publisher</th>
        </tr>
        <% for (Book book : books) { %>
        <tr>
            <td><%= book.getId() %></td>
            <td><%= book.getTitle() %></td>
            <td><%= book.getAuthor() %></td>
            <td><%= book.getGenre() %></td>
            <td><%= book.getYear() %></td>
            <td><%= book.getPublisher() %></td>
        </tr>
        <% } %>
    </table>
    <p><a href="index.jsp">Edit another book</a></p>
</body>
</html>


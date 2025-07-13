<%@ page import="java.util.*, module8.Book, module8.BookDB" %>
<%
    BookDB bookDB = new BookDB();
    List<Book> books = bookDB.getAllBooks();
%>
<!DOCTYPE html>
<html>
<head>
    <title>Book Records</title>
</head>
<body>
    <h1>All Book Records</h1>
    <p>Select a book ID from the dropdown below to delete a record.</p>

    <table border="1">
        <thead>
            <tr>
                <th>ID</th>
                <th>Title</th>
                <th>Author</th>
                <th>Year</th>
                <th>Genre</th>
            </tr>
        </thead>
        <tbody>
            <%
                for (Book book : books) {
            %>
            <tr>
                <td><%= book.getId() %></td>
                <td><%= book.getTitle() %></td>
                <td><%= book.getAuthor() %></td>
                <td><%= book.getYear() %></td>
                <td><%= book.getGenre() %></td>
            </tr>
            <%
                }
            %>
        </tbody>
    </table>

    <form action="deleteRecord.jsp" method="post">
        <label for="bookId">Select ID to delete:</label>
        <select name="bookId" id="bookId">
            <%
                for (Book book : books) {
            %>
            <option value="<%= book.getId() %>"><%= book.getId() %></option>
            <%
                }
            %>
        </select>
        <input type="submit" value="Delete">
    </form>
</body>
</html>


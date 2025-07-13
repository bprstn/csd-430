<%@ page import="java.util.*, module8.Book, module8.BookDB" %>
<%
    String idParam = request.getParameter("bookId");
    int bookId = Integer.parseInt(idParam);

    BookDB bookDB = new BookDB();
    bookDB.deleteRecord(bookId);

    List<Book> books = bookDB.getAllBooks();
%>
<!DOCTYPE html>
<html>
<head>
    <title>Updated Book Records</title>
</head>
<body>
    <h1>Book Records After Deletion</h1>
    <p>Select another ID to delete if needed.</p>

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


<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Favorite Books</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <h1>Books I've Enjoyed</h1>
    <p>This table lists some books I’ve loved, along with their author and genre.</p>

    <%
        String[][] books = {
            {"The Midnight Library", "Matt Haig", "Fiction"},
            {"Dune", "Frank Herbert", "Science Fiction"},
            {"The Alchemist", "Paulo Coelho", "Philosophical"},
            {"Becoming", "Michelle Obama", "Memoir"},
            {"Educated", "Tara Westover", "Memoir"}
        };
    %>

    <table>
        <tr>
            <th>Title</th>
            <th>Author</th>
            <th>Genre</th>
        </tr>
        <%
            for (int i = 0; i < books.length; i++) {
        %>
        <tr>
            <td><%= books[i][0] %></td>
            <td><%= books[i][1] %></td>
            <td><%= books[i][2] %></td>
        </tr>
        <%
            }
        %>
    </table>
</body>
</html>


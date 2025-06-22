<%@ page import="java.sql.*" %>
<jsp:useBean id="movieBean" class="mybeans.MovieBean" scope="page"/>

<!DOCTYPE html>
<html>
<head>
    <title>Movie Details - CSD430 - Brian Preston</title>
</head>
<body>
    <h1>Movie Details</h1>
    <%
        String movieIdStr = request.getParameter("movie_id");
        int movieId = Integer.parseInt(movieIdStr);
        ResultSet rs = movieBean.getMovieById(movieId);
        
        if (rs != null && rs.next()) {
    %>
    <table border="1">
        <thead>
            <tr>
                <th>Movie ID</th>
                <th>Title</th>
                <th>Director</th>
                <th>Release Year</th>
                <th>Genre</th>
                <th>Rating</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><%= rs.getInt("movie_id") %></td>
                <td><%= rs.getString("title") %></td>
                <td><%= rs.getString("director") %></td>
                <td><%= rs.getInt("release_year") %></td>
                <td><%= rs.getString("genre") %></td>
                <td><%= rs.getDouble("rating") %></td>
            </tr>
        </tbody>
    </table>
    <%
        } else {
    %>
    <p>No movie found with ID: <%= movieId %></p>
    <%
        }
    %>

    <br>
    <a href="selectMovie.jsp">Back to Movie List</a>
</body>
</html>



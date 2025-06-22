<%@ page import="java.util.ArrayList" %>
<%@ page import="java.sql.*" %>
<jsp:useBean id="movieBean" class="mybeans.MovieBean" scope="page"/>

<!DOCTYPE html>
<html>
<head>
    <title>Select a Movie - CSD430 - Brian Preston</title>
</head>
<body>
    <h1>Select a Movie</h1>
    <form method="post" action="displayMovie.jsp">
        <label for="movie_id">Choose a Movie ID:</label>
        <select name="movie_id" id="movie_id">
            <%
                ArrayList<Integer> ids = movieBean.getMovieIds();
                for (int id : ids) {
            %>
                <option value="<%= id %>"><%= id %></option>
            <%
                }
            %>
        </select>
        <br><br>
        <input type="submit" value="Get Movie Info">
    </form>
</body>
</html>



<%-- 
Name: Brian Preston
Date: June 2, 2025
Assignment: Module 7 - Project Part 2
Purpose: Form to collect new book data and submit to display page.
--%>
<!DOCTYPE html>
<html>
<head>
    <title>Add New Book</title>
</head>
<body>
    <h1>Add a New Book Record</h1>
    <form action="display.jsp" method="post">
        Title: <input type="text" name="title" required><br><br>
        Author: <input type="text" name="author" required><br><br>
        Genre: <input type="text" name="genre" required><br><br>
        Year: <input type="text" name="year" required><br><br>
        Publisher: <input type="text" name="publisher" required><br><br>
        <input type="submit" value="Add Book">
    </form>
</body>
</html>

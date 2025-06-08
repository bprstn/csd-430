<%-- 
Name: Brian Preston  
Date: 06/08/2025  
Assignment: Module 3 - Display Restaurant Feedback  
Purpose: Display submitted restaurant feedback in a table format  
--%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Feedback Received</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <h2>Thank You for Your Feedback!</h2>
    <p>Here is a summary of what you submitted:</p>

    <table border="1" cellpadding="10">
        <tr><th>Field</th><th>Your Input</th></tr>
        <tr><td>Name</td><td><%= request.getParameter("name") %></td></tr>
        <tr><td>Date of Visit</td><td><%= request.getParameter("date") %></td></tr>
        <tr><td>Type of Meal</td><td><%= request.getParameter("meal") %></td></tr>
        <tr><td>Rating</td><td><%= request.getParameter("rating") %> out of 5</td></tr>
        <tr><td>Comments</td><td><%= request.getParameter("comments") %></td></tr>
    </table>
</body>
</html>


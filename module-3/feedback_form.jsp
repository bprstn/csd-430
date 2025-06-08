<%-- 
Name: Brian Preston  
Date: 06/08/2025  
Assignment: Module 3 - Restaurant Experience Feedback Form  
Purpose: Collect user feedback on restaurant visit  
--%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Restaurant Feedback Form</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <h2>Restaurant Experience Feedback</h2>
    <p>Please fill out the form below to let us know how we did.</p>

    <form action="feedback_display.jsp" method="post">
        <label for="name">Your Name:</label><br>
        <input type="text" id="name" name="name" required><br><br>

        <label for="date">Date of Visit:</label><br>
        <input type="date" id="date" name="date" required><br><br>

        <label for="meal">Type of Meal:</label><br>
        <select id="meal" name="meal">
            <option value="Breakfast">Breakfast</option>
            <option value="Lunch">Lunch</option>
            <option value="Dinner">Dinner</option>
        </select><br><br>

        <label>Rate Your Experience:</label><br>
        <input type="radio" name="rating" value="1" required> 1 
        <input type="radio" name="rating" value="2"> 2 
        <input type="radio" name="rating" value="3"> 3 
        <input type="radio" name="rating" value="4"> 4 
        <input type="radio" name="rating" value="5"> 5<br><br>

        <label for="comments">Additional Comments:</label><br>
        <textarea id="comments" name="comments" rows="5" cols="40"></textarea><br><br>

        <input type="submit" value="Submit Feedback">
    </form>
</body>
</html>

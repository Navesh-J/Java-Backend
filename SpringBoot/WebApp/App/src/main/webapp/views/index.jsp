<%@ page language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>User Form</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
    <h1>User Form</h1>

    <form action="addUser">
        <label for="uid">Enter User Id :</label>
        <input type="text" id="uid" name="uid"><br>

        <label for="uname">Enter User Name :</label>
        <input type="text" id="uname" name="uname"><br>

        <input type="submit" value="Submit">
    </form>
</body>
</html>

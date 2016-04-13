<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Columbus</title>
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>    
</head>

<body>
    <div style="text-align: center;"><IMG SRC="img/project-columbus-header.jpg" ALT="image" height="160" width="300" ></div>
    <h1>Thanks for registering</h1>

    <p>Here is the information that you entered:</p>

    <label>First Name:</label>
    <span>${user.firstName}</span><br>
    <label>Last Name:</label>
    <span>${user.lastName}</span><br>
    <label>Email:</label>
    <span>${user.email}</span><br>

    <p>Thank you for registering! Please enjoy!</p>

    <form action="index.jsp" method="post">
        <input type="hidden" name="action" value="join">
        <input type="submit" value="Main Page">
    </form>

</body>
</html>
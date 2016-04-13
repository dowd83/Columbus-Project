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
    <h1>Join our email list</h1>
    <p>To join, enter your name and
       email address below.</p>
    <p><i>${message}</i></p>
    <form role = "form" action="emailList" method="post">
        <input type="hidden" name="action" value="add">        
        <label class="form-group">First Name:</label>
        <input type="text" name="firstName" value="${user.firstName}" 
               required><br>
        <label class="form-group">Last Name:</label>
        <input type="text" name="lastName" value="${user.lastName}"  
               required><br>  
        <label class="form-group">Email:</label>
        <input type="email" name="email" value="${user.email}" 
               required><br>
        <label class="form-group">Password:</label>
        <input type="password" name="password" value="${user.password}" 
               required><br>
        <label>&nbsp;</label>
        <input type="submit" value="Join Now" class="margin_left">
    </form>
</body>
</html>
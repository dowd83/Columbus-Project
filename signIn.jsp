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
    <h1>Sign in.</h1>
    <p>Please enter your email and password.</p>
    <p><i>${message}</i></p>
    <form role = "form" action="emailList" method="post">
        <input type="hidden" name="action" value="signIn">        
        <label class="form-group">Email:</label>
        <input type="text" name="email" value="${user.email}" 
               required><br>
        <label class="form-group">Password:</label>
        <input type="password" name="password" value="${user.password}"  
               required><br>  
        <label>&nbsp;</label>
        <input type="submit" value="Join Now" class="margin_left"/>  
    </form>
</body>
</html>
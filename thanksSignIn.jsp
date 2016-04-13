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
    <h1>Welcome Back!</h1>

    <%
    Cookie ck[]=request.getCookies();  
    out.print("Hello "+ck[0]);
    %>
    <!--<span>${user.firstName}</span>-->
    <!--<span>${user.lastName}!</span><br>-->

    <p>Please Enjoy!</p>
    <form action="index2.jsp" method="post">
        <input type="submit" value="Go to Front Page!">
    </form>

</body>
</html>
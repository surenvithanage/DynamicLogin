<%-- 
    Document   : index
    Created on : Sep 17, 2018, 9:40:56 AM
    Author     : suren_v
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link href="css/login.css" rel="stylesheet"/>
        <title>Login Page</title>
    </head>
    <body id="LoginForm">
    <div class="container">
        <h1 class="form-heading">login Form</h1>
        <div class="login-form">
            <div class="main-div">
                <div class="panel">
                    <h1> LOGIN</h1>
                    <p>Please enter your username and password</p>
                </div>
                <form id="Login" method="post" action="LoginServlet">
                    <div class="form-group">
                        <input type="text" class="form-control" name="username" id="inputEmail" placeholder="Username"/>
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control" name="password" id="inputPassword" placeholder="Password"/>
                    </div>
                    <span style="color:blue;font-size:10px;"><%=(request.getAttribute("errMessage") == null) ? "" : request.getAttribute("errMessage")%></span>
                    <button type="submit" class="btn btn-primary">Login</button>
                </form>
            </div>
        </div>
    </div>
    </body>
</html>

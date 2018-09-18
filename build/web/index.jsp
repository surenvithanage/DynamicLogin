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
        <title>JSP Page</title>
    </head>
    <body>
        <form method="post" action="LoginServlet">
            <table align="center" style="width: 50%" >
            <tr>
                <td>Username</td>
                <td><input type="text" name="username" placeholder="Username"/></td>
            </tr>
            <tr>
                <td>Password</td>
                <td><input type="password" name="password" placeholder="Password"/></td>
            </tr>
            <tr>
                <td><input type="submit" name="submit" value="Login"/></td>
                <td><input type="reset" name="reset" value="Clear"/></td>
            </tr>
        </table>
        </form>
    </body>
</html>

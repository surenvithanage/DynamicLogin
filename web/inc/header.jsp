<%-- 
    Document   : header
    Created on : Sep 19, 2018, 3:25:06 PM
    Author     : suren_v
--%>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#"><h4>Welcome <%=request.getAttribute("username").toString().toUpperCase() %></h4></a>
</nav>
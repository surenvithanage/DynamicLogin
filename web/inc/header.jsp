<%-- 
    Document   : header
    Created on : Sep 19, 2018, 3:25:06 PM
    Author     : suren_v
--%>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#"><h4>Welcome ${username}</h4></a>
  <span class="pull-right btn btn-default btn-sm" style="margin-top:10px;font-size: 10px;"><a href="<%=request.getContextPath()%>/logoutServlet">Logout</a></span>
</nav>
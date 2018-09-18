<%-- 
    Document   : home
    Created on : Sep 17, 2018, 10:18:54 AM
    Author     : suren_v
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fu" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
    </head>
    <body>
       
        <h2 style="margin-bottom: 50px;">Welcome <%=request.getAttribute("username").toString().toUpperCase() %></h1>
        
        <c:forEach var="item" items="${requestScope.details}">
            <a href="<c:out value="${item.getValue()}"/>"><c:out value="${item.getKey()}"/></a>
            <br/>
        </c:forEach>
            
        <%-- Method 2 
        <c:forEach var="item" items="${data1}">
            <a href="<c:out value="${item.getUrl()}"/>"><c:out value="${item.getName()}"/></a>
            <br/>
        </c:forEach>
        --%>
        
            
        
    </body>
</html>

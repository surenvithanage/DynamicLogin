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
        <title>JSP Page</title>
    </head>
    <body>
       
        Welcome 
        <br/>
        <c:forEach var="item" items="${requestScope.details}">
            <a href="<c:out value="${item.getValue()}"/>"><c:out value="${item.getKey()}"/></a>
            <br/>
        </c:forEach>
        
        
    </body>
</html>

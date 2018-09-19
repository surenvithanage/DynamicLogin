<%-- 
    Document   : deposit
    Created on : Sep 18, 2018, 8:29:00 AM
    Author     : suren_v
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Deposit Page</title>
    </head>
    <body>
        <jsp:include page="inc/sidebar.jsp" />
         
        <h1>DEPOSITS</h1>
       
                    <c:forEach var="item" items="${data}">
                        <a href="<c:out value="${item.getUrl()}"></c:out>">
                        <c:out value="${item.getName()}"></c:out></a>
                        <br/>
                    </c:forEach>

    </body>
</html>

<%-- 
    Document   : statistic
    Created on : Sep 18, 2018, 8:29:46 AM
    Author     : suren_v
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Statistics Page</title>
    </head>
    <body>
        <h1>STATISTICS</h1>
        
                    <c:forEach var="item" items="${data}">
                        <a href="<c:out value="${item.getUrl()}"></c:out>
                        <c:out value="${item.getName()}"></c:out></a>
                        <br/>
                    </c:forEach>
               
    </body>
</html>

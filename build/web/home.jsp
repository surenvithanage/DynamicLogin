<%-- 
    Document   : home
    Created on : Sep 17, 2018, 10:18:54 AM
    Author     : suren_v
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fu" uri="http://java.sun.com/jsp/jstl/functions" %>
<link rel="stylesheet" href="css/sidebar.css"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
    </head>
    <body>
        <div class="container-fluid">
            <div class="col-md-12">
                <%@include file="inc/header.jsp" %>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="sidebar">
                    <c:forEach var="item" items="${data1}">
                        <a href="<c:out value="${item.getUrl()}?param=${item.getId()}"/>"><c:out value="${item.getName()}"/></a>
                        <br/>
                    </c:forEach>
                    </div>
                </div>
                <div class="col-md-6">
                    
                </div>
            </div>   
        </div>
    </body>
</html>



         <%-- Method 2 
        <c:forEach var="item" items="${requestScope.details}">
            <a href="<c:out value="${item.getValue()}"/>"><c:out value="${item.getKey()}"/></a>
            <br/>
        </c:forEach>
        --%> 
       
<%-- 
    Document   : sidebar
    Created on : Sep 19, 2018, 3:25:15 PM
    Author     : suren_v
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fu" uri="http://java.sun.com/jsp/jstl/functions" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="css/sidebar.css"/>

<div class="sidebar">
    <c:forEach var="item" items="${data1}">
    <a href="<c:out value="${item.getUrl()}?param=${item.getId()}"/>"><c:out value="${item.getName()}"/></a>
    <br/>
    </c:forEach>
</div>


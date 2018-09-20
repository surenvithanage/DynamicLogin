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
        <div class="container-fluid">
            <div class="col-md-12">
                <jsp:include page="inc/header.jsp"></jsp:include>
                
            </div>
            <div class="row">
                <div class="col-md-3">
                    <div class="sidebar">
                    <jsp:include page="inc/sidebar.jsp" ></jsp:include>
                    </div>
                </div>
                <div class="col-md-6"> 
                    <div class="row">
                     <h1>STATISTICS</h1><br/><br/>
                        <c:forEach var="item" items="${data}">
                            <a class="btn btn-primary" href="<c:out value="${item.getUrl()}"></c:out>
                            <c:out value="${item.getName()}"></c:out></a>
                            <br/><br/>
                        </c:forEach>
                    </div>
                </div>
            </div>   
        </div>     
    </body>
</html>

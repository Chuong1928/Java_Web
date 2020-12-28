<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<body>
   <%--  <h1>${greeting}</h1>  --%>

 <c:forEach items="${ds }" var="bien1">
 	<c:out value="${bien1 }"></c:out>
 </c:forEach>
 <hr>
 <c:forEach items="${ds }" var ="bien2">
 	<c:if test="${bien2=='Thu' }">
 		${bien2 } is number one!
 	</c:if>
 </c:forEach>
</body>
</html>
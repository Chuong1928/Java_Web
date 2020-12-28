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
	
	<form method='post' action='dangnhap'>

		<input name='txtun' type='text'><br>
		
		<input name='txtpass' type='password'><br>
		
		<input name='but1' type='submit' value='Login'><br>
		
		<c:if test="${tb == 'dns'}">
		
		<b> tb:<c:out value="Dang nhap sai"> </c:out> </b>
		
		</c:if>

</form>
</body>
</html>
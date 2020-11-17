<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	
	<div align="right"> Xin Chao: <%=session.getAttribute("un")%> </div>
	<%@include file="menu.jsp" %>
	<hr>
	Noi dung cua trang chu
</body>
</html>
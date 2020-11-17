<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
   
      <title>Chường đẹp chai</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" type="text/css" href="css/ums.css">

</head>
<body>
		<%
		String id = request.getParameter("msv");
		String	pass = request.getParameter("mk");
		out.print("Mã sinh viên  " + id +"<br>");
		out.print("Mật Khẩu " + pass);
		if(id.equalsIgnoreCase("17T1021293") && pass.equalsIgnoreCase("123")){
			response.sendRedirect("soxo.jsp");
		}
		else
			response.sendRedirect("ums.jsp?err=true");
		%>
</body>
</html>

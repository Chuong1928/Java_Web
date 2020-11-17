<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title> WEBPROVIP</title>
</head>
<body>

	<form action="demosession.jsp" method="POST">
	
		n=<input type="number" name="txtn">
		<br>
		<input type="submit" name="but1" value="Tong">
	
	
	
	</form>
		<%
			// lay ve n
			//meu n!==null
			//doi n ra so
			//s+=n
			//in ra s
			//long s=0;
			String n1=request.getParameter("txtn");
			if(session.getAttribute("ss")==null){//chua tao
				session.setAttribute("ss", 	(long)0); //tao ra bien session
			}
			
			if(n1!=null && !n1.equals("") ){
				 long n=Long.parseLong(n1);
				 long s=(long)session.getAttribute("ss");//gan bien
				 s=s+n;
				 session.setAttribute("ss", s);//luu bien session
				 out.print(session.getAttribute("ss"));
				 
				 
			}
		
		%>
</body>
</html>
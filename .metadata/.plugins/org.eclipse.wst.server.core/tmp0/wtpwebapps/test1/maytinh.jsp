<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<form method="post" action ="maytinhcontroller">
      a=<input type="number" name="txta" placehoder="Nhap a" 
      value ="<%=request.getAttribute("a")%>">
      <br>
      b=<input type="number" name="txtb" placehoder="Nhap b" 
      value ="<%=request.getAttribute("b")%>">
      <br>
      kq=<input type="number" name="txtkq"  
      value ="<%=request.getAttribute("kq")%>">
      <br>
        <input type="submit" name="txtcong"  value ="+">
        <input type="submit" name="txttru"  value ="-">
		<input type="submit" name="txtnhan"  value ="*">
        <input type="submit" name="txtchia"  value ="/">
       <%--  <%=session.getAttribute("tam") %>
        <%
        	
       		String soa=request.getParameter("txta");
       		String sob=request.getParameter("txtb");
       		String teama=soa+" ";
       		String teamb=sob+" ";
       		if(soa!=null &&sob!=null && !teama.equalsIgnoreCase(" ")&&!teamb.equalsIgnoreCase(" ")){
       			double a=Double.parseDouble(soa);
       			double b=Double.parseDouble(sob);
       			double kq=0;
       			if(request.getParameter("txtcong")!=null){
       				kq=a+b;
       			}
       			else if(request.getParameter("txttru")!=null){
       				kq=a-b;
       			}
       			else if(request.getParameter("txtnhan")!=null){
       				kq=a*b;
       			}
       			else if(request.getParameter("txtchia")!=null && b!=0){
       				kq=a/b;
       			}
       			
       			if(kq==(long)kq){
       				response.sendRedirect("maytinh.jsp?a="+soa+"&b="+sob+"&kq="+((long)kq));
       			} 
       			else
       				response.sendRedirect("maytinh.jsp?a="+soa+"&b="+sob+"&kq="+(double)kq);
       			
       		}
       		
       		
				        
        %> --%>
   </form>
</body>
</html>
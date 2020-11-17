<%@page import="bean.sachbean"%>
<%@page import="bo.Giohangbo"%>
<%@page import="bean.Giohangbean"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
	<%
		String masach=request.getParameter("id");
		Giohangbo g=(Giohangbo)session.getAttribute("GioHang");
		if(masach!=null){
			g.Del_elemen_from_cart(masach);
			session.setAttribute("GioHang", g);
			out.print(1);
			
		}else{
			out.print(0);
			
		}
	
	
	%>  
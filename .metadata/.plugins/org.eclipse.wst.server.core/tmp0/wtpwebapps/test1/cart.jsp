<%@page import="bean.Giohangbean"%>
<%@page import="bo.Giohangbo"%>
<%@page import="bean.sachbean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bo.sachbo"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.Hashtable"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
		<%
		
/* 		String masach=request.getParameter("id");
		String tensach=request.getParameter("tensach");
		String tacgia=request.getParameter("tacgia");
		String gia=request.getParameter("gia");
		String url_anh=request.getParameter("hinhanh");
		if(masach!=null){
			Giohangbo gh;
			if(session.getAttribute("GioHang")==null){//kiem tra mua hang` lan` dau`
				gh=new Giohangbo();
				session.setAttribute("GioHang",gh);	//tao gio hang
			}
			//gan' session vao` bien gh
			gh=(Giohangbo)session.getAttribute("GioHang");
			gh.ThemGH(masach, tensach,tacgia,url_anh,Double.parseDouble(gia), 1);
			//luu lai ss
			session.setAttribute("GioHang", gh);
			response.sendRedirect("viewcart.jsp");
		} */
		
		
	 	
		//session.setAttribute("GioHang",gc);
	//	response.sendRedirect("viewcart.jsp"); 
		%>
</body>
</html>
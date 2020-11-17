<%@page import="bean.sachbean"%>
<%@page import="bo.Giohangbo"%>
<%@page import="bean.Giohangbean"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
	<%
		String masach=request.getParameter("id");
		int slm=Integer.parseInt(request.getParameter("slm"));
		
		Giohangbo g=(Giohangbo)session.getAttribute("GioHang");
		if(slm!=0){
			//out.print(slm);
			for(Giohangbean gh:g.ds){
				if(gh.getMasach().trim().toLowerCase().equalsIgnoreCase(masach.trim().toLowerCase())){
					gh.setSoluong((double)slm);
					out.print(1);
					return;
				}
			}
			session.setAttribute("GioHang", g);
		}else{
			out.print(0);
			return;
		}
	
	%>  
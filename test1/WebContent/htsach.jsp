<%@page import="java.util.Random"%>
<%@page import="bo.Giohangbo"%>
<%@page import="bean.loaibean"%>
<%@page import="bo.loaibo"%>
<%@page import="bean.sachbean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bo.sachbo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <title>MinhKhai Búc</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Import Boostrap css, js, font awesome here -->   
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <!-- Bootstrap JS -->
    <link href="https://fonts.googleapis.com/css2?family=Lato:wght@300&display=swap" rel="stylesheet">
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">    
    <link href="./css/home1.css" rel="stylesheet">
<script type="text/javascript" src="./js/script.js"></script>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="./css/home3.css">
   <link rel="stylesheet" href="css/minhkhai_style.css">
</head>
<body>
<%
	ArrayList<loaibean> dsloai=(ArrayList<loaibean>)request.getAttribute("dsloai");
	ArrayList<sachbean> ds=(ArrayList<sachbean>)request.getAttribute("dssach");
	int m=dsloai.size();
	int n=ds.size();
	 long soluong=0;
     if (session.getAttribute("GioHang")!=null){
     	Giohangbo gh=(Giohangbo)session.getAttribute("GioHang");
     	soluong=gh.Sum_cart();
     }
	Random rd=new Random();
	


        for(int i=0;i<n;i++){
                       			out.print(ds.get(i).getMasach());
                       			out.print(ds.get(i).getMasach());
                       	}%>
   
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MinhKhai</title>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
		<!-- custom css -->
		<link rel="stylesheet" type="text/css" href="<c:url value="/vendor/css/style.css" />">
		<link rel="stylesheet" type="text/css" href="<c:url value="/vendor/css/main.css" />">
</head>
<body>

	<hr style="margin: 3px 0px;">
			<header class="sticky-top">
			<!-- Nav -->
			<nav class="navbar navbar-expand-lg navbar-light bg-light p-md-3">
				<a class="navbar-brand" href="minhkhai"><img src="<c:url value="/vendor/image/logo.png" />"></a>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse justify-content-around	" id="navbarSupportedContent">
					<form method='post' action='minhkhai' class="d-flex">
						<input name='txtsearch' type='text' class="form-control me-2 mg-l-2" type="search" placeholder="Search" aria-label="Search" width="200px">
						<input name='but1' type='submit' value='Tìm' class="btn btn-outline-success">
					</form>
					<ul class="nav justify-content-end ">
						<li class="nav-item dropdown m-2">
							<a class="nav-link " href="minhkhai"  role="button"  aria-haspopup="true" aria-expanded="false">
								HOME
							</a>
			
						</li>
						<li class="nav-item  m-2">
							<a class="nav-link " href="#">FEATURES</a>
						</li>
						<li class="nav-item  m-2">
							<a class="nav-link " href="#">DOWNLOAD</a>
						</li>
						<li class="nav-item  m-2">
							<a class="nav-link " href="#">CONTACT</a>
						</li>
						<li class="nav-item  m-2 dropdown">
							<c:choose>
								<c:when test="${sessionScope.un!=null}">
								<%-- <div style="float: right; margin-right: 20px;">hi: ${sessionScope.un}
								
								
								 	<a " href="dangnhap?logout=1" class="nav-link "> Logout </a>
								 	
								</div> --%>
						
									    <button class="dropbtn">Xin Chào: ${sessionScope.un} 
									      <i class="fa fa-caret-down"></i>
									    </button>
									    <div class="dropdown-content">
									      <a " href="dangnhap?logout=1" class="nav-link "> Logout </a>
									      <a href="#">Link 2</a>
									      <a href="#">Link 3</a>
									    </div>
								
								</c:when>
								<c:otherwise>
									<a href="dangnhap" class="nav-link "> Login </a>
								</c:otherwise>
							</c:choose>
						</li>
					</ul>
				</div>
			</nav>
		</header>
	<!-- <a href="minhkhai" style="margin-left: 1%" style="float: left;">Home</a> -->
<!-- 
	<form method='post' action='minhkhai' style="width: 300px;float: right;">
		<input name='txtsearch' type='text'>
		<input name='but1' type='submit' value='Tìm'>
	</form> -->
	<!-- <hr color="green"> -->
<%-- 	<table valign='center' width='90%' style="margin-left: 1%">
		<tr>
			<td valign="top" style="width: 15%;">
				<c:forEach items="${dsloai}" var="loai">
					<a href='minhkhai?ml=${loai.getMaloai()}'> ${loai.getTenloai()}</a>
					<hr>
				</c:forEach></td>
			<td>
				<c:if test="${ dssach.size() < 1 }">		
					Khong tim thay sach!		
				</c:if>
				<c:forEach items="${dssach}" var="sach">
					<div style="float: left; margin: 10px; padding: 10px; width: 300px; height: 500px; border: 1px solid blue;">
						<img src="${sach.getAnh() }" width="90%" height="70%"><hr> 
						${sach.getTensach()} <hr>
	 					${sach.getGia()} <hr>
					</div>
				</c:forEach>
			</td>
		</tr>
	</table> --%>
	<div class="row">
		<div class="col-md-12 col-xl-2 col-lg-2 bg-light">
			<c:forEach items="${dsloai}" var="loai">
					<a href='minhkhai?ml=${loai.getMaloai()}'> ${loai.getTenloai()}</a>
					<hr>
				</c:forEach></td>
		</div>
		<div class="col-md-12 col-xl-10 col-lg-10">
			<c:if test="${ dssach.size() < 1 }">		
					<div class="alert alert-warning" role="alert">
					  Hog tìm thấy sách !
					</div>	
				</c:if>
			<c:forEach items="${dssach}" var="sach">
					<div style="float: left; margin: 10px; padding: 10px; width: 300px; height: 500px; border: 1px solid blue;text-align: center;">
						
						<img src="<c:url value="${sach.getAnh()}" />" width="90%" height="70%"><hr> 
						
						${sach.getTensach()} <hr>
	 					${sach.getGia()} <hr>
					</div>
				</c:forEach>
		</div>
	</div>
		<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
</body>
</html>
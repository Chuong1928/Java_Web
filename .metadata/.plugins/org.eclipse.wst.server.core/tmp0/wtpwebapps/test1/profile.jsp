<%@page import="java.util.Random"%>
<%@page import="bo.Giohangbo"%>
<%@page import="bean.loaibean"%>
<%@page import="bo.loaibo"%>
<%@page import="bean.sachbean"%>
<%@page import="bean.khachhangbean"%>
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
 <link href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.4.1/css/simple-line-icons.min.css" rel="stylesheet">
  <link rel="stylesheet" href="./css/home3.css">
   <link rel="stylesheet" href="css/minhkhai_style.css">
    <link rel="stylesheet" href="css/login.css">
</head>
<body>
<%
response.setCharacterEncoding("utf-8");
	ArrayList<loaibean> dsloai=(ArrayList<loaibean>)request.getAttribute("dsloai");
	ArrayList<sachbean> ds=(ArrayList<sachbean>)request.getAttribute("dssach");
	ArrayList<khachhangbean> khachhangbean=(ArrayList<khachhangbean>)request.getAttribute("khachhang");
	int m=dsloai.size();
	int n=ds.size();
	 long soluong=0;
     if (session.getAttribute("GioHang")!=null){
     	Giohangbo gh=(Giohangbo)session.getAttribute("GioHang");
     	soluong=gh.Sum_cart();
     }
	Random rd=new Random();
	
%>
<%@include file="header.jsp" %>
 <div class="wrapper">
        <!-- Sidebar Holder -->
        <nav id="sidebar">
            <div class="sidebar-header">
                <h3><a href="#" id="mainlogo">MinhKhai Búc</a></h3>
            </div>

            <ul class="list-unstyled components">
                <p>Bảng điều khiển</p>
                <li  class="active"> <a href="hahaha.jsp" >Trang Chủ</a></li>
                <li>
                    <a href="#homeSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Danh Mục Sách <span class="badge badge-pill badge-danger"style="margin-left: 10px;">Hot</span></a>
                    <ul class="collapse list-unstyled" id="homeSubmenu">
                        <% for(int i=0;i<m;i++){  %>
					 <li>
					    <a href="SachController?type=<%=dsloai.get(i).getMaloai()%>"><%=dsloai.get(i).getTenloai() %><span class="badge badge-pill badge-danger" style="margin-left: 10px;"><%=rd.nextInt(100)%></span></a>
					  </li>
					  
					  <%} %>
                    </ul>
                </li>
                <li><a href="index.php?type=Clone-VN">Văn phòng phẩm<span class="badge badge-pill badge-success"style="margin-left: 10px;">100</span></a></li>

                <li><a href="index.php?type=Clone-US">Đồ chơi- Thú bông <span class="badge badge-pill badge-success"style="margin-left: 10px;">150 </span></a></li>
              	 <li>
               		<a href="index.php?type=Clone-EU">Hàng lưu niệm <span class="badge badge-pill badge-success" style="margin-left: 10px;">134</span>
              		 </a>
               </li>
                 <li>
                            <a href="#"><i class="nav-main-link-icon fa fa-headset"></i>Hỗ Trợ</a>
                  </li>
            </ul>
    <div class="col-3 back-to-top">
                  <a id="buttonb"></a>
                </div>
            <ul class="list-unstyled CTAs">
                <li>
                    <a href="https://www.youtube.com/watch?v=6PebsRhDesA&t=64s" class="download" target="_blank"><i class="nav-main-link-icon fab fa-youtube " style="color: red;"></i>Video hướng dẫn mua sách trên web</a>
                </li>
                <li>
                    <a href="SachController" class="article">Quay lại trang chủ</a>
                </li>
            </ul>
        </nav>

        <!-- Page Content Holder -->
        <div id="content">

            <nav class="navbar navbar-expand-lg navbar-light bg-light conten-nav">
                <div class="container-fluid">

                    <button type="button" id="sidebarCollapse" class="navbar-btn">
                        <span></span>
                        <span></span>
                        <span></span>
                    </button>
                    <button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <i class="fas fa-align-justify"></i>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="nav navbar-nav ml-auto">
                     
                            
                         <li class="nav-item active">
                                <a class="nav-link" href="#"><i class="fas fa-bell nav-main-link-icon"></i>Thông báo
                                </a>
                            </li>
                 			<li class="nav-item" role="presentation"><a id="myycart" class="nav-link active" href="ViewcartController"><i class="fas fa-shopping-cart"></i> Rỏ Hàng<span class="badge badge-light" id="slcart" style="margin-left: 10px;"><%=soluong %></span></a></li>

                           
                        </ul>
                    </div>
                </div>
            </nav>
            <!-- Content -->
            <div class="right" style="padding: 2%;" >
          			 <div class="block block-rounded block-themed block-fx-pop profile">
                    <div class="block-header bg-info">
                        <div class="block-options">
                           
                        </div>
                    </div>
                    <div class="block-content">
                        
                        <h2 class="content-heading">Thông tin tài khoản</h2>
                            <div class="row">
                                <div class="offset-2 col-lg-8">
                                    <div class="form-group row">
                                        <label class="col-sm-4">Ngày tạo:</label>
                                        <div class="col-sm-8">
                                            <span>2020-08-12 19:28:43</span>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-4">Tài khoản:</label>
                                        <div class="col-sm-8">
                                            <span><%=khachhangbean.get(0).getTendn()%></span>
                                        </div>
                                    </div>
                                     <div class="form-group row">
                                        <label class="col-sm-4">Họ và tên:</label>
                                        <div class="col-sm-8">
                                            <span><%=khachhangbean.get(0).getHoten()%></span>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-4">Email:</label>
                                        <div class="col-sm-8">
                                            <span><%=khachhangbean.get(0).getEmail() %></span>
                                        </div>
                                    </div>
                  					 <div class="form-group row">
                                        <label class="col-sm-4">Địa Chỉ:</label>
                                        <div class="col-sm-8">
                                            <span><%=khachhangbean.get(0).getDiachi() %></span>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                            <div class="col-sm-8 ml-auto">
                                        	     <button type="submit" class="btn btn-primary">Chỉnh Sửa</button>
                                                <button type="submit" class="btn btn-primary">Lưu lại</button>
                                            </div>
                                    </div>
                                </div>
                            </div>

                        <h2 class="content-heading">Đổi mật khẩu</h2>
                            <div class="row">
                                <div class="offset-2 col-lg-8">
                                    <form class="mb-5" action="https://muabanfb24h.com/doi-mat-khau" method="POST">
                                        <input type="hidden" name="_token" value="GcaCQh1727dNSpEjws8mQzGmKeDOwqsdELOK1Hnq">                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Mật khẩu hiện tại</label>
                                            <div class="col-sm-8">
                                                <input type="password" class="form-control " name="current_password" placeholder="Mật khẩu">
                                              </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Mật khẩu mới</label>
                                            <div class="col-sm-8">
                                                <input type="password" class="form-control " name="password" placeholder="Tạo mật khẩu">
                                               </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Xác nhận mật khẩu</label>
                                            <div class="col-sm-8">
                                                <input type="password" class="form-control " name="password_confirmation" placeholder="Xác nhận mật khẩu">
                                              </div>
                                        </div>
                                        <div class="form-group row">
                                            <div class="col-sm-8 ml-auto">
                                                <button type="submit" class="btn btn-primary">Lưu lại</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                    </div>
                </div>
			
              </div>


            
	</div>
</div>
	    <script type="text/javascript">
        $(document).ready(function () {
            $('#sidebarCollapse').on('click', function () {
                $('#sidebar').toggleClass('active');
                $(this).toggleClass('active');
            });
        });
    </script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
</body>
</html>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.Sinhvienbean"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
	<title>ahihi</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<%
    response.setCharacterEncoding("utf-8");
	ArrayList<Sinhvienbean> dssv=(ArrayList<Sinhvienbean>)request.getAttribute("dssv");
	ArrayList<Sinhvienbean> dstk=(ArrayList<Sinhvienbean>)request.getAttribute("dstk");
%>
<div class="vertical-nav bg-white" id="sidebar">
  <div class="py-4 px-3 mb-4 bg-light">
    <div class="media d-flex align-items-center"><img src="https://scontent-hkg4-2.xx.fbcdn.net/v/t1.0-1/p160x160/117179292_2767398363479506_6780756058796454011_n.jpg?_nc_cat=109&ccb=2&_nc_sid=dbb9e7&_nc_ohc=GyYHMSWtvUIAX-zmbb_&_nc_ht=scontent-hkg4-2.xx&tp=6&oh=e6e17b234c8bfbec3665fe4e08790288&oe=5FEC3352" alt="..." width="65" class="mr-3 rounded-circle img-thumbnail shadow-sm">
      <div class="media-body">
        <h5 class="m-0">Quản Lý Sinh Viên</h5>
        <p class="font-weight-light text-muted mb-0">ADMIN</p>
      </div>
    </div>
  </div>

  <p class="text-gray font-weight-bold text-uppercase px-3 small pb-4 mb-0">Main</p>

  <ul class="nav flex-column bg-white mb-0">
    <li class="nav-item">
      <a href="#" class="nav-link text-dark font-italic bg-light">
                <i class="fa fa-th-large mr-3 text-primary fa-fw"></i>
                Home
            </a>
    </li>
    <li class="nav-item">
      <a href="#" class="nav-link text-dark font-italic">
                <i class="fa fa-address-card mr-3 text-primary fa-fw"></i>
                About
            </a>
    </li>
    <li class="nav-item">
      <a href="#" class="nav-link text-dark font-italic">
                <i class="fa fa-cubes mr-3 text-primary fa-fw"></i>
                Services
            </a>
    </li>
    <li class="nav-item">
      <a href="#" class="nav-link text-dark font-italic">
                <i class="fa fa-picture-o mr-3 text-primary fa-fw"></i>
                Gallery
            </a>
    </li>
  </ul>

  <p class="text-gray font-weight-bold text-uppercase px-3 small py-4 mb-0">Charts</p>

  <ul class="nav flex-column bg-white mb-0">
    <li class="nav-item">
      <a href="#" class="nav-link text-dark font-italic">
                <i class="fa fa-area-chart mr-3 text-primary fa-fw"></i>
                Area charts
            </a>
    </li>
    <li class="nav-item">
      <a href="#" class="nav-link text-dark font-italic">
                <i class="fa fa-bar-chart mr-3 text-primary fa-fw"></i>
                Bar charts
            </a>
    </li>
    <li class="nav-item">
      <a href="#" class="nav-link text-dark font-italic">
                <i class="fa fa-pie-chart mr-3 text-primary fa-fw"></i>
                Pie charts
            </a>
    </li>
    <li class="nav-item">
      <a href="#" class="nav-link text-dark font-italic">
                <i class="fa fa-line-chart mr-3 text-primary fa-fw"></i>
                Line charts
            </a>
    </li>
  </ul>
</div>
<!-- End vertical navbar -->


<!-- Page content holder -->
<div class="page-content p-5" id="content">
  <!-- Toggle button -->
  <button id="sidebarCollapse" type="button" class="btn btn-light bg-white rounded-pill shadow-sm px-4 mb-4"><i class="fa fa-bars mr-2"></i><small class="text-uppercase font-weight-bold"></small></button>
	      <form action="">
          <div class="p-1 bg-light rounded rounded-pill shadow-sm mb-4">
            <div class="input-group">
              <input type="search" id="searchSkins" placeholder="Nhập tên cần tìm" aria-describedby="button-addon1" class="form-control border-0 bg-light">
              <div class="input-group-append">
                <button id="button-addon1" type="submit" class="btn btn-link text-primary"><i class="fa fa-search"></i></button>
              </div>
            </div>
          </div>
        </form>
  <!-- Demo content -->
  <h2 class="display-4 text-white"><%=(request.getParameter("ID")==null?"Danh Sách Sinh Viên":"Thông Tin Chi Tiết") %></h2>
   <div class="row">
 <%
 if(request.getParameter("ID")!=null){%>
	<div class="row container d-flex justify-content-center hihi">
            <div class="col-xl-12 col-md-12">
                <div class="card user-card-full">
                    <div class="row m-l-0 m-r-0">
                        <div class="col-sm-4 bg-c-lite-green user-profile">
                            <div class="card-block text-center text-white">
                                <div class="m-b-25"> <img src="<%=dstk.get(0).getImg() %>" class="img-radius" alt="User-Profile-Image"> </div>
                                <h6 class="f-w-600"><%=dstk.get(0).getFirstName()+dstk.get(0).getLastName() %></h6>
                                <p>Web Designer</p> <i class=" mdi mdi-square-edit-outline feather icon-edit m-t-10 f-16"></i>
                            </div>
                        </div>
                        <div class="col-sm-8">
                            <div class="card-block">
                                
                                <div class="row">
                                    <div class="col-sm-6">
                                        <p class="m-b-10 f-w-600">Email</p>
                                        <h6 class="text-muted f-w-400">ahihi@gmail.com</h6>
                                    </div>
                                    <div class="col-sm-6">
                                        <p class="m-b-10 f-w-600">Phone</p>
                                        <h6 class="text-muted f-w-400">113</h6>
                                    </div>
                                </div>
                                
                                <div class="row">
                                    <div class="col-sm-6">
                                        <p class="m-b-10 f-w-600">DateOfBirth</p>
                                        <h6 class="text-muted f-w-400"><%=dstk.get(0).getDateOfBirth() %></h6>
                                    </div>
                                    <div class="col-sm-6">
                                        <p class="m-b-10 f-w-600">PlaceOfBirth</p>
                                        <h6 class="text-muted f-w-400"><%=dstk.get(0).getPlaceOfBirth() %></h6>
                                    </div>
                                </div>
                                <ul class="social-link list-unstyled m-t-40 m-b-10">
                                  <li><a href="#!" ><i class="fa fa-facebook"></i></a></li>
                                  <li><a href="#!" ><i class="fa fa-twitter"></i></a></li>
                                  <li><a href="#!" ><i class="fa fa-google"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
 <% }
 else{  
	 for(int i=0;i<dssv.size();i++){ %>
	
	 	<div class="col-md-12 col-lg-3 col-xl-3 item">
	 		  <div class="card" >
				    <img class="card-img-top" src="<%=dssv.get(i).getImg() %>" alt="Card image" style="width:100%">
				    <div class="card-body">
				      <h4 class="card-title"><%=dssv.get(i).getFirstName()+dssv.get(i).getLastName() %></h4>
				      <p class="card-text">Sinh Viên CNTT</p>
				      <a href="SinhVienController?ID=<%=dssv.get(i).getID() %>" class="btn btn-primary">Xem Chi Tiết</a>
				    </div>
			</div>
	 	</div>
	 
	 
	 
<% }} %>
</div>
</div>
  <script type="text/javascript">
                                document.getElementById("searchSkins")
                                .oninput = function() {
                                    var matcher = new RegExp(document.getElementById("searchSkins")
                                        .value, "gi");
                                    for (var i = 0; i < document.getElementsByClassName("col-md-12 col-lg-3 col-xl-3 item")
                                        .length; i++) {
                                        if (matcher.test(document.getElementsByClassName("card-title")[i].innerHTML)) {
                                            document.getElementsByClassName("col-md-12 col-lg-3 col-xl-3 item")[i].style.display = "inline-block";
                                        }
                                        else {
                                            document.getElementsByClassName("col-md-12 col-lg-3 col-xl-3 item")[i].style.display = "none";
                                        }
                                
                                    }
                                }   
 </script>
<script type="text/javascript">
$(function() {
	  // Sidebar toggle behavior
	  $('#sidebarCollapse').on('click', function() {
	    $('#sidebar, #content').toggleClass('active');
	  });
	});
</script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
</body>
</html>
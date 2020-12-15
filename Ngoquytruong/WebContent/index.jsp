<%@page import="java.util.ArrayList"%>
<%@page import="bean.mathangbean"%>
<%-- <%@page import="bean.Sinhvienbean"%> --%>
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
 	ArrayList<mathangbean> dsmh=(ArrayList<mathangbean>)request.getAttribute("dsmh");
	ArrayList<mathangbean> dstk=(ArrayList<mathangbean>)request.getAttribute("dstk"); 
%>
<div class="vertical-nav bg-white" id="sidebar">
  <div class="py-4 px-3 mb-4 bg-light">
    <div class="media d-flex align-items-center"><img src="https://scontent-hkg4-2.xx.fbcdn.net/v/t1.0-1/p160x160/117179292_2767398363479506_6780756058796454011_n.jpg?_nc_cat=109&ccb=2&_nc_sid=dbb9e7&_nc_ohc=GyYHMSWtvUIAX-zmbb_&_nc_ht=scontent-hkg4-2.xx&tp=6&oh=e6e17b234c8bfbec3665fe4e08790288&oe=5FEC3352" alt="..." width="65" class="mr-3 rounded-circle img-thumbnail shadow-sm">
      <div class="media-body">
        <h5 class="m-0">Quản Lý Mat Hang</h5>
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
              <input type="search" id="searchSkins" placeholder="Nhập tên sản phẩm hoặc nhà cung cấp" aria-describedby="button-addon1" class="form-control border-0 bg-light" name="searchSkins">
              <div class="input-group-append">
                <button id="button-addon1" type="submit" class="btn btn-link text-primary"><i class="fa fa-search"></i></button>
              </div>
            </div>
          </div>
        </form>
  <!-- Demo content -->
  <h2 class="display-4 text-white"><%=(request.getParameter("searchSkins")==null?"Danh Sách Mặt Hàng":"Tìm thấy"+dstk.size()+"Sản phẩm") %></h2>
   <div class="row">
  <%
  	if(request.getParameter("searchSkins")!=null){
 		if(dstk.size()==0){ %>
 			<div class="alert alert-success">
			  <strong>Trống!</strong> Không Tìm Thấy Sản Phẩm Theo Yêu Cầu !.
			</div>	
 	<% 	}
 		else
 			%>
 			
 			<% for(int i=0;i<dstk.size();i++){
 				%>
 			
 				<div class="col-md-12 col-lg-3 col-xl-3 item">
	 		 	 <div class="card" >
				    <img class="card-img-top" src="#" alt="Card image" style="width:100%">
				    <div class="card-body">
				      <h4 class="card-title"><%=dstk.get(i).getTenhang() %></h4>
				       <h3 class="card-title"><%=dsmh.get(i).getNhacungcap() %></h3>
				      <p class="card-text"></p>
				      <p>giá ban: <%=dstk.get(i).getGia() %> </p>
				      <p>số lượng: <%=dstk.get(i).getSoluong() %> </p>
				    </div>
			</div>
	 	</div>
	 
 				
 			<% }
  	}
  	else
	  for(int i=0;i<dsmh.size();i++){ %>
	
	 	<div class="col-md-12 col-lg-3 col-xl-3 item">
	 		  <div class="card" >
				    <img class="card-img-top" src="#" alt="Card image" style="width:100%">
				    <div class="card-body">
				      <h4 class="card-title"><%=dsmh.get(i).getTenhang() %></h4>
				       <h3 class="card-title"><%=dsmh.get(i).getNhacungcap() %></h3>
				      <p class="card-text"></p>
				      <p>giá ban: <%=dsmh.get(i).getGia() %> </p>
				      <p>số lượng: <%=dsmh.get(i).getSoluong() %> </p>
				    </div>
			</div>
	 	</div>
	 
	 
	 
<% }%> 
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
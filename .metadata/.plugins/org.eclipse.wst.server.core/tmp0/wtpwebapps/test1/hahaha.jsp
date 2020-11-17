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
	ArrayList<sachbean> dstk=(ArrayList<sachbean>)request.getAttribute("dssachtk");
	int m=dsloai.size();
	int n=ds.size();
	int o=dstk.size();
	 long soluong=0;
     if (session.getAttribute("GioHang")!=null){
     	Giohangbo gh=(Giohangbo)session.getAttribute("GioHang");
     	soluong=gh.Sum_cart();
     }
	Random rd=new Random();
	
%>
<div class="header-blue fixed-top">
            <nav class="navbar navbar-dark navbar-expand-md navigation-clean-search">
                <div class="container-fluid"><a class="navbar-brand" href="#">MinhKhaiBook</a><button class="navbar-toggler" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
                    <div class="collapse navbar-collapse" id="navcol-1">
                        <ul class="nav navbar-nav">
                            <li class="nav-item" role="presentation"><a class="nav-link active" href="SachController">Trang Chủ</a></li>
                            <li class="nav-item" role="presentation"><a class="nav-link active" href="#">Lịch sử mua hàng</a></li>
                            <li class="nav-item" role="presentation"><a class="nav-link active" href="#">Thanh toán</a></li>
                          
                            
                        </ul>
                          <div class="search_book">
                            <form action="">
                              <input class="form-control " id="searchbook" placeholder="Tìm sách" name="txttk" >
                            
                            </form>
                          </div>
                        <% 
                        	if(session.getAttribute("username")!=null){
                        		out.print("Xin chào"+session.getAttribute("username"));
                        	}else{
                        		%>
                        		<form class="form-inline mr-auto" target="_self">
                            <!-- <div class="form-group"><label for="search-field"><i class="fa fa-search"></i></label><input class="form-control search-field" type="search" name="search" id="search-field"></div> -->
                        </form><span class="navbar-text"> <a id="f-login" href="#"  class="login">Log In</a></span><a class="btn btn-light action-button" id="f-signup" role="button" href="#">Sign Up</a></div>
                        
                       <%  	}
                       			
                        %>
                </div>
            </nav>
           
        </div>
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
                    <div class="row">
                    
                       <% 
                       
                    	if(request.getParameter("txttk")!=null){
                    		
                       		for(int i=0;i<o;i++){	
                     		%>
                     		<div class="book book_1 col-md-3 col-lg-3 col-sm-12 col-12">
                                <div class="card" >
                                    <img class="card-img-top" src="<%=dstk.get(i).getAnh() %>" alt="Card image" style="width: 100%;height: 360px;">
                                    <div class="card-body">
                                      <h4 class="card-title"><%=dstk.get(i).getTensach() %></h4>
                                       <p class="card-text">Giá : <%=(long)dstk.get(i).getGia()+"  đ" %></p>
                                       <a href="cart.jsp?id=<%=dstk.get(i).getMasach() %>&action=view" class="btn btn-primary"><i class="fas fa-eye"></i> View</a>
                                     <a  href="cart.jsp?id=<%=dstk.get(i).getMasach() %>
                                     	&action=add
                                     	&tensach=<%=dstk.get(i).getTensach()%>
                                     	&hinhanh=<%=dstk.get(i).getAnh() %>
                                       &gia=<%=dstk.get(i).getGia() %>
                                       &tacgia=<%=dstk.get(i).getTacgia() %>" 
                                        class="btn btn-primary add_to_cart"><i class="fas fa-cart-plus"></i> Add To Cart</a>			
                                    </div>
                                  </div>
                       		 </div>	
                     			<% }
                     			
                       		}
                      	
                    	else  if(request.getParameter("type")==null){ %>
                       		<% for(int i=0;i<n;i++){
                    
                       			%>
                       			 <div class="book book_1 col-md-3 col-lg-3 col-sm-12 col-12">
                                <div class="card" >
                                    <img class="card-img-top img-fluid" src="<%=ds.get(i).getAnh() %>" alt="Card image" style="width: 100%;height: 360px;">
                                    <div class="card-body">
                                      <h4 class="card-title"><%=ds.get(i).getTensach() %></h4>
                                      <p class="card-text">Giá : <%=(long)ds.get(i).getGia()+"  đ" %></p>
                                       <a href="cart.jsp?id=<%=ds.get(i).getMasach() %>&action=view" class="btn btn-primary"><i class="fas fa-eye"></i> View</a>
                                         <a  href="cart.jsp?id=<%=ds.get(i).getMasach() %>
                                         &action=add
                                         &tensach=<%=ds.get(i).getTensach()%>
                                     	&hinhanh=<%=ds.get(i).getAnh() %>
                                       &gia=<%=ds.get(i).getGia() %>
                                       &tacgia=<%=ds.get(i).getTacgia() %>" 
                                        class="btn btn-primary add_to_cart" > <i class="fas fa-cart-plus"></i> Add To Cart</a>	
                                    </div>
                                  </div>
                       		 </div>
                     		<%} %>
                       	
                  <%     	}else if(request.getParameter("type")!=null){ %>

                 <% 		 String loaisach=request.getParameter("type");
                   			for(int i=0;i<n;i++){
                   			if(ds.get(i).getLoai().equalsIgnoreCase(loaisach.toLowerCase().trim())){
                   				%>
                   			 <div class="book book_1 col-md-3 col-lg-3 col-sm-12 col-12">
                                <div class="card" >
                                    <img class="card-img-top" src="<%=ds.get(i).getAnh() %>" alt="Card image" style="width: 100%;height: 360px;">
                                    <div class="card-body">
                                      <h4 class="card-title"><%=ds.get(i).getTensach() %></h4>
                                       <p class="card-text">Giá : <%=(long)ds.get(i).getGia()+"  đ" %></p>
                                       <a href="cart.jsp?id=<%=ds.get(i).getMasach() %>&action=view" class="btn btn-primary"><i class="fas fa-eye"></i> View</a>
                                           <a  href="cart.jsp?id=<%=ds.get(i).getMasach() %>
                                           &action=add
                                           &tensach=<%=ds.get(i).getTensach()%>
                                     	&hinhanh=<%=ds.get(i).getAnh()%>
                                       &gia=<%=ds.get(i).getGia() %>&tacgia=<%=ds.get(i).getTacgia() %>" 
                                        class="btn btn-primary add_to_cart" > <i class="fas fa-cart-plus"></i> Add To Cart</a>			
                                    </div>
                                  </div>
                       		 </div>
                   			<% 	}
                   		
                   			}
                   			
                       	}
                       
                       
                       %>
                      
                    </div>

              </div>


            
	</div>
</div>
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Thông Báo</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body" id="my_modal">
       
      </div>
      <div class="modal-footer">
        <a type="button" class="btn btn-outline-primary" data-dismiss="modal">Tiếp Tục Mua Sách</a>
      <!--   <a href="index.jsp" type="button" class="btn btn-outline-primary">Tiếp Tục Mua Sách</a> -->
   		<a href="ViewcartController" type="button" class="btn btn-outline-success">Xem giỏ hàng</a>
      </div>
    </div>
  </div>
</div>
		<!-- Login modal-->
<div class="modal fade" id="myModal">
    <div class="modal-dialog">
      <div class="modal-content">
       <!-- Modal body -->
       
        	<div class="login_form_wrapper">
		
		        <div class="row">
		            <div class="col-md-12 col-md-offset-2">
		                <!-- login_wrapper -->
		                <div class="login_wrapper">
		                    <div class="row">
		                        <div class="col-lg-6 col-md-6 col-xs-12 col-sm-6"> <a href="#" class="btn btn-primary facebook"> <span>Login with Facebook</span> <i class="fa fa-facebook"></i> </a> </div>
		                        <div class="col-lg-6 col-md-6 col-xs-12 col-sm-6"> <a href="#" class="btn btn-primary google-plus"> Login with Google <i class="fa fa-google-plus"></i> </a> </div>
		                    </div>
		                    <h2>or</h2>
		                    <div class="formsix-pos">
		                        <div class="form-group i-email"> <input type="email" class="form-control"  id="email2" placeholder="UserName"> </div>
		                    </div>
		                    <div class="formsix-e">
		                        <div class="form-group i-password"> <input type="password" class="form-control" id="password2" placeholder="Password"> </div>
		                    </div>
		                    <div class="login_remember_box"> <label class="control control--checkbox">Remember me <input type="checkbox"> <span class="control__indicator"></span> </label> <a href="#" class="forget_password"> Forgot Password </a> </div>
		                    <div class="login_btn_wrapper"> <a href="#" class="btn btn-primary login_btn"> Login </a> </div>
		                    <div class="login_message">
		                        <p>Don’t have an account ? <a href="#"> Sign up </a> </p>
		                    </div>
		                </div> <!-- /.login_wrapper-->
		            </div>
		        </div>
  
				</div>
      </div>
    </div>
  </div>
		<!-- Login modal-->
		<!-- sign modal-->
		  <div class="modal fade" id="sign_modal">
		    <div class="modal-dialog">
		      <div class="modal-content">      
		        <!-- Modal body -->
		        <div class="modal-body">
		          	    <div class="registration-form">
				        <form>
				            <div class="form-icon">
				                <span><i class="icon icon-user"></i></span>
				            </div>
				            <div class="form-group">
				                <input type="text" class="form-control item" id="username1" placeholder="Username">
				            </div>
				            <div class="form-group">
				                <input type="password" class="form-control item" id="password1" placeholder="Password">
				            </div>
				            <div class="form-group">
				                <input type="text" class="form-control item" id="email" placeholder="Email">
				            </div>
				            <div class="form-group">
				                <input type="text" class="form-control item" id="phone-number" placeholder="Phone Number">
				            </div>
				            <div class="form-group">
				                <input type="text" class="form-control item" id="birth-date" placeholder="Birth Date">
				            </div>
				            <div class="form-group">
				                <button type="button" class="btn btn-block create-account">Create Account</button>
				            </div>
				        </form>
					        <div class="social-media">
					            <h5>Sign up with social media</h5>
					            <div class="social-icons">
					                <a href="#"><i class="icon-social-facebook" title="Facebook"></i></a>
					                <a href="#"><i class="icon-social-google" title="Google"></i></a>
					                <a href="#"><i class="icon-social-twitter" title="Twitter"></i></a>
					            </div>
					        </div>
    </div>
  
		        </div>       
		      </div>
		    </div>
		  </div>
		  
  	<!-- sign modal-->
	  <script type="text/javascript">
        $(document).ready(function () {
            $('#f-login').click(function() {
            	  $('#myModal').modal('show');
            });
        });
    </script>
    	  <script type="text/javascript">
        $(document).ready(function () {
        	$(document).ready(function(){
        		  $('#birth-date').mask('00/00/0000');
        		  $('#phone-number').mask('0000-0000');
        		 });
            $('#f-signup').click(function() {
            	  $('#sign_modal').modal('show');
            });
        });
    </script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#sidebarCollapse').on('click', function () {
                $('#sidebar').toggleClass('active');
                $(this).toggleClass('active');
            });
        });
    </script>
    <script type="text/javascript">
					  $(document).ready(function(){
					 
					 $('.login_btn').click(function(){
						// alert("Đăng Nhập");
						// var url=$(this).attr('href');
						// event.preventDefault();
						var username=$('#email2').val();
						var password=$('#password2').val();
						//alert(password);
					   // AJAX Request
		 			   $.ajax({
					     url: 'dangnhapController',
					     type: 'POST',
					     data: {username:username,
					    	 password:password
		 			   			},
					     success:function(response){
					       if(response==1){
					    	//   $('#my_modal').html('Đã thêm <strong>'+tensach[1]+'</strong> vào giỏ hàng');
							  // $('#exampleModalCenter').modal('show');
							 ///  document.getElementById('slcart').innerHTML = parseInt($("#slcart").html())+1;
							 alert("Đăng Nhập Thành Công");
							window.location.assign("SachController");
					      }else{
					    alert(response);
					    alert("Đăng Nhập Thất Bại");
					      }
					       }
					   }); 
					 });
					
					});
					
					</script>
					
					<script>
				/* 	$("#myycart").click(function(){
						alert($("slcart").html());
					})
 */
					</script>
<script type="text/javascript">
					  $(document).ready(function(){
					 
					 $('.add_to_cart').click(function(){
						 var url=$(this).attr('href');
						 event.preventDefault();
						 var data = url.split("&");
						 var idtam=data[0].split("?");
						 var id=idtam[1].split("=");
						 var tensach=data[2].split("=");
						 var hinhanh=data[3].split("=");
						 var gia=data[4].split("=");
						 var tacgia=data[5].split("=");
						 var sl=4;
						   // Delete id
						//   var deleteid = splitid[1];
					//	 $('#my_modal').html('Đã thêm <strong>'+tacgia[1]+'</strong> vào giỏ hàng');
						// $('#exampleModalCenter').modal('show');
					   // AJAX Request
		 			   $.ajax({
					     url: 'cartController',
					     type: 'GET',
					     data: { id:id[1],
					    	 	tensach:tensach[1],
					    	 	tacgia:tacgia[1],
					    	 	gia:gia[1],
					    	 	hinhanh:hinhanh[1]},
					     success:function(response){
					       if(response){
					    	   $('#my_modal').html('Đã thêm <strong>'+tensach[1]+'</strong> vào giỏ hàng');
							   $('#exampleModalCenter').modal('show');
							   document.getElementById('slcart').innerHTML = parseInt($("#slcart").html())+1;
					      }else{
					    alert(response);
					    alert("Lỗi");
					      }
					       }
					   }); 
					 });
					
					});
					
					</script>
					
					<script>
				/* 	$("#myycart").click(function(){
						alert($("slcart").html());
					})
 */
					</script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
</body>
</html>
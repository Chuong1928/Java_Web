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
    <link href="https://fonts.googleapis.com/css2?family=Lato:wght@300&display=swap" rel="stylesheet">
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">    
    <link href="./css/home1.css" rel="stylesheet">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/js/bootstrap.min.js"></script>
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
	ArrayList<sachbean> dstype=(ArrayList<sachbean>)request.getAttribute("dssach_type");
	int m=dsloai.size();
	int n=ds.size();
	int o=dstk.size();
	int k=dstype.size();
	 long soluong=0;
     if (session.getAttribute("GioHang")!=null){
     	Giohangbo gh=(Giohangbo)session.getAttribute("GioHang");
     	soluong=gh.Sum_cart();
     }
	Random rd=new Random();
	int current_page;
	if(request.getParameter("page")==null) {
		current_page=1;
		
	}else
		current_page=Integer.parseInt(request.getParameter("page"));
	int limit=8;
	int total_page_of_type=(int)Math.ceil(k/8)+1;
	if(current_page==1){
	k=	limit*current_page;
	}
	int start=(current_page-1)*limit;
%>

<%@include file="header.jsp" %>
 <div class="wrapper">
        <!-- Sidebar Holder -->
        <nav id="sidebar">
            <div class="sidebar-header">
                <h3><a href="#" id="mainlogo">MinhKhai Búc</a></h3>
            </div>

            <ul class="list-unstyled components">
       
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
                       	
                  <%     	}else if(request.getParameter("type")!=null ){ 
                	  		int c=0;
                   			for(int i=start;i<k;i++){
                   				c++;
                   				%>
                   			 <div class="book book_1 col-md-3 col-lg-3 col-sm-12 col-12">
                                <div class="card" >
                                    <img class="card-img-top" src="<%=dstype.get(i).getAnh() %>" alt="Card image" style="width: 100%;height: 360px;">
                                    <div class="card-body">
                                      <h4 class="card-title"><%=dstype.get(i).getTensach() %></h4>
                                       <p class="card-text">Giá : <%=(long)dstype.get(i).getGia()+"  đ" %></p>
                                       <a href="cart.jsp?id=<%=dstype.get(i).getMasach() %>&action=view" class="btn btn-primary"><i class="fas fa-eye"></i> View</a>
                                           <a  href="cart.jsp?id=<%=dstype.get(i).getMasach() %>
                                           &action=add
                                           &tensach=<%=dstype.get(i).getTensach()%>
                                     	&hinhanh=<%=dstype.get(i).getAnh()%>
                                       &gia=<%=dstype.get(i).getGia() %>&tacgia=<%=ds.get(i).getTacgia() %>" 
                                        class="btn btn-primary add_to_cart" > <i class="fas fa-cart-plus"></i> Add To Cart</a>			
                                    </div>
                                  </div>
                       		 </div>
                   			<% 	
                   			if(c==limit){
                   				break;
                   			}
                   			}
                   			for(int j=1;j<=total_page_of_type;j++){
                   				
                   				%>
                   				<a href="SachController?type=<%=request.getParameter("type") %>&page=<%=j%>">Trang<%=j %></a>
                   		<%}
                       	}
                       
                       
                       %>
                      
                    </div>
			

              </div>
	</div>
</div>
<%@include file="modal.jsp" %>
		  	<div class="col-3 back-to-top">
                  <a id="button"></a>
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
        		/*   $('#birth-date').mask('00/00/0000');
        		  $('#phone-number').mask('0000-0000'); */
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
					<!-- Dangkytaikhoan -->
					  <script type="text/javascript">
					  $(document).ready(function(){
					 
					 $('.create-account').click(function(){
						alert("Đăng kí");
						// var url=$(this).attr('href');
						// event.preventDefault();
						var username=$('#username1').val();
						var password=$('#password1').val();
						var email=$('#email').val();
						var diachi=$('#diachi').val();
						var hoten=$('#hoten').val();
						var sodth=$('#phone-number').val();
						//alert(password);
					   // AJAX Request
		 			   $.ajax({
					     url: 'sign_upController',
					     type: 'POST',
					     data: {username:username,
					    		 password:password,
					    		 email:email,
					    		 diachi:diachi,
					    		 hoten:hoten,
					    		 sodth:sodth,
		 			   			},
					     success:function(response){
					       if(response==1){
					    	//   $('#my_modal').html('Đã thêm <strong>'+tensach[1]+'</strong> vào giỏ hàng');
							  // $('#exampleModalCenter').modal('show');
							 ///  document.getElementById('slcart').innerHTML = parseInt($("#slcart").html())+1;
							 alert("Đăng Ký Thành Công")
							window.location.assign("SachController");
					      }else{
					    alert(response);
					    alert("Đăng Ký Thất Bại");
					      }
					       }
					   }); 
					 });
					
					});
					
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
					
	<!--      back to top -->
			 <script type="text/javascript">
			  var btn = $('#button');
			
			$(window).scroll(function() {
			  if ($(window).scrollTop() > 300) {
			    btn.addClass('show');
			  } else {
			    btn.removeClass('show');
			  }
			});
			
			btn.on('click', function(e) {
			  e.preventDefault();
			  $('html, body').animate({scrollTop:0}, '300');
			});
			
			
			</script> 
	<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script> -->
</body>
</html>
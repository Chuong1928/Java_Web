<%@page import="java.util.Random"%>
<%@page import="bo.Giohangbo"%>
<%@page import="bean.loaibean"%>
<%@page import="bean.Giohangbean"%>
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
   <link rel="stylesheet" href="css/login.css">
</head>
<body>
<%
		Random rd=new Random();
		Giohangbo gh=(Giohangbo)session.getAttribute("GioHang");
		ArrayList<sachbean> ds=(ArrayList<sachbean>)request.getAttribute("dssach");
		ArrayList<loaibean> dsloai=(ArrayList<loaibean>)request.getAttribute("dsloai");
		int n=ds.size();
		int m=dsloai.size();
		long soluong=(long)request.getAttribute("soluong");
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
                <li  class="active"> <a href="SachController" >Trang Chủ</a></li>
                <li>
                    <a href="#homeSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Danh Mục Sách <span class="badge badge-pill badge-danger"style="margin-left: 10px;">Hot</span></a>
                    <ul class="collapse list-unstyled" id="homeSubmenu">
                        <% for(int i=0;i<m;i++){  %>
					 <li>
					    <a href="SachController?type=<%=dsloai.get(i).getMaloai() %>"><%=dsloai.get(i).getTenloai() %><span class="badge badge-pill badge-danger" style="margin-left: 10px;"><%=rd.nextInt(100)%></span></a>
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
                    <a href="https://www.youtube.com/watch?v=6PebsRhDesA&t=64s" class="download" target="_blank"><i class="nav-main-link-icon fab fa-youtube " style="color: red;"></i>Video hướng dẫn mua acc</a>
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
	<div class="mycart">
	<%
	
		

		 if(gh!=null && gh.ds.size()!=0){
			int i=1;
				%>
				<div class="row" id="giohang">
					<div class="col-md-8 col-lg-8 col-xl-8 col-sm-12 info-product">
					<% for(Giohangbean g:gh.ds){
							%>
						<div class="format">
							<div class="img-product">
								<img src="<%=g.getAnh() %>" >
							</div>
						<div class="name-product">
								<h3><%=g.getTensach() %></h3>
								<p>Tác giả : <%=g.getTacgia() %></p>
								<p> <%=(long)g.getGiaban()+" đ"%> </p>
						</div>
						<div class="method">
								<div class="number_input">
							      	<span class="tru" id="number_down" onclick="tru<%=i%>()">-</span>
							      	<input type="tel" class="soluong_input" id="soluong<%=i %>" value="<%=(int)g.getSoluong()%>">
							      	<span class="cong" id="number_up" onclick="cong<%=i%>()">+</span>

				      			</div>
				      			
						</div>
						<button class="delete btn btn-outline-danger" id="del_<%=g.getMasach()%>">Xóa</button>
				</div>
				<script type="text/javascript">
					function cong<%=i%>()
					{
					    var value =parseInt(document.getElementById('soluong<%=i%>').value);
					    value = isNaN(value) ? 0 : value;
					    value++;
					    document.getElementById('soluong<%=i%>').value = value;
					}
					function tru<%=i%>()
					{
					    var value = parseInt(document.getElementById('soluong<%=i%>').value);
					    value = isNaN(value) ? 0 : value;
					    value--;
					    if(value==0){
					    	document.getElementById('number_down').attr("disabled", true);
					    }
					    document.getElementById('soluong<%=i%>').value = value;
					}
					</script>
					<script type="text/javascript">
					  $(document).ready(function(){
					
					 // tăng số lượng 
					 $('.cong').click(function(){
					   var slm=parseInt(document.getElementById('soluong<%=i%>').value);
					   //  id
					   var deleteid = '<%=g.getMasach().trim() %>';
					   // AJAX Request
					   $.ajax({
					     url: 'editController',
					     type: 'GET',
					     data: { id:deleteid,
					    	 	slm:slm},
					     sussess:function(response){
					       if(response==1){
					    	   //alert("Tăng số lượng thành công");			    	   
					    	   return;
					      }else{
					    alert(response);
					    alert("Lỗi");
					      }
					       }
					   });
					 });
					
					});
					
					</script>
				
						
		<%	i++;}
		%>
					</div>
					<div class="col-md-4 col-lg-4 col-xl-4 col-sm-12 ">
						<div class="checkout">
							<ul>
								<li>Thành tiền</li>
								<li><h3><%=gh.checkout()%> đ</h3></li>
							</ul>
							<button type="button" class="btn btn-success thanhtoan">Tiến hành đặt hàng</button>
						</div>
						
						
					</div>
				</div>
	<%  }else{
		%>
		<div class="alert alert-success">
		    <strong>KHÔNG CÓ GÌ HẾT!</strong> Quay lại <a href="SachController" class="alert-link">MUA NGAY</a>.
		  </div>
		<% 
			}
	
		%>
	
	<style type="text/css">

		.loading{
		  position: absolute;
			  left: 50%;
			  top: 50%;
			display: none;
			width: 220px;
			height: 60px;
			border: 2px solid #0fc32a;
			color: #fff;
			font-size: 20px;
			font-weight: bold;
			text-transform: uppercase;
			text-align: center;
			text-decoration: none;
			line-height: 56px;
			box-sizing: border-box;
			border-radius: 50px;
			background-color: transparent;
			outline: none;
			transition: all ease 0.5s;
		}
		.btn-active{
			font-size: 0;
			width: 200px;
			height: 200px;
			border-radius: 50%;
			border-left-color: transparent;
			animation: rotate 1.4s ease 0.5s infinite;
		}
		@keyframes rotate{
			0%{
				transform: rotate(360deg);
			}
		}

		.success{
			position: relative;
			background-color: #fff;
			animation: bounce .3s ease-in;
		}
		@keyframes bounce{
			0%{
				transform: scale(0.9);
			}
		}
		.success:before{
			content: '';
			position: absolute;
			background: url(./img/check-solid.svg) no-repeat; /* Check Solid is fontawesome icon */
			left: 0;
			right: 0;
			margin: 0 auto;
			width: 31px;
			height: 31px;
			line-height: 31px;
			top: 8px;
		}
	</style> 
	<button class="loading" id="load">Button</button>
	
	<script type="text/javascript">
$(document).ready(function(){
	$(".thanhtoan").click(function(){
		var  tendn="<%=session.getAttribute("username")!=null?session.getAttribute("username"):"1"%>";
		if(tendn=="1"){
			alert("Bạn chưa đăng nhập");
			$('#myModal').modal('show');
		}else{
			//alert("Bạn đax đăng nhập");
			window.location.assign("ThanhToanController");
		}
/* 		alert("thanh toan");
		// Add Success Class After 3.7 Seconds
		
	   $.ajax({
     url: 'ThanhToanController',
     type: 'GET',
     data: { id:deleteid },
     success:function(response){
       if(response ==1){
 		  $(el).closest('div').css('background','tomato');
		   $(el).closest('div').fadeOut(800,function(){
		      $(this).remove();
		   });
		   document.getElementById('slcart').innerHTML = $("#slcart").html()-1;
		   window.location.assign("ViewcartController");
      }else{
    alert('Invalid ID.');
    alert(response);
      }

    }
   }); */

		// Remove class after 5 second
	
		//window.location.assign("ThanhToanController");
	});
});

</script>
<script type="text/javascript">
$(document).ready(function(){
	$(".cong").click(function(){
		document.getElementById('giohang').style.opacity = "0.09";
		document.getElementById('load').style.display = "block";
		$(".loading").addClass("btn-active");
		// Add Success Class After 3.7 Seconds
		setTimeout(function(){
			$(".loading").addClass("success");
			document.getElementById('load').style.display = "none";
			document.getElementById('giohang').style.opacity = "1";
		}, 1000);

		// Remove class after 5 second
		setTimeout(function(){
			$(".loading").removeClass("btn-active");
			$(".loading").removeClass("success");
		}, 1000);
		window.location.assign("ViewcartController");
	});
});

</script>
<script type="text/javascript">
  $(document).ready(function(){

 // Delete 
 $('.delete').click(function(){
	//var sl=$("slcart").html();
	
  if( confirm('Bạn Có Muốn Xóa Dữ liệu Không')){
   var el = this;
   var id = this.id;
   var splitid = id.split("_");
   // Delete id
   var deleteid = splitid[1];
   // AJAX Request
   $.ajax({
     url: 'deleteController',
     type: 'GET',
     data: { id:deleteid },
     success:function(response){
       if(response ==1){
 		  $(el).closest('div').css('background','tomato');
		   $(el).closest('div').fadeOut(800,function(){
		      $(this).remove();
		   });
		   document.getElementById('slcart').innerHTML = $("#slcart").html()-1;
		   window.location.assign("ViewcartController");
      }else{
    alert('Invalid ID.');
    alert(response);
      }

    }
   });
}
 });

});
</script>
			
</div>


            
	</div>
</div>
<%@include file="modal.jsp" %>
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
   		<a href="viewcart.jsp" type="button" class="btn btn-outline-success">Xem giỏ hàng</a>
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
    	<script>
					/* $(".delete").click(function(){
						 if( confirm('Bạn Có Muốn Xóa Dữ liệu Không')){
						document.getElementById('slcart').innerHTML = $("#slcart").html()-1;}
					}) */

					</script>
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
							window.location.assign("ViewcartController");
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
							window.location.assign("ViewcartController");
					      }else{
					    alert(response);
					    alert("Đăng Ký Thất Bại");
					      }
					       }
					   }); 
					 });
					
					});
					
					</script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
</body>
</html>
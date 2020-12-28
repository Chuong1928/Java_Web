
<%@page import="bean.donviunghobean"%>
<%@page import="bean.dotunghobean"%>
<%@page import="bean.dotnhanunghobean"%>
<%@page import="java.util.ArrayList"%>
<%-- <%@page import="bean.Sinhvienbean"%> --%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>ahihi</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<%
		response.setCharacterEncoding("utf-8");
	ArrayList<dotunghobean> dsduh = (ArrayList<dotunghobean>) request.getAttribute("dsduh");
	ArrayList<donviunghobean> dvuh = (ArrayList<donviunghobean>) request.getAttribute("dvuh");
	ArrayList<dotnhanunghobean> dsdnuh = (ArrayList<dotnhanunghobean>) request.getAttribute("dsdnuh");
	%>
	<div class="vertical-nav bg-white" id="sidebar">
		<div class="py-4 px-3 mb-4 bg-light">
			<div class="media d-flex align-items-center">
				<img
					src="https://scontent-hkg4-2.xx.fbcdn.net/v/t1.0-1/p160x160/117179292_2767398363479506_6780756058796454011_n.jpg?_nc_cat=109&ccb=2&_nc_sid=dbb9e7&_nc_ohc=GyYHMSWtvUIAX-zmbb_&_nc_ht=scontent-hkg4-2.xx&tp=6&oh=e6e17b234c8bfbec3665fe4e08790288&oe=5FEC3352"
					alt="..." width="65"
					class="mr-3 rounded-circle img-thumbnail shadow-sm">
				<div class="media-body">
					<h5 class="m-0">Quản Lý Mat Hang</h5>
					<p class="font-weight-light text-muted mb-0">ADMIN</p>
				</div>
			</div>
		</div>

		<p
			class="text-gray font-weight-bold text-uppercase px-3 small pb-4 mb-0">Main</p>

		<ul class="nav flex-column bg-white mb-0">
			<li class="nav-item"><a href="DotUngHoController"
				class="nav-link text-dark font-italic "> <i
					class="fa fa-th-large mr-3 text-primary fa-fw"></i> Đợt ủng Hộ
			</a></li>
			<li class="nav-item"><a href="DotNhanUngHoController"
				class="nav-link text-dark font-italic bg-light"> <i
					class="fa fa-th-large mr-3 text-primary fa-fw "></i> Đợt Nhận ủng
					Hộ
			</a></li>
			<li class="nav-item"><a href="#"
				class="nav-link text-dark font-italic"> <i
					class="fa fa-address-card mr-3 text-primary fa-fw"></i> Thống Kê
			</a></li>
		<!-- 	<li class="nav-item"><a href="#"
				class="nav-link text-dark font-italic"> <i
					class="fa fa-cubes mr-3 text-primary fa-fw"></i> Tạo Đợt Ủng Hộ Mới
			</a></li> -->
			<!-- <li class="nav-item"><a href="#"
				class="nav-link text-dark font-italic"> <i
					class="fa fa-picture-o mr-3 text-primary fa-fw"></i> Gallery
			</a></li> -->
		</ul>
	</div>
	<!-- End vertical navbar -->


	<!-- Page content holder -->
	<div class="page-content p-5" id="content">
		<!-- Toggle button -->
		<button id="sidebarCollapse" type="button"
			class="btn btn-light bg-white rounded-pill shadow-sm px-4 mb-4">
			<i class="fa fa-bars mr-2"></i><small
				class="text-uppercase font-weight-bold"></small>
		</button>
		<form action="">
			<div class="p-1 bg-light rounded rounded-pill shadow-sm mb-4">
				<div class="input-group">
					<input type="search" id="searchSkins"
						placeholder="Nhập tên sản phẩm hoặc nhà cung cấp"
						aria-describedby="button-addon1"
						class="form-control border-0 bg-light" name="searchSkins">
					<div class="input-group-append">
						<button id="button-addon1" type="submit"
							class="btn btn-link text-primary">
							<i class="fa fa-search"></i>
						</button>
					</div>
				</div>
			</div>
		</form>
		<!-- Demo content -->
		<h2 class="display-4 text-white">Danh Sách Đợt Nhận Ủng Hộ</h2>
		<table class="table">
			<thead>
				<tr>
					<!-- <th scope="col">STT</th> -->
					<th scope="col">Mã Đợt Nhận ủng Hộ</th>
					<th scope="col">Mã Hộ Dân</th>
					<th scope="col">Ngày Nhận ủng hộ</th>
					<th scope="col">Hình thức nhận ủng hộ</th>
					<th scope="col">Số lượng nhận ủng hộ</th>
					<th scope="col">Đơn vị tính</th>
					<th scope="col">Chức Năng</th>
					
				</tr>
			</thead>
			<%
				for (int i = 0; i < dsdnuh.size(); i++) {
			%>
			<tbody>
				<tr>

					<td><%=dsdnuh.get(i).getMadotnhanungho()%></td>
					<td><%=dsdnuh.get(i).getMahodan()%></td>
					<td><%=dsdnuh.get(i).getNgaynhanungho()%></td>
					<td><%=dsdnuh.get(i).getHinhthucnhanungho()%></td>
					<td><%=dsdnuh.get(i).getSoluongnhanungho()%></td>
					<td><%=dsdnuh.get(i).getDonvitinh()%></td>
					<td >
					<button type="button" id="del_<%=dsdnuh.get(i).getMadotnhanungho()%>" class="btn btn-outline-danger delete"  >Xóa</button></td>
				</tr>

			</tbody>
			<%
				}
			%>

		</table>
	</div>
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
     url: 'XoaDotNhanUngHo',
     type: 'POST',
     data: { id:deleteid },
     success:function(response){
       if(response == 1){
    	   alert("xóa thành công");
 		   $(el).closest('tbody').css('background','tomato');
		   $(el).closest('tbody').fadeOut(800,function(){
		      $(this).remove();
		   }); 
		
      }else{
   // alert('Invalid ID.');
    alert(response);
      }

    }
   });
}
 });

});
</script>
	<script type="text/javascript">
		$(function() {
			// Sidebar toggle behavior
			$('#sidebarCollapse').on('click', function() {
				$('#sidebar, #content').toggleClass('active');
			});
		});
	</script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
</body>
</html>
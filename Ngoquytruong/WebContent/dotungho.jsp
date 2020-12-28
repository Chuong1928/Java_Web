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
	/* 	ArrayList<mathangbean> dsmh=(ArrayList<mathangbean>)request.getAttribute("dsmh");
	ArrayList<mathangbean> dstk=(ArrayList<mathangbean>)request.getAttribute("dstk");  */
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
				class="nav-link text-dark font-italic bg-light"> <i
					class="fa fa-th-large mr-3 text-primary fa-fw"></i> Đợt ủng Hộ
			</a></li>
			<li class="nav-item"><a href="DotNhanUngHoController"
				class="nav-link text-dark font-italic "> <i
					class="fa fa-th-large mr-3 text-primary fa-fw"></i> Đợt Nhận ủng Hộ
			</a></li>
			<li class="nav-item"><a href="#"
				class="nav-link text-dark font-italic"> <i
					class="fa fa-address-card mr-3 text-primary fa-fw"></i> Thống Kê
			</a></li>
			<!-- <li class="nav-item"><a href="#"
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
		<h2 class="display-4 text-white">Danh Sách Đợt Ủng Hộ</h2>
		<table class="table">
			<thead>
				<tr>
					<!-- <th scope="col">STT</th> -->
					<th scope="col">Mã Đợt ủng Hộ</th>
					<th scope="col">Mã Đơn Vị Ung Hộ</th>
					<th scope="col">Ngày Ung Hộ</th>
					<th scope="col">Hình thức ủng hộ</th>
					<th scope="col">Số lượng ủng hộ</th>
					<th scope="col">Đơn vị tính</th>
					<th scope="col">Chức Năng</th>
				</tr>
			</thead>
			<%
				for (int i = 0; i < dsduh.size(); i++) {
			%>
			<tbody>
				<tr>

					<td data-maduh<%=dsduh.get(i).getMadotungho() %> ><%=dsduh.get(i).getMadotungho()%></td>
					<td data-madv<%=dsduh.get(i).getMadotungho() %>><%=dsduh.get(i).getMadonviungho()%></td>
					<td data-ngayuh<%=dsduh.get(i).getMadotungho() %>><%=dsduh.get(i).getNgayungho()%></td>
					<td data-hinhthuc<%=dsduh.get(i).getMadotungho() %>><%=dsduh.get(i).getHinhthucungho()%></td>
					<td data-sl<%=dsduh.get(i).getMadotungho() %>><%=dsduh.get(i).getSoluongungho()%></td>
					<td data-donvi<%=dsduh.get(i).getMadotungho() %>><%=dsduh.get(i).getDonvitinh()%></td>
					<td><button type="button"
							class="btn btn-outline-success edit<%=i%>"
							id="del_<%=dsduh.get(i).getMadotungho()%>">Sửa</button></td>
				</tr>

			</tbody>
			<script>
							$(document).ready(function(){
							  $(".edit<%=i%>").click(function(){
							    $("#myModal1").modal({backdrop: true});
							    $("#madotungho").val("<%=dsduh.get(i).getMadotungho()%>");
								$("#madonviuh").val("<%=dsduh.get(i).getMadonviungho()%>");
								$("#ngayuh").val("<%=dsduh.get(i).getNgayungho()%>");
								$("#hinhthucuh").val("<%=dsduh.get(i).getHinhthucungho()%>");
								$("#soluonguh").val("<%=dsduh.get(i).getSoluongungho()%>");
								$("#donvitinh").val("<%=dsduh.get(i).getDonvitinh()%>");

								});
								});
			</script>
			<%
				}
			%>

		</table>
		<script type="text/javascript">
			  $(document).ready(function(){
			
			 // update 
			 $('.btn-save').click(function(){
				  	var madotungho= $("#madotungho").val();
					var madonviuh=$("#madonviuh").val();
					var ngayuh=	$("#ngayuh").val();
					var hinhthucuh=	$("#hinhthucuh").val();
					var soluonguh=$("#soluonguh").val();
					var donvitinh=$("#donvitinh").val();
				

			   // AJAX Request
			   $.ajax({
			     url: 'ChinhSuaDotUngHo',
			     type: 'POST',
			     data: { 
			    	 madotungho:madotungho,
			    	 madonviuh:madonviuh,
			    	 ngayuh:ngayuh,
			    	 hinhthucuh:hinhthucuh,
			    	 soluonguh:soluonguh,
			    	 donvitinh:donvitinh
			    	 
			     },
			     success:function(response){
			       if(response == 1){
			    	/*   document.getAttribute("data-madv"+madotungho).innerHTML = "hihi";
			    	  document.getAttribute("data-donvi"+madotungho).innerHTML = "haha"; */
			    	   $('#myModal1').modal('hide');
			    	
			    	   
			    	   alert("cập nhật thành công");
			    	   window.location.assign("UngHoController");
					
			      }else{
			   // alert('Invalid ID.');
			   	 alert(response);
			      }
			
			    }
			   });
			 });
			
			});
			</script>
		<div class="modal fade" id="myModal1" role="dialog">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h4 class="modal-title aaaa">Chỉnh Sửa</h4>
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>
					<div class="modal-body">
						<div class="column" style="width: 100%; float: left;">
							<div class="col-12">
								<div class="form-group">
									<label class="col-sm-12 control-label">Mã đợt ủng hộ</label>
									<div class="col-sm-12">
										<input type="text" class="form-control" id="madotungho"
											name="memberID" readonly>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-12 control-label">Mã đơn vị ủng hộ</label>
									<div class="col-sm-12">
										<input type="text" class="form-control" id="madonviuh"
											name="membername">
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-12 control-label">Ngày ủng hộ</label>
									<div class="col-sm-12">
										<input type="text" class="form-control" id="ngayuh"
											name="memberemail">
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-12 control-label">Hình thức ủng hộ</label>
									<div class="col-sm-12">
										<input type="text" class="form-control" id="hinhthucuh"
											name="memberemail">
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-12 control-label">Số lượng ủng hộ</label>
									<div class="col-sm-12">
										<input type="text" class="form-control" id="soluonguh"
											name="memberemail">
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-12 control-label">Đơn vị tính</label>
									<div class="col-sm-12">
										<input type="text" class="form-control" id="donvitinh"
											name="memberemail">
									</div>
								</div>
								<div class="form-group "style="width: 100%;text-align: center;">
									<button type="button" class="btn btn-success btn-save" style="width: 60%;">Lưu</button>
								</div>

							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
		<h1>Thêm đợt ủng hộ mới</h1>
		<div>

			<form method="post" action="ThemDotUngHo"
				style="width: 50%; margin: 0 auto;">
				<div class="mb-3 hihihi">
					<label for="exampleInputEmail1" class="form-label">Mã đợt
						ủng hộ</label> <input type="text" name="txtmadotuh" class="form-control"
						id="a">
				</div>
				<div class="mb-3 hihihi">
					<label for="exampleInputEmail1" class="form-label">Đơn vị
						ủng hộ</label> <select name="txtdonviuh"
						class="select ip_txt form-control" style="width: 100%;">

						<%
							for (int i = 0; i < dvuh.size(); i++) {
						%>
						<option value="<%=dvuh.get(i).getMaDVUH()%>">
							<%=dvuh.get(i).getMaDVUH()%>
						</option>
						<%
							}
						%>

					</select>
				</div>
				<div class="mb-3 hihihi">
					<label for="exampleInputEmail1" class="form-label">Ngày ủng
						hộ</label> <input type="date" class="form-control" name="txtngayuh"
						value="<%=java.time.LocalDate.now()%>">
				</div>
				<div class="mb-3 hihihi">
					<label for="exampleInputEmail1" class="form-label">Hình
						thức ủng hộ</label> <input type="text" name="txthinthucuh"
						class="form-control" id="c">
				</div>
				<div class="mb-3 hihihi">
					<label for="exampleInputEmail1" class="form-label">Số lượng
						ủng hộ</label> <input type="text" name="txtsluh" class="form-control"
						id="d">
				</div>
				<div class="mb-3 hihihi">
					<label for="exampleInputEmail1" class="form-label">Đơn vị
						tính</label> <input type="text" name="txtdvtinh" class="form-control"
						id="e">
				</div>


				<input class="btn btn-primary" type="submit" style="display: block;"
					value="Thêm">
				<hr>
			</form>
		</div>
	</div>
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
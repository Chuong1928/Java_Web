<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
   
      <title>Chường đẹp chai</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" type="text/css" href="css/tailieu.css">

</head>
<body>
  	<div class="main" id="main">
  		<div class="title">
  			<span>Đăng Ký</span>
  			<a href="#"><img id="close" src="https://tailieu.vn/static/b2013az/templates/version1/default/images/icons/closefanbox.gif" onclick=close();></a>
  		</div>
  		<div class="conten">
  			<p id="tl_x"> &#9830; Đăng nhập nhanh qua Facebook</p>
  			<div class="lg-w-fb">
  				
  				<button class="lg"><img src="https://www.hieuhien.vn/wp-content/uploads/2018/12/facebooklite.png">Login with FaceBook</button>
  			</div>
  			<div class="slogan">
  				<p > &diams; hưởng ngay <span class="redd">50</span> ePoints khi đăng ký mới & <span class="redd">5</span> ePoints</p>
  				<p style="margin-left: 10px;">cho mỗi lượt chia sẻ Facebook</p>
  				<p style="cursor: pointer;">&diams;Tích lũy nhiều ePoints khi Upload tài liệu <span style="font-weight: 600;" class="bluee">>></span>  </p>
  			</div>
  			<a href="#" style="text-decoration: none;"><p id="a_regiter">Đăng ký mới bằng tài khoản TaiLieu.VN</p></a>
  			<p id="p_note">Bạn cần kích hoạt tài khoản qua Email sau khi đăng ký để nhận ngay 50 ePoints thưởng từ TaiLieu.VN</p>
  			<input type="text" name="un" placeholder="Nhập Username" class="ip_txt">
  			<input type="text" name="name" placeholder="Nhập Họ và Tên" class="ip_txt">
  			<div style="float: left;">
  					<input type="text" name="pass" placeholder="Nhập Mật khẩu" class="ip_txt">
  			<select name="gioitinh" class="select ip_txt">
						<option value="">Giới Tính</option>
						<option value="1">Nam</option>
						<option value="0">Nữ</option>
					</select>
  			</div>
  			<div>
	  			<input type="text" name="repass" placeholder="Nhập lại mật khẩu" class="ip_txt">
	  			<select name="birthday" class="select ip_txt" style="width: 80px;">
							<option value="">Ngày sinh</option>
							<%
								for(int i=1;i<=31;i++){
									%>
									<option > <%=i %> </option> 
								 <% }

							 %>
							 
				</select>
				<select name="month_bd" class="select ip_txt ">
							<option value="">Tháng</option>
								<%
								for(int i=1;i<=12;i++){
									%>
									<option > <%=i %> </option> 
								 <% }

							 %>
				</select>
				<select name="year_bd" class="select ip_txt">
							<option value="">Năm</option>
								<%
								for(int i=1980;i<=2020;i++){
									%>
									<option > <%=i %> </option> 
								 <% }

							 %>
				</select>
			
  			</div>
  			<div style="float: left;">
  				<input type="text" name="email" placeholder="Nhập địa chỉ Email" class="ip_txt">
  				<select name="city"  class="select ip_txt">
						<option value="">Tỉnh/TP</option>
						<%
							String tinhthanh[]={"An Giang","Bà Rịa - Vũng Tàu","Bắc Giang","Bắc Kạn",
									"Bạc Liêu",
									"Bắc Ninh",
									"Bến Tre",
									"Bình Định",
									"Bình Dương",
									"Bình Phước",
									"Bình Thuận",
									"Cà Mau",
									"Cao Bằng",
									"Đắk Lắk",
									"Đắk Nông",
									"Điện Biên",
									"Đồng Nai",
									"Đồng Tháp",
									"Gia Lai",
									"Hà Giang",
									"Hà Nam",
									"Hà Tĩnh",
									"Hải Dương",
									"Hậu Giang",
									"Hòa Bình",
									"Hưng Yên",
									"Khánh Hòa",
									"Kiên Giang",
									"Kon Tum",
									"Lai Châu",
									"Lâm Đồng",
									"Lạng Sơn",
									"Lào Cai",
									"Long An",
									"Nam Định",
									"Nghệ An",
									"Ninh Bình",
									"Ninh Thuận",
									"Phú Thọ",
									"Quảng Bình",
									"Quảng Nam",
									"Quảng Ngãi",
									"Quảng Ninh",
									"Quảng Trị",
									"Sóc Trăng",
									"Sơn La",
									"Tây Ninh",
									"Thái Bình",
									"Thái Nguyên",
									"Thanh Hóa",
									"Thừa Thiên Huế",
									"Tiền Giang",
									"Trà Vinh",
									"Tuyên Quang",
									"Vĩnh Long",
									"Vĩnh Phúc",
									"Yên Bái",
									"Phú Yên",	
									"Cần Thơ",
									"Đà Nẵng",
									"Hải Phòng",
									"Hà Nội",
									"TP HCM"};
								for(String i : tinhthanh){
									%>
									<option > <%=i %> </option> 
								 <% }

							 %>
					</select>
  			</div>
  			<div style="float: left;">
  				<input type="text" name="reemail" placeholder="Nhập lại địa chỉ Email" class="ip_txt">
  				<input type="text" name="code" placeholder="Nhập mã xác nhận" class="ip_txt" style="width: 120px;">
  				<span>12345</span>
  				<a href="tailieu.php" style="text-decoration: none;font-size: 12px;">Chọn mã xác nhận khác</a>
  			</div>
  		</div>
  		<div class="clear"></div>
  		<div class="check">
  			<button class="creat_acc" style="float: left;">Đăng Ký</button>
  			<form style="float: left;margin-top: 5px;" action="#">
  				<input checked="checked" type="checkbox" name="checkb">
  				<span style="font-size: 12px;color: #444;font-weight: 400;">Tôi đồng ý với các Chính Sách và Thỏa Thuận Sử Dụng của TaiLieu.VN</span>
  			</form>
  			
  		</div>
  		<div class="border_top"></div>
  		<span class="check2 bluee">Bạn đã có tài khoản TaiLieu.VN? Đăng nhập</span>
  		<div class="footer">
  			<div class="f-left">
  				<p>Thưởng <span class="bluee">50</span> ePoints khi đăng ký mới</p>
  				<p>Tặng <span class="bluee">5</span> ePoints cho mỗi lượt chia sẻ Facebook</p>
  			</div>
  			<div class="f-center">
  				<p>Xem và Tải trên <span class="bluee">1 Triệu</span> Tài Liệu miễn phí</p>
  				<p>Kết nối <span class="bluee">5 Triệu</span> Thành Viên <a style="text-decoration: none;
    color: #0080AF;" href="https://tailieu.vn/">TaiLieu.VN</a> </p>
  			</div>
  			<div class="f-right">
  				<p>Kết bạn với <a style="text-decoration: none;
    color: #0080AF;font-weight: 600;" href="https://tailieu.vn/">TaiLieu.VN</a>  trên <a target="_blank" href="https://www.facebook.com/tailieu.vn" style="text-decoration: none;
    color: #0080AF;font-weight: 600;">TaiLieu.VN</a> </p>
    <p>để nhận link download miễn phí <span class="redd">100</span></p>
    <p>tài liệu <span class="redd">HOT</span> mỗi ngày</p>
  			</div>
  		</div>
  	</div>
  	<script type="text/javascript">
  		function close(){
  			document.getElemenById("main").style.display='none';
  		}
  	</script>
</body>
</html>
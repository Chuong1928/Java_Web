<%@page import="bean.sachbean"%>
<%@page import="bo.Giohangbo"%>
<%@page import="bean.Giohangbean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Hashtable"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Chường đẹp chai</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/minhkhai_style.css">
</head>
<body>
	<%
	
		Giohangbo gh=(Giohangbo)session.getAttribute("GioHang");
		if(gh==null){
			
		}
		if(gh!=null){int i=1; %>
				<table class="table table-bordered" id="giohang">
			  <thead>
			    <tr>
			      <th scope="col">STT</th>
			      <th scope="col">Tên sách</th>
			      <th scope="col">Mã sách sách</th>
			       <th scope="col">Hình ảnh</th>
			      <th scope="col">Số Lượng</th>
			      <th scope="col">Giá Bán</th>
			      <th scope="col">Thao tác</th>
			    </tr>
			  </thead>
		<% 	for(Giohangbean g:gh.ds){
				
				%>
	
			<tbody >
			    <tr>
			      <td><%=i %></td>
			      <td><%=g.getTensach() %></td>
			      <td id="masach<%=i%>"><%=g.getMasach().trim()%></td>
			       <td> <img src="<%=g.getAnh() %>" ></td>
			      <td><div class="number_input">
			      	<span class="tru" id="number_down" onclick="tru<%=i%>()">-</span>
			      	<input type="tel" class="soluong_input" id="soluong<%=i %>" value="<%=(int)g.getSoluong()%>">
			      	<span class="cong" id="number_up" onclick="cong<%=i%>()">+</span></div></td>
			      <td><%=g.getGiaban()%></td>
			     <%--  <td><a href='Delete_book.jsp?masach=<%=g.getMasach()%>'>Xóa</td> --%>
			      <td> <button class="delete btn btn-outline-danger" id="del_<%=g.getMasach()%>">Xóa</button></td>
			    </tr>
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
					     url: 'Edit_element.jsp',
					     type: 'GET',
					     data: { id:deleteid,
					    	 	slm:slm},
					     success:function(response){
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
	 		</tbody>
			
				
		<%	
		i++;
		}
		}
		%>
</table>
	<style type="text/css">
		body{
			/* background-color: #2c3e50; */
			font-family: Open Sans, sans-serif;
		}
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
		.active{
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
	$(".cong").click(function(){
		document.getElementById('giohang').style.opacity = "0.09";
		document.getElementById('load').style.display = "block";
		$(".loading").addClass("active");
		// Add Success Class After 3.7 Seconds
		setTimeout(function(){
			$(".loading").addClass("success");
			document.getElementById('load').style.display = "none";
			document.getElementById('giohang').style.opacity = "1";
		}, 3000);

		// Remove class after 5 second
		setTimeout(function(){
			$(".loading").removeClass("active");
			$(".loading").removeClass("success");
		}, 3000);
		
	});
});

</script>
<script type="text/javascript">
  $(document).ready(function(){

 // Delete 
 $('.delete').click(function(){
  if( confirm('Bạn Có Muốn Xóa Dữ liệu Không')){
   var el = this;
   var id = this.id;
   var splitid = id.split("_");
   // Delete id
   var deleteid = splitid[1];
   // AJAX Request
   $.ajax({
     url: 'Delete_book.jsp',
     type: 'GET',
     data: { id:deleteid },
     success:function(response){
       if(response ==1){
   $(el).closest('tr').css('background','tomato');
   $(el).closest('tr').fadeOut(800,function(){
      $(this).remove();
   });
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

</body>
</html>
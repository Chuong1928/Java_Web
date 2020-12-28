
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="java.util.Random"%>
<%@page import="bo.Giohangbo"%>
<%@page import="bean.loaibean"%>
<%@page import="bo.loaibo"%>
<%@page import="bean.sachbean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bo.sachbo"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=Lato:wght@300&display=swap" rel="stylesheet">
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">    
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/js/bootstrap.min.js"></script>
<script type="text/javascript" src="./js/script.js"></script>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
 <link href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.4.1/css/simple-line-icons.min.css" rel="stylesheet">
</head>
<body>
<%
		response.setCharacterEncoding("utf-8");
		ArrayList<loaibean> dsloai=(ArrayList<loaibean>)request.getAttribute("dsloai");
		ArrayList<sachbean> ds=(ArrayList<sachbean>)request.getAttribute("dssach");

%>
<!-- 	<form method="post" action="UploadController" enctype= "multipart/form-data">
  Ho Ten: <input type="text" name="txthoten" value=""> <br>
  Đia chi: <input type="text" name="txtdiachi" value=""> <br>
  file: <input type="file" name="txtfile"><br>
  <input type="submit"> 
  </form>   -->
	<form method="post" action="UploadController" enctype= "multipart/form-data" style="width: 50%;
    margin: 0 auto;">
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Mã Sách</label>
    <input type="text" name="txtmasach" class="form-control" id="a" >
  </div>
 <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Tên Sách</label>
    <input type="text" name="txttensach" class="form-control" id="b" >
  </div>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Tác giả</label>
    <input type="text" name="txttacgia" class="form-control" id="c" >
  </div>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Gía</label>
    <input type="text" name="txtgia" class="form-control" id="d" >
  </div>
    <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Số tâp</label>
    <input type="text" name="txttap" class="form-control" id="e" >
  </div>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Số lượng</label>
    <input type="text" name="txtsoluong" class="form-control" id="f" >
  </div>
   <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Ngày Nhập</label>
    <input type="date" class="form-control" name="txtngay" value="<%=java.time.LocalDate.now() %>" >			
  </div>
    <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">ảnh</label>
    <input type="file" class="form-control" name="txtfile" >
  </div>
    <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Loại sách	</label>    
    <select name="txtloaisach" class="select ip_txt" style="width: 100%;">
							
							<%
								for(int i=0;i<dsloai.size();i++){
									%>
									<option value="<%=dsloai.get(i).getMaloai() %>" > <%=dsloai.get(i).getTenloai()%> </option> 
								 <% }

							 %>
							 
	</select>	
  </div>
  
   <input class="btn btn-primary" type="submit"> 
   <hr>
</form>
	<div>
		<div class="table-responsive">
					<table class="table table-data">
								  <thead class="thead-dark">
								    <tr>
								      <th scope="col">Mã sách</th>
								      <th scope="col">Tên sách</th>
								      <th scope="col">Tác giả</th>
								      <th scope="col">Giá Bán</th>
								      <th scope="col">Đường dẫn ảnh</th>
								      <th scope="col">Số Lượng</th>
								       <th scope="col">Chức Năng</th>
								    </tr>
								  </thead>
						<%
							for(int i=0;i<ds.size();i++){%>
					<tbody class="book-data">
						<tr>
							<td contenteditable="true"><%=ds.get(i).getMasach() %></td>
							<td contenteditable="true"><%=ds.get(i).getTensach() %></td>
							<td contenteditable="true"><%=ds.get(i).getTacgia() %></td>
							<td contenteditable="true"><%=ds.get(i).getGia() %></td>
							<td contenteditable="true"><%=ds.get(i).getAnh() %></td>
							<td contenteditable="true"></td>
							<td ><button type="button" class="btn btn-outline-success edit<%=i %>" id="del_<%=ds.get(i).getMasach()%>">Xem</button>
							<button type="button" id="del_<%=ds.get(i).getMasach()%>" class="btn btn-outline-danger delete"  >Xóa</button></td>
						</tr>
						
					</tbody>	
					    <script>
							$(document).ready(function(){
							  $(".edit<%=i%>").click(function(){
							    $("#myModal1").modal({backdrop: true});
							    $("#masach").val("<%=ds.get(i).getMasach() %>");
							    $("#tensach").val("hihi");
							    $("#tacgia").val("hihi");
							    
							
							  });
							});
							</script>
				
						<%
						}
						%>
					</table>
				
</div>
	
	</div>
  <div class="modal fade" id="myModal1" role="dialog">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title aaaa">Chỉnh Sửa</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        <div class="modal-body">
                              <div class="column" style="width: 60%;float: left;"> 
                        <div class="col-xs-4">
                          <div class="form-group">
                            <label class="col-sm-12 control-label">Mã Sách</label>
                            <div class="col-sm-12">
                              <input type = "text" class = "form-control" id="masach"
                                name = "memberID" readonly >
                            </div>  
                          </div> 
                          <div class="form-group">
                            <label class="col-sm-12 control-label">Tên sách</label>
                            <div class="col-sm-12">
                              <input type = "text" class = "form-control" id="tensach"
                                name = "membername"  >
                            </div>  
                          </div> 
                          <div class="form-group">
                            <label class="col-sm-12 control-label">Tác gia</label>
                            <div class="col-sm-12">
                              <input type = "text" class = "form-control" id="tacgia"
                                name = "memberemail"  >
                            </div>  
                          </div> 
                          <div class="form-group">
                            <button  style="
                        width: 88%;
                        margin-left: 12px;
                        background-color: green;"class="save" >Lưu</button> 
                          </div> 
                          
                </div>
          </div>
        </div>
       
      </div>
    </div>
  </div>

<!-- <script>
$(document).ready(function(){
  /*  	alert("ok");
   	$("table.book-data");
   	console.log() */
   	var list = document.querySelectorAll(".table-data .book-data tr td");
   	//console.log(list)
   	for(var i=0;i<list.length;i++){
   		list[i].addEventListener("click",function(){
   			console.log("add event")
   			console.log(this)
   			this.href="hihi.com";
   			//list[i].contenteditable="true";
   		})
   		
   	}
    $("td").blur(function(){
        alert("Sự kiện blur() vừa mới xảy ra");
    })
   
});


</script> -->
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
     url: 'delete_book_Controller',
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
</body>
</html>
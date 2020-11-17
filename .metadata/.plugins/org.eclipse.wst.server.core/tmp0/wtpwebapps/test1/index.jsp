<%@page import="bo.Giohangbo"%>
<%@page import="bean.loaibean"%>
<%@page import="bo.loaibo"%>
<%@page import="bean.sachbean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bo.sachbo"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chường đẹp chai</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700">
       <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <link rel="stylesheet" href="css/minhkhai_style.css">
</head>
<body>
<%
		
		sachbo sbo=new sachbo();
		ArrayList<sachbean> ds= sbo.getsach();
		int n=ds.size();
		loaibo lbo= new loaibo();
		ArrayList<loaibean> dsloai=lbo.getloai();
		int m=dsloai.size();
		 long soluong=0;
        if (session.getAttribute("GioHang")!=null){
        	Giohangbo gh=(Giohangbo)session.getAttribute("GioHang");
        	soluong=gh.Sum_cart();
        }
%>
	    <style>


/* Left column (menu) */
.left {
  flex: 15%;
  padding: 15px 0;
}

.left h2 {
  padding-left: 8px;
}

/* Right column (page content) */
.right {
   border-radius: 23px;
    background: #fff;
    flex: 80%;
    padding: 15px;
    margin-left: 10px;  
}

/* Style the search box */
#mySearch {
  width: 100%;
  font-size: 18px;
  padding: 11px;
  border: 1px solid #ddd;
}

/* Style the navigation menu inside the left column */
#myMenu {
  list-style-type: none;
  padding: 0;
  margin: 0;
}

#myMenu li a {
  padding: 12px;
  text-decoration: none;
  color: black;
  display: block
}

#myMenu li a:hover {
  background-color: #eee;
}
.collapse ul li:hover{
    border-radius: 11px;
    background: #b3afad;
    font-size: 17px;
}
</style>
    <div>
        <div class="header-blue">
            <nav class="navbar navbar-dark navbar-expand-md navigation-clean-search">
                <div class="container"><a class="navbar-brand" href="#">MinhKhaiBook</a><button class="navbar-toggler" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
                    <div class="collapse navbar-collapse"
                        id="navcol-1">
                        <ul class="nav navbar-nav">
                            <li class="nav-item" role="presentation"><a class="nav-link active" href="index.jsp">Trang Chủ</a></li>
                            <li class="nav-item" role="presentation"><a class="nav-link active" href="#">Lịch sử mua hàng</a></li>
                            <li class="nav-item" role="presentation"><a class="nav-link active" href="#">Thanh toán</a></li>
                            <li class="nav-item" role="presentation"><a class="nav-link active" href="viewcart.jsp">Rỏ Hàng<span class="badge badge-light" style="margin-left: 10px;"><%=soluong %></span></a></li>
                        </ul>
                        <form class="form-inline mr-auto" target="_self">
                            <!-- <div class="form-group"><label for="search-field"><i class="fa fa-search"></i></label><input class="form-control search-field" type="search" name="search" id="search-field"></div> -->
                        </form><span class="navbar-text"> <a href="#" class="login">Log In</a></span><a class="btn btn-light action-button" role="button" href="#">Sign Up</a></div>
                </div>
            </nav>
            <hr>
            <div class="container hero">
                
            <div class="row">
              <div class="left"     >
                <h2>Danh Mục Sách</h2>
                <input type="text" id="mySearch" onkeyup="myFunction()" placeholder="Search.." title="Type in a category">
                <ul id="myMenu">
                  <% for(int i=0;i<m;i++){  %>
					 <li>
					    <a href="index.jsp?type=<%=dsloai.get(i).getTenloai() %>"><%=dsloai.get(i).getTenloai() %></a>
					  </li>
					  
					  <%} %>
                
                </ul>
              </div>
              <!--right -->
              <div class="right" >
                    <div class="row">
                         <div class="search_book">
                            <form action="">
                              <input class="form-control " id="searchbook" placeholder="Tìm sách" name="txttk" >
                            
                            </form>
                          </div>
                       <% 
                      	if(request.getParameter("txttk")!=null){
                       		ArrayList<sachbean> dstk;
                       		dstk=sbo.TimTen(request.getParameter("txttk"));
                       		int sl=dstk.size();
                       		for(int i=0;i<sl;i++){%>
                       			 <div class="book book_1 col-md-3 col-lg-3 col-sm-12 col-12">
                                <div class="card" >
                                    <img class="card-img-top" src="<%=dstk.get(i).getAnh() %>" alt="Card image" style="width: 100%;height: 360px;">
                                    <div class="card-body">
                                      <h4 class="card-title"><%=dstk.get(i).getTensach() %></h4>
                                       <p class="card-text">Giá : <%=dstk.get(i).getGia()+"  đ" %></p>
                                       <a href="cart.jsp?id=<%=dstk.get(i).getMasach() %>&action=view" class="btn btn-primary">View</a>
                                     <a  href="cart.jsp?id=<%=ds.get(i).getMasach() %>
                                     	&action=add
                                     	&tensach=<%=ds.get(i).getTensach().toString()%>
                                     	&hinhanh=<%=ds.get(i).getAnh().toString() %>
                                       &gia=<%=ds.get(i).getGia() %>
                                       &tacgia=<%=ds.get(i).getTacgia().toString() %>" 
                                        class="btn btn-primary add_to_cart">Add To Cart</a>			
                                    </div>
                                  </div>
                       		 </div>	
                       	<%	}
                      	}
                      	else if(request.getParameter("type")==null){ %>
                       		<% for(int i=0;i<n;i++){
                    
                       			%>
                       			 <div class="book book_1 col-md-3 col-lg-3 col-sm-12 col-12">
                                <div class="card" >
                                    <img class="card-img-top" src="<%=ds.get(i).getAnh() %>" alt="Card image" style="width: 100%;height: 360px;">
                                    <div class="card-body">
                                      <h4 class="card-title"><%=ds.get(i).getTensach() %></h4>
                                      <p class="card-text">Giá : <%=ds.get(i).getGia()+"  đ" %></p>
                                       <a href="cart.jsp?id=<%=ds.get(i).getMasach() %>&action=view" class="btn btn-primary">View</a>
                                         <a  href="cart.jsp?id=<%=ds.get(i).getMasach() %>
                                         &action=add
                                         &tensach=<%=ds.get(i).getTensach().toString()%>
                                     	&hinhanh=<%=ds.get(i).getAnh().toString() %>
                                       &gia=<%=ds.get(i).getGia() %>
                                       &tacgia=<%=ds.get(i).getTacgia().toString() %>" 
                                        class="btn btn-primary add_to_cart" >Add To Cart</a>	
                                    </div>
                                  </div>
                       		 </div>
                     		<%} %>
                       	
                  <%     	}else if(request.getParameter("type")!=null){ %>

                 <% 		 	String loaisach=request.getParameter("type");
                   			for(int i=0;i<n;i++){
                   			if(ds.get(i).getLoai().equalsIgnoreCase(loaisach)){
                   				%>
                   			 <div class="book book_1 col-md-3 col-lg-3 col-sm-12 col-12">
                                <div class="card" >
                                    <img class="card-img-top" src="<%=ds.get(i).getAnh() %>" alt="Card image" style="width: 100%;height: 360px;">
                                    <div class="card-body">
                                      <h4 class="card-title"><%=ds.get(i).getTensach() %></h4>
                                       <p class="card-text">Giá : <%=ds.get(i).getGia()+"  đ" %></p>
                                       <a href="cart.jsp?id=<%=ds.get(i).getMasach() %>&action=view" class="btn btn-primary">View</a>
                                           <a  href="cart.jsp?id=<%=ds.get(i).getMasach() %>
                                           &action=add
                                           &tensach=<%=ds.get(i).getTensach().toString()%>
                                     	&hinhanh=<%=ds.get(i).getAnh().toString() %>
                                       &gia=<%=ds.get(i).getGia() %>&tacgia=<%=ds.get(i).getTacgia().toString() %>" 
                                        class="btn btn-primary add_to_cart" >Add To Cart</a>			
                                    </div>
                                  </div>
                       		 </div>
                   			<% 	}
                   			}
                   			
                       	}
                       
                       
                       %>
                      
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
   		<a href="viewcart.jsp" type="button" class="btn btn-outline-success">Xem giỏ hàng</a>
      </div>
    </div>
  </div>
</div>
              <!-- end right -->
            </div>
            </div>
        </div>
    </div>
    </div>
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
						   // Delete id
						//   var deleteid = splitid[1];
					//	 $('#my_modal').html('Đã thêm <strong>'+tacgia[1]+'</strong> vào giỏ hàng');
						// $('#exampleModalCenter').modal('show');
					   // AJAX Request
		 			   $.ajax({
					     url: 'cart.jsp',
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
					      }else{
					    alert(response);
					    alert("Lỗi");
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
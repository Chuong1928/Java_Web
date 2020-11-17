<%@page import="java.util.Random"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
<%
//  Calendar n= Calendar.getInstance();//Lay ngay gio tren server 
  //int ngay= n.get(Calendar.DATE);//Lay ngay he thong
  //int thang= n.get(Calendar.MONTH)+1;//0..11
  //int nam= n.get(Calendar.YEAR);
%>
<style>
	.ketqua{
	text-align: center;
    width: 100%;
    margin-bottom: 1rem;
    color: #212529;
    }
    .result{
  width: 50%;
    background: #f1f1f1;
    position: absolute;
    left: 20%;
    top: 8%;
    
    }
    .mb-3{
    width: 200px;
    float: left;
    }
</style>
<div class="result">
<form method="post">
    <div class="input-group mb-3">
      <div class="input-group-prepend">
        <span class="input-group-text">Ngày</span>
      </div>
      <select name="day" style="width: 120px;">
							
							<option value="">Ngày</option>
							<%
								for(int i=1;i<=31;i++){
									%>
									<option  > <%=i %> </option> 
								 <% }

							 %>
							 
	</select>
    </div>

    <div class="input-group mb-3">
      <div class="input-group-append">
        <span class="input-group-text">Tháng</span>
      </div>
      <select name="month" style="width: 120px;">
							chọn tháng
							<option value="">Tháng</option>
								<%
								for(int i=1;i<=12;i++){
									%>
									<option  > <%=i %> </option> 
								 <% }

							 %>
	</select>
    </div>
       <div class="input-group mb-3">
      <div class="input-group-append">
        <span class="input-group-text">Năm</span>
      </div>
  <select name="year" style="width: 120px;">
							<option value="">Năm</option>
								<%
								for(int i=2010;i<=2020;i++){
									%>
									<option   > <%=i %> </option> 
								 <% }

							 %>
	</select>
    </div>
    <button type="submit" class="btn btn-primary" ">Xem Kết Qủa</button>
  </form>

		<%
			Calendar cal=Calendar.getInstance();
			if(request.getParameter("a")!=null){
				%>
				<h4 style="text-align: center; ">
				Kết Qủa Xổ Số Ngày 
				 <%=request.getParameter("a")%>
				 -<%=request.getParameter("b")%>
				 -<%=request.getParameter("c")%>
				   </h4>
				   <%
				   Random rd=new Random();
				   
				   
				   %>
				<table class="table ketqua">
					  <thead>
					    <tr>
					      <th scope="col">Giải</th>
					      <th scope="col">Kết Qủa Quay Số</th>
					    </tr>
					  </thead>
					  <tbody>
					    <tr>
					      <th scope="row" style="color: red;">Đặc Biệt</th>
					      <td style="position: absolute;left: 50%; color: red;"> <%=rd.nextInt(10000) %>  </td>
					 
					    </tr>
					    <tr>
					      <th scope="row">Giải nhất</th>
					      <td style="position:absolute; left: 50%;"><%=rd.nextInt(10000) %></td>
					   
					    </tr>
					    <tr>
					      <th scope="row">Giải nhì</th>
					      <td style="position:absolute; left: 40%;"><%=rd.nextInt(10000) %></td>
					      <td style="position:absolute; left: 60%;"><%=rd.nextInt(10000) %></td>
					    </tr>
					    <tr>
					      <th scope="row">Giải ba</th>
					     <td style="position:absolute; left: 32%;"><%=rd.nextInt(10000) %></td>
					     <td style="position:absolute; left: 52%;"><%=rd.nextInt(10000) %></td>
					      <td style="position:absolute; left: 72%;"><%=rd.nextInt(10000) %></td>
					    </tr>
					    <tr>
					      <th scope="row">Giải bốn</th>
					    <td style="position:absolute; left: 25%;"><%=rd.nextInt(10000) %></td>
					     <td style="position:absolute; left: 42%;"><%=rd.nextInt(10000) %></td>
					      <td style="position:absolute; left: 62%;"><%=rd.nextInt(10000) %></td>
					      <td style="position:absolute; left: 82%;"><%=rd.nextInt(10000) %></td>
					    </tr>
					    <tr>
					      <th scope="row" style="position: relative;top: 20px;">Giải năm</th>
					      <td style="position:absolute; left: 32%;"><%=rd.nextInt(10000) %></td>
					     <td style="position:absolute; left: 52%;"><%=rd.nextInt(10000) %></td>
					      <td style="position:absolute; left: 72%;"><%=rd.nextInt(10000) %></td>
					    </tr>
					    <tr style="height: 50px;">
					      <td style="position:absolute; left: 32%;"><%=rd.nextInt(10000) %></td>
					     <td style="position:absolute; left: 52%;"><%=rd.nextInt(10000) %></td>
					      <td style="position:absolute; left: 72%;"><%=rd.nextInt(10000) %></td>
					    </tr>
					    <tr>
					      <th scope="row">Giải sáu</th>
					         <td style="position:absolute; left: 32%;"><%=rd.nextInt(10000) %></td>
					     <td style="position:absolute; left: 52%;"><%=rd.nextInt(10000) %></td>
					      <td style="position:absolute; left: 72%;"><%=rd.nextInt(10000) %></td>
					    </tr>
					    <tr>
					      <th scope="row">Giải bảy</th>
					       <td style="position:absolute; left: 25%;"><%=rd.nextInt(10000) %></td>
					     <td style="position:absolute; left: 42%;"><%=rd.nextInt(10000) %></td>
					      <td style="position:absolute; left: 62%;"><%=rd.nextInt(10000) %></td>
					      <td style="position:absolute; left: 82%;"><%=rd.nextInt(10000) %></td>
					    </tr>
					 
					  </tbody>
					</table>
				<% 
			}
		%>	
	</div>
	<% 
		String d=request.getParameter("day");
		String m=request.getParameter("month");
		String y=request.getParameter("year");
		if(d!=null&&y!=null&&m!=null){
			response.sendRedirect("soxo.jsp?a="+d+"&b="+m+"&c="+y);
		}
	
			
	%>
</div>
<!-- <table width="1000">
      <tr>
          <td> 
              <a href="soxo.jsp?gt=db"> Doc bao</a> <hr>
              <a href="soxo.jsp?gt=tt"> The thao</a> <hr>
              <a href="soxo.jsp?gt=kd"> kinh doanh</a> <hr>
           </td>
          <td> 
 <%
            String ts=request.getParameter("gt");
            if(ts==null)
            	 out.print("Chay lan dau");
            else
            	if(ts.equals("tb"))
            		out.print("Hien thi tt cua trang doc bao");
            	else
            		if(ts.equals("tt"))
                		out.print("Hien thi tt cua trang the thao");
                	else
                		out.print("Trang kinh doanh");
          %> </td>
      </tr>
   </table> -->
</body>
</html>
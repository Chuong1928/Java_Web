<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link href="./css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
<%!
  public int sum(int a, int b) {
      return a * b;
  }
%>
		<div class="tittle"><h1 style="text-align: center;"> Bảng cửu chương</h1></div>
		<form action="">
		<input type="text" name="num" value="" placeholder="Nhập số Bảng cửu chương">
		<input type="submit"  value="Xem">
		</form>
		<%
			String cc=request.getParameter("num");
			if(cc!=null){%>
				<p> bảng cửu chương</p>
				<div class="cuuchuong">
					<table border="1"  cellpadding="0" cellspacing="1"
    			width="100" style="float: left;">
						<tr>
							<td>Nhân <%=cc %></td>
						</tr>
						
					 	<%for(int i=1;i<=10;i++){
					 		int c=Integer.parseInt(cc);%> 
					      <tr>
					          <td> <p> <%=cc %> X <%=i %> = <%=sum(c,i) %></p> </td>
					      </tr>
					      <%} %>
				</table>
				</div>
			<% 
				}
		%>
		<!-- 
		<div class="cuuchuong">
		<table border="1"  cellpadding="0" cellspacing="1"
    			width="100" style="float: left;">
						<tr>
							<td>Nhân 1</td>
						</tr>
						
					 	<%for(int i=1;i<=10;i++){ %> 
					      <tr>
					          <td> <p> 1 X <%=i %> = <%=sum(1,i) %></p> </td>
					      </tr>
					      <%} %>
				</table>
				<table border="1"  cellpadding="0" cellspacing="1"
    			width="100" style="float: left;">
						<tr>
							<td>Nhân 2</td>
						</tr>
						
					 	<%for(int i=1;i<=10;i++){ %> 
					      <tr>
					          <td> <p> 2 X <%=i %> = <%=sum(2,i) %></p> </td>
					      </tr>
					      <%} %>
				</table>
					<table border="1"  cellpadding="0" cellspacing="1"
    			width="100" style="float: left;" >
						<tr>
							<td>Nhân 3</td>
						</tr>
						
					 	<%for(int i=1;i<=10;i++){ %> 
					      <tr>
					          <td> <p> 3 X <%=i %> = <%=sum(3,i) %></p> </td>
					      </tr>
					      <%} %>
				</table>
				<table border="1"  cellpadding="0" cellspacing="1"
    			width="100" style="float: left;">
						<tr>
							<td>Nhân 4</td>
						</tr>
						
					 	<%for(int i=1;i<=10;i++){ %> 
					      <tr>
					          <td> <p> 4 X <%=i %> = <%=sum(4,i) %></p> </td>
					      </tr>
					      <%} %>
				</table>
					<table border="1"  cellpadding="0" cellspacing="1"
    			width="100" style="float: left;">
						<tr>
							<td>Nhân 5</td>
						</tr>
						
					 	<%for(int i=1;i<=10;i++){ %> 
					      <tr>
					          <td> <p> 5 X <%=i %> = <%=sum(5,i) %></p> </td>
					      </tr>
					      <%} %>
				</table>
					<table border="1"  cellpadding="0" cellspacing="1"
    			width="100" style="float: left;" >
						<tr>
							<td>Nhân 6</td>
						</tr>
						
					 	<%for(int i=1;i<=10;i++){ %> 
					      <tr>
					          <td> <p> 6 X <%=i %> = <%=sum(6,i) %></p> </td>
					      </tr>
					      <%} %>
				</table>
				<table border="1"  cellpadding="0" cellspacing="1"
    			width="100" style="float: left;">
						<tr>
							<td>Nhân 7</td>
						</tr>
						
					 	<%for(int i=1;i<=10;i++){ %> 
					      <tr>
					          <td> <p> 7 X <%=i %> = <%=sum(7,i) %></p> </td>
					      </tr>
					      <%} %>
				</table>
					<table border="1"  cellpadding="0" cellspacing="1"
    			width="100" style="float: left;">
						<tr>
							<td>Nhân 8</td>
						</tr>
						
					 	<%for(int i=1;i<=10;i++){ %> 
					      <tr>
					          <td> <p> 8 X <%=i %> = <%=sum(8,i) %></p> </td>
					      </tr>
					      <%} %>
				</table>
					<table border="1"  cellpadding="0" cellspacing="1"
    			width="100" style="float: left;" >
						<tr>
							<td>Nhân 9</td>
						</tr>
						
					 	<%for(int i=1;i<=10;i++){ %> 
					      <tr>
					          <td> <p> 9 X <%=i %> = <%=sum(9,i) %></p> </td>
					      </tr>
					      <%} %>
				</table>
			
		</div> -->
		
</body>
</html>
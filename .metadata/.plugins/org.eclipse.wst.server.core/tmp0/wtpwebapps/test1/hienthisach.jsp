<%@page import="bean.sachbean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bo.sachbo"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<%
		sachbo sbo=new sachbo();
		ArrayList<sachbean> ds= sbo.getsach();
		int n=ds.size();
		

%>
	<table>
			<% for(int i=0;i<n;i++) { %>
				<tr>
					<td>
						<%=ds.get(i).getMasach() %>
						<%=ds.get(i).getTensach() %><br>
						<%=ds.get(i).getTacgia()%><br>
						<%=ds.get(i).getGia() %><br>
						<img alt="" src="<%=ds.get(i).getAnh() %>"><br>
						<%=ds.get(i).getLoai() %><br>
					</td>
				
				</tr>
			
			<% 
			}
			%>
			
			
			
			
	</table>
</body>
</html>
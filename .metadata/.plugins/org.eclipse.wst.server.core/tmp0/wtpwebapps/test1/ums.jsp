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
  <link rel="stylesheet" type="text/css" href="css/ums.css">

</head>
<body>
    <div class="main">
        <div class="m_left">
          
        </div>
        <div class="m_center">
            <div class="logo">
              <img src="https://student.husc.edu.vn/Themes/Login/images/Logo-ko-nen.png" style="cursor: pointer;">
            </div>
            <div class="ums_img">
              <img src="https://student.husc.edu.vn/Themes/Login/images/image1.png" style="cursor: pointer;">
            </div>
            <div class="left_logo">
            	<img alt="" src="https://student.husc.edu.vn/Themes/Login/images/logo-small.png">
            </div>
        </div>
        <div class="m_right">
          <form class="form_login" method="post" action="ums.jsp">
              <span class="form_tt">Sinh viên</span>
              <div class="msv">
                <label style="margin-bottom: 7px;
    font-size: 12px;
    max-width: 100%;
    display: block;
    font-weight: 700;">Mã sinh viên :</label>
                <input type="text" name="msv" class="myform" placeholder="Mã sinh viên">
              </div>
              <div class="pass">
                <label style="margin-bottom: 7px;
    font-size: 12px;
    max-width: 100%;
    display: block;
    font-weight: 700;">Mật khẩu :</label>
                <input type="password" name="mk" class="myform" placeholder="Mật khẩu">
              </div>
              <button class="btn_lg" >Đăng nhập</button>
              <div class="err">
              <%--
              <%
 					if(request.getParameter("err")!=null && request.getParameter("err")!="true"){
 						%>
 						<p> Đăng nhập sai</p>
 						<% 
					
 					}
 				
 				%>             
 					<%
				String id = request.getParameter("msv");
				String	pass = request.getParameter("mk");
				if(id==null){}
				else{
				out.print("Mã sinh viên  " + id +"<br>");
				out.print("Mật Khẩu " + pass);
				if(id.equalsIgnoreCase("17T1021293") && pass.equalsIgnoreCase("123")){
					response.sendRedirect("soxo.jsp");
				}
				else
					response.sendRedirect("ums.jsp?err=true");
				}
				%> --%>
 				
				 
				 <%
				 	String un=request.getParameter("msv");
				 	if(un!=null){
				 		session.setAttribute("un", un);
				 		response.sendRedirect("t1.jsp");
				 	}
				 %>
              </div>
          </form>
        </div>
    </div>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Hello word</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/js/bootstrap.min.js"></script>
    <script src="plugin/Plugin-phantrang/jquery.twbsPagination.js" type="text/javascript"></script>
</head>
<body>
	<div class="container">
    <nav aria-label="Page navigation">
        <ul class="pagination" id="pagination"></ul>
    </nav>
</div>
<script type="text/javascript">
    $(function () {
        window.pagObj = $('#pagination').twbsPagination({
            totalPages: 35,
            visiblePages: 10,
            onPageClick: function (event, page) {
                console.info(page + ' (from options)');
            }
        }).on('page', function (event, page) {
            console.info(page + ' (from event listening)');
        });
    });
</script>
	<%-- 
	<div class="container-fluid" id="login-form">
		<input type="text" name="username" placeholder="Email">
		<input type="text" name="password" placeholder="MatKhau">
	</div>
    <table border="1" align="center" cellpadding="0" cellspacing="1"
    width="1000" style="background: green; font-size: 20px;">
      <tr>
          <td> n </td>
          <td> n^2</td>
      </tr>
     <%for(int i=1;i<=10;i++){ %> 
      <tr>
          <td> <%=i %> </td>
          <td> <%=i*i %></td>
      </tr>
      <%} %>
    </table>
    <table align="center" width="1000">
     <tr bgcolor="blue"> <td colspan="3"> Menu ngang </td></tr>
     <tr>
       <td bgcolor="red" valign="top">
         <a href="http://docbao.vn"> doc bao</a>  <hr>
         <a href="bai2.jsp"> Mo bai 2</a>  <hr>
         <a href="bg.docx"> Tai bai giang</a>  <hr>
        </td>
       <td> <img src="bechuc.PNG" width="200"> </td>
       <td> <form method="post" action="bai2.jsp">
              un: <input type="text" name="txtun"> <br>
              pass: <input type="password" name="txtun"> <br>
              Chon quoc gia:
              <select name="s1">
                <option> Viet Nam</option>
                <option selected="selected">lao </option>
                <option> Mien dien</option>
              </select><br>
              Tom tat ly lich:
              <textarea cols="80" rows="10">
              </textarea>
      
 <input type="submit" value="Dang ky"> <br>
            </form></td>
     </tr>
  </table> --%>
</body>
</html>
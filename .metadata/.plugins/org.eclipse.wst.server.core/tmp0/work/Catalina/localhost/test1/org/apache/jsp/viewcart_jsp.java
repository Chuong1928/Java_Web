/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.57
 * Generated at: 2020-11-02 13:54:00 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import bean.sachbean;
import bo.Giohangbo;
import bean.Giohangbean;
import java.util.ArrayList;
import java.util.Hashtable;

public final class viewcart_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("bo.Giohangbo");
    _jspx_imports_classes.add("bean.Giohangbean");
    _jspx_imports_classes.add("bean.sachbean");
    _jspx_imports_classes.add("java.util.Hashtable");
    _jspx_imports_classes.add("java.util.ArrayList");
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=utf-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"utf-8\">\r\n");
      out.write("<title>Chường đẹp chai</title>\r\n");
      out.write("<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700\">\r\n");
      out.write("    <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js\"></script>\r\n");
      out.write("     <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js\"></script>\r\n");
      out.write("  <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js\"></script>\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\">\r\n");
      out.write("  <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js\"></script>\r\n");
      out.write("  <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js\"></script>\r\n");
      out.write("  <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js\"></script>\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/minhkhai_style.css\">\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t");

	
		Giohangbo gh=(Giohangbo)session.getAttribute("GioHang");
		if(gh==null){
			
		}
		if(gh!=null){int i=1; 
      out.write("\r\n");
      out.write("\t\t\t\t<table class=\"table table-bordered\" id=\"giohang\">\r\n");
      out.write("\t\t\t  <thead>\r\n");
      out.write("\t\t\t    <tr>\r\n");
      out.write("\t\t\t      <th scope=\"col\">STT</th>\r\n");
      out.write("\t\t\t      <th scope=\"col\">Tên sách</th>\r\n");
      out.write("\t\t\t      <th scope=\"col\">Mã sách sách</th>\r\n");
      out.write("\t\t\t       <th scope=\"col\">Hình ảnh</th>\r\n");
      out.write("\t\t\t      <th scope=\"col\">Số Lượng</th>\r\n");
      out.write("\t\t\t      <th scope=\"col\">Giá Bán</th>\r\n");
      out.write("\t\t\t      <th scope=\"col\">Thao tác</th>\r\n");
      out.write("\t\t\t    </tr>\r\n");
      out.write("\t\t\t  </thead>\r\n");
      out.write("\t\t");
 	for(Giohangbean g:gh.ds){
				
				
      out.write("\r\n");
      out.write("\t\r\n");
      out.write("\t\t\t<tbody >\r\n");
      out.write("\t\t\t    <tr>\r\n");
      out.write("\t\t\t      <td>");
      out.print(i );
      out.write("</td>\r\n");
      out.write("\t\t\t      <td>");
      out.print(g.getTensach() );
      out.write("</td>\r\n");
      out.write("\t\t\t      <td id=\"masach");
      out.print(i);
      out.write('"');
      out.write('>');
      out.print(g.getMasach().trim());
      out.write("</td>\r\n");
      out.write("\t\t\t       <td> <img src=\"");
      out.print(g.getAnh() );
      out.write("\" ></td>\r\n");
      out.write("\t\t\t      <td><div class=\"number_input\">\r\n");
      out.write("\t\t\t      \t<span class=\"tru\" id=\"number_down\" onclick=\"tru");
      out.print(i);
      out.write("()\">-</span>\r\n");
      out.write("\t\t\t      \t<input type=\"tel\" class=\"soluong_input\" id=\"soluong");
      out.print(i );
      out.write("\" value=\"");
      out.print((int)g.getSoluong());
      out.write("\">\r\n");
      out.write("\t\t\t      \t<span class=\"cong\" id=\"number_up\" onclick=\"cong");
      out.print(i);
      out.write("()\">+</span></div></td>\r\n");
      out.write("\t\t\t      <td>");
      out.print(g.getGiaban());
      out.write("</td>\r\n");
      out.write("\t\t\t     ");
      out.write("\r\n");
      out.write("\t\t\t      <td> <button class=\"delete btn btn-outline-danger\" id=\"del_");
      out.print(g.getMasach());
      out.write("\">Xóa</button></td>\r\n");
      out.write("\t\t\t    </tr>\r\n");
      out.write("\t\t\t\t<script type=\"text/javascript\">\r\n");
      out.write("\t\t\t\t\tfunction cong");
      out.print(i);
      out.write("()\r\n");
      out.write("\t\t\t\t\t{\r\n");
      out.write("\t\t\t\t\t    var value =parseInt(document.getElementById('soluong");
      out.print(i);
      out.write("').value);\r\n");
      out.write("\t\t\t\t\t    value = isNaN(value) ? 0 : value;\r\n");
      out.write("\t\t\t\t\t    value++;\r\n");
      out.write("\t\t\t\t\t    document.getElementById('soluong");
      out.print(i);
      out.write("').value = value;\r\n");
      out.write("\t\t\t\t\t}\r\n");
      out.write("\t\t\t\t\tfunction tru");
      out.print(i);
      out.write("()\r\n");
      out.write("\t\t\t\t\t{\r\n");
      out.write("\t\t\t\t\t    var value = parseInt(document.getElementById('soluong");
      out.print(i);
      out.write("').value);\r\n");
      out.write("\t\t\t\t\t    value = isNaN(value) ? 0 : value;\r\n");
      out.write("\t\t\t\t\t    value--;\r\n");
      out.write("\t\t\t\t\t    if(value==0){\r\n");
      out.write("\t\t\t\t\t    \tdocument.getElementById('number_down').attr(\"disabled\", true);\r\n");
      out.write("\t\t\t\t\t    }\r\n");
      out.write("\t\t\t\t\t    document.getElementById('soluong");
      out.print(i);
      out.write("').value = value;\r\n");
      out.write("\t\t\t\t\t}\r\n");
      out.write("\t\t\t\t\t</script>\r\n");
      out.write("\t\t\t\t\t<script type=\"text/javascript\">\r\n");
      out.write("\t\t\t\t\t  $(document).ready(function(){\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t // tăng số lượng \r\n");
      out.write("\t\t\t\t\t $('.cong').click(function(){\r\n");
      out.write("\t\t\t\t\t   var slm=parseInt(document.getElementById('soluong");
      out.print(i);
      out.write("').value);\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t   //  id\r\n");
      out.write("\t\t\t\t\t   var deleteid = '");
      out.print(g.getMasach().trim() );
      out.write("';\r\n");
      out.write("\t\t\t\t\t   // AJAX Request\r\n");
      out.write("\t\t\t\t\t   $.ajax({\r\n");
      out.write("\t\t\t\t\t     url: 'Edit_element.jsp',\r\n");
      out.write("\t\t\t\t\t     type: 'GET',\r\n");
      out.write("\t\t\t\t\t     data: { id:deleteid,\r\n");
      out.write("\t\t\t\t\t    \t \tslm:slm},\r\n");
      out.write("\t\t\t\t\t     success:function(response){\r\n");
      out.write("\t\t\t\t\t       if(response==1){\r\n");
      out.write("\t\t\t\t\t    \t   //alert(\"Tăng số lượng thành công\");\r\n");
      out.write("\t\t\t\t\t    \t   \r\n");
      out.write("\t\t\t\t\t    \t   return;\r\n");
      out.write("\t\t\t\t\t      }else{\r\n");
      out.write("\t\t\t\t\t    alert(response);\r\n");
      out.write("\t\t\t\t\t    alert(\"Lỗi\");\r\n");
      out.write("\t\t\t\t\t      }\r\n");
      out.write("\t\t\t\t\t       }\r\n");
      out.write("\t\t\t\t\t   });\r\n");
      out.write("\t\t\t\t\t });\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t});\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t</script>\r\n");
      out.write("\t \t\t</tbody>\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t");
	
		i++;
		}
		}
		
      out.write("\r\n");
      out.write("</table>\r\n");
      out.write("\t<style type=\"text/css\">\r\n");
      out.write("\t\tbody{\r\n");
      out.write("\t\t\t/* background-color: #2c3e50; */\r\n");
      out.write("\t\t\tfont-family: Open Sans, sans-serif;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\t.loading{\r\n");
      out.write("\t\t  position: absolute;\r\n");
      out.write("\t\t\t  left: 50%;\r\n");
      out.write("\t\t\t  top: 50%;\r\n");
      out.write("\t\t\tdisplay: none;\r\n");
      out.write("\t\t\twidth: 220px;\r\n");
      out.write("\t\t\theight: 60px;\r\n");
      out.write("\t\t\tborder: 2px solid #0fc32a;\r\n");
      out.write("\t\t\tcolor: #fff;\r\n");
      out.write("\t\t\tfont-size: 20px;\r\n");
      out.write("\t\t\tfont-weight: bold;\r\n");
      out.write("\t\t\ttext-transform: uppercase;\r\n");
      out.write("\t\t\ttext-align: center;\r\n");
      out.write("\t\t\ttext-decoration: none;\r\n");
      out.write("\t\t\tline-height: 56px;\r\n");
      out.write("\t\t\tbox-sizing: border-box;\r\n");
      out.write("\t\t\tborder-radius: 50px;\r\n");
      out.write("\t\t\tbackground-color: transparent;\r\n");
      out.write("\t\t\toutline: none;\r\n");
      out.write("\t\t\ttransition: all ease 0.5s;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\t.active{\r\n");
      out.write("\t\t\tfont-size: 0;\r\n");
      out.write("\t\t\twidth: 200px;\r\n");
      out.write("\t\t\theight: 200px;\r\n");
      out.write("\t\t\tborder-radius: 50%;\r\n");
      out.write("\t\t\tborder-left-color: transparent;\r\n");
      out.write("\t\t\tanimation: rotate 1.4s ease 0.5s infinite;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\t@keyframes rotate{\r\n");
      out.write("\t\t\t0%{\r\n");
      out.write("\t\t\t\ttransform: rotate(360deg);\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t}\r\n");
      out.write("\r\n");
      out.write("\t\t.success{\r\n");
      out.write("\t\t\tposition: relative;\r\n");
      out.write("\t\t\tbackground-color: #fff;\r\n");
      out.write("\t\t\tanimation: bounce .3s ease-in;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\t@keyframes bounce{\r\n");
      out.write("\t\t\t0%{\r\n");
      out.write("\t\t\t\ttransform: scale(0.9);\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\t.success:before{\r\n");
      out.write("\t\t\tcontent: '';\r\n");
      out.write("\t\t\tposition: absolute;\r\n");
      out.write("\t\t\tbackground: url(./img/check-solid.svg) no-repeat; /* Check Solid is fontawesome icon */\r\n");
      out.write("\t\t\tleft: 0;\r\n");
      out.write("\t\t\tright: 0;\r\n");
      out.write("\t\t\tmargin: 0 auto;\r\n");
      out.write("\t\t\twidth: 31px;\r\n");
      out.write("\t\t\theight: 31px;\r\n");
      out.write("\t\t\tline-height: 31px;\r\n");
      out.write("\t\t\ttop: 8px;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t</style>\r\n");
      out.write("\t<button class=\"loading\" id=\"load\">Button</button>\r\n");
      out.write("\t<script type=\"text/javascript\">\r\n");
      out.write("\t\r\n");
      out.write("$(document).ready(function(){\r\n");
      out.write("\t$(\".cong\").click(function(){\r\n");
      out.write("\t\tdocument.getElementById('giohang').style.opacity = \"0.09\";\r\n");
      out.write("\t\tdocument.getElementById('load').style.display = \"block\";\r\n");
      out.write("\t\t$(\".loading\").addClass(\"active\");\r\n");
      out.write("\t\t// Add Success Class After 3.7 Seconds\r\n");
      out.write("\t\tsetTimeout(function(){\r\n");
      out.write("\t\t\t$(\".loading\").addClass(\"success\");\r\n");
      out.write("\t\t\tdocument.getElementById('load').style.display = \"none\";\r\n");
      out.write("\t\t\tdocument.getElementById('giohang').style.opacity = \"1\";\r\n");
      out.write("\t\t}, 3000);\r\n");
      out.write("\r\n");
      out.write("\t\t// Remove class after 5 second\r\n");
      out.write("\t\tsetTimeout(function(){\r\n");
      out.write("\t\t\t$(\".loading\").removeClass(\"active\");\r\n");
      out.write("\t\t\t$(\".loading\").removeClass(\"success\");\r\n");
      out.write("\t\t}, 3000);\r\n");
      out.write("\t\t\r\n");
      out.write("\t});\r\n");
      out.write("});\r\n");
      out.write("\r\n");
      out.write("</script>\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("  $(document).ready(function(){\r\n");
      out.write("\r\n");
      out.write(" // Delete \r\n");
      out.write(" $('.delete').click(function(){\r\n");
      out.write("  if( confirm('Bạn Có Muốn Xóa Dữ liệu Không')){\r\n");
      out.write("   var el = this;\r\n");
      out.write("   var id = this.id;\r\n");
      out.write("   var splitid = id.split(\"_\");\r\n");
      out.write("   // Delete id\r\n");
      out.write("   var deleteid = splitid[1];\r\n");
      out.write("   // AJAX Request\r\n");
      out.write("   $.ajax({\r\n");
      out.write("     url: 'Delete_book.jsp',\r\n");
      out.write("     type: 'GET',\r\n");
      out.write("     data: { id:deleteid },\r\n");
      out.write("     success:function(response){\r\n");
      out.write("       if(response ==1){\r\n");
      out.write("   $(el).closest('tr').css('background','tomato');\r\n");
      out.write("   $(el).closest('tr').fadeOut(800,function(){\r\n");
      out.write("      $(this).remove();\r\n");
      out.write("   });\r\n");
      out.write("      }else{\r\n");
      out.write("    alert('Invalid ID.');\r\n");
      out.write("    alert(response);\r\n");
      out.write("      }\r\n");
      out.write("\r\n");
      out.write("    }\r\n");
      out.write("   });\r\n");
      out.write("}\r\n");
      out.write(" });\r\n");
      out.write("\r\n");
      out.write("});\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}

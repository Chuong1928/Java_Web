/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.57
 * Generated at: 2020-10-27 15:40:42 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import bo.Giohangbo;
import bean.loaibean;
import bo.loaibo;
import bean.sachbean;
import java.util.ArrayList;
import bo.sachbo;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
    _jspx_imports_classes.add("bo.loaibo");
    _jspx_imports_classes.add("bo.Giohangbo");
    _jspx_imports_classes.add("bean.loaibean");
    _jspx_imports_classes.add("bo.sachbo");
    _jspx_imports_classes.add("bean.sachbean");
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
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"utf-8\">\r\n");
      out.write("    <meta charset=\"utf-8\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("    <title>Chường đẹp chai</title>\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700\">\r\n");
      out.write("       <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js\"></script>\r\n");
      out.write("     <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js\"></script>\r\n");
      out.write("  <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js\"></script>\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\">\r\n");
      out.write("  <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js\"></script>\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/minhkhai_style.css\">\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");

		
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

      out.write("\r\n");
      out.write("\t    <style>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("/* Left column (menu) */\r\n");
      out.write(".left {\r\n");
      out.write("  flex: 15%;\r\n");
      out.write("  padding: 15px 0;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".left h2 {\r\n");
      out.write("  padding-left: 8px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("/* Right column (page content) */\r\n");
      out.write(".right {\r\n");
      out.write("   border-radius: 23px;\r\n");
      out.write("    background: #fff;\r\n");
      out.write("    flex: 80%;\r\n");
      out.write("    padding: 15px;\r\n");
      out.write("    margin-left: 10px;  \r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("/* Style the search box */\r\n");
      out.write("#mySearch {\r\n");
      out.write("  width: 100%;\r\n");
      out.write("  font-size: 18px;\r\n");
      out.write("  padding: 11px;\r\n");
      out.write("  border: 1px solid #ddd;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("/* Style the navigation menu inside the left column */\r\n");
      out.write("#myMenu {\r\n");
      out.write("  list-style-type: none;\r\n");
      out.write("  padding: 0;\r\n");
      out.write("  margin: 0;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("#myMenu li a {\r\n");
      out.write("  padding: 12px;\r\n");
      out.write("  text-decoration: none;\r\n");
      out.write("  color: black;\r\n");
      out.write("  display: block\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("#myMenu li a:hover {\r\n");
      out.write("  background-color: #eee;\r\n");
      out.write("}\r\n");
      out.write(".collapse ul li:hover{\r\n");
      out.write("    border-radius: 11px;\r\n");
      out.write("    background: #b3afad;\r\n");
      out.write("    font-size: 17px;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("    <div>\r\n");
      out.write("        <div class=\"header-blue\">\r\n");
      out.write("            <nav class=\"navbar navbar-dark navbar-expand-md navigation-clean-search\">\r\n");
      out.write("                <div class=\"container\"><a class=\"navbar-brand\" href=\"#\">MinhKhaiBook</a><button class=\"navbar-toggler\" data-toggle=\"collapse\" data-target=\"#navcol-1\"><span class=\"sr-only\">Toggle navigation</span><span class=\"navbar-toggler-icon\"></span></button>\r\n");
      out.write("                    <div class=\"collapse navbar-collapse\"\r\n");
      out.write("                        id=\"navcol-1\">\r\n");
      out.write("                        <ul class=\"nav navbar-nav\">\r\n");
      out.write("                            <li class=\"nav-item\" role=\"presentation\"><a class=\"nav-link active\" href=\"index.jsp\">Trang Chủ</a></li>\r\n");
      out.write("                            <li class=\"nav-item\" role=\"presentation\"><a class=\"nav-link active\" href=\"#\">Lịch sử mua hàng</a></li>\r\n");
      out.write("                            <li class=\"nav-item\" role=\"presentation\"><a class=\"nav-link active\" href=\"#\">Thanh toán</a></li>\r\n");
      out.write("                            <li class=\"nav-item\" role=\"presentation\"><a class=\"nav-link active\" href=\"viewcart.jsp\">Rỏ Hàng<span class=\"badge badge-light\" style=\"margin-left: 10px;\">");
      out.print(soluong );
      out.write("</span></a></li>\r\n");
      out.write("                        </ul>\r\n");
      out.write("                        <form class=\"form-inline mr-auto\" target=\"_self\">\r\n");
      out.write("                            <!-- <div class=\"form-group\"><label for=\"search-field\"><i class=\"fa fa-search\"></i></label><input class=\"form-control search-field\" type=\"search\" name=\"search\" id=\"search-field\"></div> -->\r\n");
      out.write("                        </form><span class=\"navbar-text\"> <a href=\"#\" class=\"login\">Log In</a></span><a class=\"btn btn-light action-button\" role=\"button\" href=\"#\">Sign Up</a></div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </nav>\r\n");
      out.write("            <hr>\r\n");
      out.write("            <div class=\"container hero\">\r\n");
      out.write("                \r\n");
      out.write("            <div class=\"row\">\r\n");
      out.write("              <div class=\"left\"     >\r\n");
      out.write("                <h2>Danh Mục Sách</h2>\r\n");
      out.write("                <input type=\"text\" id=\"mySearch\" onkeyup=\"myFunction()\" placeholder=\"Search..\" title=\"Type in a category\">\r\n");
      out.write("                <ul id=\"myMenu\">\r\n");
      out.write("                  ");
 for(int i=0;i<m;i++){  
      out.write("\r\n");
      out.write("\t\t\t\t\t <li>\r\n");
      out.write("\t\t\t\t\t    <a href=\"index.jsp?type=");
      out.print(dsloai.get(i).getTenloai() );
      out.write('"');
      out.write('>');
      out.print(dsloai.get(i).getTenloai() );
      out.write("</a>\r\n");
      out.write("\t\t\t\t\t  </li>\r\n");
      out.write("\t\t\t\t\t  \r\n");
      out.write("\t\t\t\t\t  ");
} 
      out.write("\r\n");
      out.write("                \r\n");
      out.write("                </ul>\r\n");
      out.write("              </div>\r\n");
      out.write("              <!--right -->\r\n");
      out.write("              <div class=\"right\" >\r\n");
      out.write("                    <div class=\"row\">\r\n");
      out.write("                         <div class=\"search_book\">\r\n");
      out.write("                            <form action=\"\">\r\n");
      out.write("                              <input class=\"form-control \" id=\"searchbook\" placeholder=\"Tìm sách\" name=\"txttk\" >\r\n");
      out.write("                            \r\n");
      out.write("                            </form>\r\n");
      out.write("                          </div>\r\n");
      out.write("                       ");
 
                      	if(request.getParameter("txttk")!=null){
                       		ArrayList<sachbean> dstk;
                       		dstk=sbo.TimTen(request.getParameter("txttk"));
                       		int sl=dstk.size();
                       		for(int i=0;i<sl;i++){
      out.write("\r\n");
      out.write("                       \t\t\t <div class=\"book book_1 col-md-3 col-lg-3 col-sm-12 col-12\">\r\n");
      out.write("                                <div class=\"card\" >\r\n");
      out.write("                                    <img class=\"card-img-top\" src=\"");
      out.print(dstk.get(i).getAnh() );
      out.write("\" alt=\"Card image\" style=\"width: 100%;height: 360px;\">\r\n");
      out.write("                                    <div class=\"card-body\">\r\n");
      out.write("                                      <h4 class=\"card-title\">");
      out.print(dstk.get(i).getTensach() );
      out.write("</h4>\r\n");
      out.write("                                       <p class=\"card-text\">Giá : ");
      out.print(dstk.get(i).getGia()+"  đ" );
      out.write("</p>\r\n");
      out.write("                                       <a href=\"cart.jsp?id=");
      out.print(dstk.get(i).getMasach() );
      out.write("&action=view\" class=\"btn btn-primary\">View</a>\r\n");
      out.write("                                     <a  href=\"cart.jsp?id=");
      out.print(ds.get(i).getMasach() );
      out.write("\r\n");
      out.write("                                     \t&action=add\r\n");
      out.write("                                     \t&tensach=");
      out.print(ds.get(i).getTensach().toString());
      out.write("\r\n");
      out.write("                                     \t&hinhanh=");
      out.print(ds.get(i).getAnh().toString() );
      out.write("\r\n");
      out.write("                                       &gia=");
      out.print(ds.get(i).getGia() );
      out.write("\r\n");
      out.write("                                       &tacgia=");
      out.print(ds.get(i).getTacgia().toString() );
      out.write("\" \r\n");
      out.write("                                        class=\"btn btn-primary add_to_cart\">Add To Cart</a>\t\t\t\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                  </div>\r\n");
      out.write("                       \t\t </div>\t\r\n");
      out.write("                       \t");
	}
                      	}
                      	else if(request.getParameter("type")==null){ 
      out.write("\r\n");
      out.write("                       \t\t");
 for(int i=0;i<n;i++){
                    
                       			
      out.write("\r\n");
      out.write("                       \t\t\t <div class=\"book book_1 col-md-3 col-lg-3 col-sm-12 col-12\">\r\n");
      out.write("                                <div class=\"card\" >\r\n");
      out.write("                                    <img class=\"card-img-top\" src=\"");
      out.print(ds.get(i).getAnh() );
      out.write("\" alt=\"Card image\" style=\"width: 100%;height: 360px;\">\r\n");
      out.write("                                    <div class=\"card-body\">\r\n");
      out.write("                                      <h4 class=\"card-title\">");
      out.print(ds.get(i).getTensach() );
      out.write("</h4>\r\n");
      out.write("                                      <p class=\"card-text\">Giá : ");
      out.print(ds.get(i).getGia()+"  đ" );
      out.write("</p>\r\n");
      out.write("                                       <a href=\"cart.jsp?id=");
      out.print(ds.get(i).getMasach() );
      out.write("&action=view\" class=\"btn btn-primary\">View</a>\r\n");
      out.write("                                         <a  href=\"cart.jsp?id=");
      out.print(ds.get(i).getMasach() );
      out.write("\r\n");
      out.write("                                         &action=add\r\n");
      out.write("                                         &tensach=");
      out.print(ds.get(i).getTensach().toString());
      out.write("\r\n");
      out.write("                                     \t&hinhanh=");
      out.print(ds.get(i).getAnh().toString() );
      out.write("\r\n");
      out.write("                                       &gia=");
      out.print(ds.get(i).getGia() );
      out.write("\r\n");
      out.write("                                       &tacgia=");
      out.print(ds.get(i).getTacgia().toString() );
      out.write("\" \r\n");
      out.write("                                        class=\"btn btn-primary add_to_cart\" >Add To Cart</a>\t\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                  </div>\r\n");
      out.write("                       \t\t </div>\r\n");
      out.write("                     \t\t");
} 
      out.write("\r\n");
      out.write("                       \t\r\n");
      out.write("                  ");
     	}else if(request.getParameter("type")!=null){ 
      out.write("\r\n");
      out.write("\r\n");
      out.write("                 ");
 		 	String loaisach=request.getParameter("type");
                   			for(int i=0;i<n;i++){
                   			if(ds.get(i).getLoai().equalsIgnoreCase(loaisach)){
                   				
      out.write("\r\n");
      out.write("                   \t\t\t <div class=\"book book_1 col-md-3 col-lg-3 col-sm-12 col-12\">\r\n");
      out.write("                                <div class=\"card\" >\r\n");
      out.write("                                    <img class=\"card-img-top\" src=\"");
      out.print(ds.get(i).getAnh() );
      out.write("\" alt=\"Card image\" style=\"width: 100%;height: 360px;\">\r\n");
      out.write("                                    <div class=\"card-body\">\r\n");
      out.write("                                      <h4 class=\"card-title\">");
      out.print(ds.get(i).getTensach() );
      out.write("</h4>\r\n");
      out.write("                                       <p class=\"card-text\">Giá : ");
      out.print(ds.get(i).getGia()+"  đ" );
      out.write("</p>\r\n");
      out.write("                                       <a href=\"cart.jsp?id=");
      out.print(ds.get(i).getMasach() );
      out.write("&action=view\" class=\"btn btn-primary\">View</a>\r\n");
      out.write("                                           <a  href=\"cart.jsp?id=");
      out.print(ds.get(i).getMasach() );
      out.write("\r\n");
      out.write("                                           &action=add\r\n");
      out.write("                                           &tensach=");
      out.print(ds.get(i).getTensach().toString());
      out.write("\r\n");
      out.write("                                     \t&hinhanh=");
      out.print(ds.get(i).getAnh().toString() );
      out.write("\r\n");
      out.write("                                       &gia=");
      out.print(ds.get(i).getGia() );
      out.write("&tacgia=");
      out.print(ds.get(i).getTacgia().toString() );
      out.write("\" \r\n");
      out.write("                                        class=\"btn btn-primary add_to_cart\" >Add To Cart</a>\t\t\t\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                  </div>\r\n");
      out.write("                       \t\t </div>\r\n");
      out.write("                   \t\t\t");
 	}
                   			}
                   			
                       	}
                       
                       
                       
      out.write("\r\n");
      out.write("                      \r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("              </div>\r\n");
      out.write("\r\n");
      out.write("<div class=\"modal fade\" id=\"exampleModalCenter\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"exampleModalCenterTitle\" aria-hidden=\"true\">\r\n");
      out.write("  <div class=\"modal-dialog modal-dialog-centered\" role=\"document\">\r\n");
      out.write("    <div class=\"modal-content\">\r\n");
      out.write("      <div class=\"modal-header\">\r\n");
      out.write("        <h5 class=\"modal-title\" id=\"exampleModalLongTitle\">Thông Báo</h5>\r\n");
      out.write("        <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">\r\n");
      out.write("          <span aria-hidden=\"true\">&times;</span>\r\n");
      out.write("        </button>\r\n");
      out.write("      </div>\r\n");
      out.write("      <div class=\"modal-body\" id=\"my_modal\">\r\n");
      out.write("       \r\n");
      out.write("      </div>\r\n");
      out.write("      <div class=\"modal-footer\">\r\n");
      out.write("        <a type=\"button\" class=\"btn btn-outline-primary\" data-dismiss=\"modal\">Tiếp Tục Mua Sách</a>\r\n");
      out.write("      <!--   <a href=\"index.jsp\" type=\"button\" class=\"btn btn-outline-primary\">Tiếp Tục Mua Sách</a> -->\r\n");
      out.write("   \t\t<a href=\"viewcart.jsp\" type=\"button\" class=\"btn btn-outline-success\">Xem giỏ hàng</a>\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("  </div>\r\n");
      out.write("</div>\r\n");
      out.write("              <!-- end right -->\r\n");
      out.write("            </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    \t\t<script type=\"text/javascript\">\r\n");
      out.write("\t\t\t\t\t  $(document).ready(function(){\r\n");
      out.write("\t\t\t\t\t \r\n");
      out.write("\t\t\t\t\t $('.add_to_cart').click(function(){\r\n");
      out.write("\t\t\t\t\t\t var url=$(this).attr('href');\r\n");
      out.write("\t\t\t\t\t\t event.preventDefault();\r\n");
      out.write("\t\t\t\t\t\t var data = url.split(\"&\");\r\n");
      out.write("\t\t\t\t\t\t var idtam=data[0].split(\"?\");\r\n");
      out.write("\t\t\t\t\t\t var id=idtam[1].split(\"=\");\r\n");
      out.write("\t\t\t\t\t\t var tensach=data[2].split(\"=\");\r\n");
      out.write("\t\t\t\t\t\t var hinhanh=data[3].split(\"=\");\r\n");
      out.write("\t\t\t\t\t\t var gia=data[4].split(\"=\");\r\n");
      out.write("\t\t\t\t\t\t var tacgia=data[5].split(\"=\");\r\n");
      out.write("\t\t\t\t\t\t   // Delete id\r\n");
      out.write("\t\t\t\t\t\t//   var deleteid = splitid[1];\r\n");
      out.write("\t\t\t\t\t//\t $('#my_modal').html('Đã thêm <strong>'+tacgia[1]+'</strong> vào giỏ hàng');\r\n");
      out.write("\t\t\t\t\t\t// $('#exampleModalCenter').modal('show');\r\n");
      out.write("\t\t\t\t\t   // AJAX Request\r\n");
      out.write("\t\t \t\t\t   $.ajax({\r\n");
      out.write("\t\t\t\t\t     url: 'cart.jsp',\r\n");
      out.write("\t\t\t\t\t     type: 'GET',\r\n");
      out.write("\t\t\t\t\t     data: { id:id[1],\r\n");
      out.write("\t\t\t\t\t    \t \ttensach:tensach[1],\r\n");
      out.write("\t\t\t\t\t    \t \ttacgia:tacgia[1],\r\n");
      out.write("\t\t\t\t\t    \t \tgia:gia[1],\r\n");
      out.write("\t\t\t\t\t    \t \thinhanh:hinhanh[1]},\r\n");
      out.write("\t\t\t\t\t     success:function(response){\r\n");
      out.write("\t\t\t\t\t       if(response){\r\n");
      out.write("\t\t\t\t\t    \t   $('#my_modal').html('Đã thêm <strong>'+tensach[1]+'</strong> vào giỏ hàng');\r\n");
      out.write("\t\t\t\t\t\t\t\t $('#exampleModalCenter').modal('show');\r\n");
      out.write("\t\t\t\t\t      }else{\r\n");
      out.write("\t\t\t\t\t    alert(response);\r\n");
      out.write("\t\t\t\t\t    alert(\"Lỗi\");\r\n");
      out.write("\t\t\t\t\t      }\r\n");
      out.write("\t\t\t\t\t       }\r\n");
      out.write("\t\t\t\t\t   }); \r\n");
      out.write("\t\t\t\t\t });\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t});\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t</script>\r\n");
      out.write("    <script src=\"https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js\"></script>\r\n");
      out.write("    <script src=\"https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js\"></script>\r\n");
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

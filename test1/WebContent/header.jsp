<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="header-blue fixed-top">
            <nav class="navbar navbar-dark navbar-expand-md navigation-clean-search">
                <div class="container-fluid"><a class="navbar-brand" href="#">MinhKhaiBook</a><button class="navbar-toggler" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
                    <div class="collapse navbar-collapse" id="navcol-1">
                        <ul class="nav navbar-nav">
                            <li class="nav-item" role="presentation"><a class="nav-link active" href="SachController">Trang Chủ</a></li> 
                        </ul>
                          <div class="search_book">
                            <form action="">
                              <input class="form-control " id="searchbook" placeholder="Tìm sách" name="txttk" >
                            
                            </form>
                          </div>
                        <% 
                        	if(session.getAttribute("username")!=null){
                        	
                        		%>
                        		
                        		<div class="dropdown ">
                        			
									  <button class="dropbtn">Xin Chào <%=session.getAttribute("username") %> <i class="fas fa-user-circle user_icon" style=""></i></button>
									  <div class="dropdown-content">
									    <a href="profileController">Profile</a>
									   <!--  <a href="ThanhToanController">Đơn hàng</a> -->
									    <a href="dangxuatController">Log Out</a>
									    <a class="nav-link active" href="lichsuMHController">Đơn hàng của tôi</a>
									  </div>
									</div>
                        	<% }else{
                        		%>
                        		<form class="form-inline mr-auto" target="_self">
                            <!-- <div class="form-group"><label for="search-field"><i class="fa fa-search"></i></label><input class="form-control search-field" type="search" name="search" id="search-field"></div> -->
                        </form><span class="navbar-text"> <a id="f-login" href="#"  class="login">Log In</a></span><a class="btn btn-light action-button" id="f-signup" role="button" href="#">Sign Up</a></div>
                        
                       <%  	}
                       			
                        %>
                </div>
            </nav>
           
        </div>
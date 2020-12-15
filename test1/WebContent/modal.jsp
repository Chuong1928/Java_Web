<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
   		<a href="ViewcartController" type="button" class="btn btn-outline-success">Xem giỏ hàng</a>
      </div>
    </div>
  </div>
</div>
		<!-- Login modal-->
<div class="modal fade" id="myModal">
    <div class="modal-dialog">
      <div class="modal-content">
       <!-- Modal body -->
       
        	<div class="login_form_wrapper">
		
		        <div class="row">
		            <div class="col-md-12 col-md-offset-2">
		                <!-- login_wrapper -->
		                <div class="login_wrapper">
		                    <div class="row">
		                        <div class="col-lg-6 col-md-6 col-xs-12 col-sm-6"> <a href="#" class="btn btn-primary facebook"> <span>Login with Facebook</span> <i class="fa fa-facebook"></i> </a> </div>
		                        <div class="col-lg-6 col-md-6 col-xs-12 col-sm-6"> <a href="#" class="btn btn-primary google-plus"> Login with Google <i class="fa fa-google-plus"></i> </a> </div>
		                    </div>
		                    <h2>or</h2>
		                    <div class="formsix-pos">
		                        <div class="form-group i-email"> <input type="email" class="form-control"  id="email2" placeholder="UserName"> </div>
		                    </div>
		                    <div class="formsix-e">
		                        <div class="form-group i-password"> <input type="password" class="form-control" id="password2" placeholder="Password"> </div>
		                    </div>
		                    <div class="login_remember_box"> <label class="control control--checkbox">Remember me <input type="checkbox"> <span class="control__indicator"></span> </label> <a href="#" class="forget_password"> Forgot Password </a> </div>
		                    <div class="login_btn_wrapper"> <a href="#" class="btn btn-primary login_btn"> Login </a> </div>
		                    <div class="login_message">
		                        <p>Don’t have an account ? <a href="#"> Sign up </a> </p>
		                    </div>
		                </div> <!-- /.login_wrapper-->
		            </div>
		        </div>
  
				</div>
      </div>
    </div>
  </div>
		<!-- Login modal-->
		<!-- sign modal-->
		  <div class="modal fade" id="sign_modal">
		    <div class="modal-dialog">
		      <div class="modal-content">      
		        <!-- Modal body -->
		        <div class="modal-body">
		          	    <div class="registration-form">
				        <form>
				            <div class="form-icon">
				                <span><i class="icon icon-user"></i></span>
				            </div>
				            <div class="form-group">
				                <input type="text" class="form-control item" id="username1" placeholder="TenDangNhap">
				            </div>
				            <div class="form-group">
				                <input type="password" class="form-control item" id="password1"  placeholder="Password">
				            </div>
				                 <div class="form-group">
				                <input type="text" class="form-control item" id="hoten" placeholder="Hovaten">
				            </div>
				            <div class="form-group">
				                <input type="text" class="form-control item" id="email" placeholder="Email">
				            </div>
				            <div class="form-group">
				                <input type="text" class="form-control item" id="phone-number" placeholder="Phone Number">
				            </div>
				       
				            <div class="form-group">
				                <input type="text" class="form-control item" id="diachi" placeholder="DiaChi">
				            </div>
				            <div class="form-group">
				                <button type="button" class="btn btn-block create-account">Create Account</button>
				            </div>
				        </form>
					        <div class="social-media">
					            <h5>Sign up with social media</h5>
					            <div class="social-icons">
					                <a href="#"><i class="icon-social-facebook" title="Facebook"></i></a>
					                <a href="#"><i class="icon-social-google" title="Google"></i></a>
					                <a href="#"><i class="icon-social-twitter" title="Twitter"></i></a>
					            </div>
					        </div>
    </div>
  
		        </div>       
		      </div>
		    </div>
		  </div>
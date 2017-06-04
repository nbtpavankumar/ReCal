 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ include file="/WEB-INF/jsp/admin/includes/header.jsp" %>
 
 <script type="text/javascript">
 
    //check if remmember me on
	window.onload = function()
	{
		var myuserId = Cookies.get('myuserId');
		var mypassword = Cookies.get('mypassword');
		
		//check both
		if((myuserId != null) && (mypassword != null))
		{
			 document.getElementById("loginid").value = myuserId;
	         document.getElementById("password").value = mypassword;
	         document.getElementById("rememberMe").checked = true;
		}
	}
	
 
   //redirect to dashboard if logged in 
   isUserLoggedIn();
   
 </script>
 
 <div id="middle_content_area">
        <div class="login_content_area container-fluid">
            <div class="row">
                <div class=" col-xs-12 col-sm-8 col-md-5 col-md-offset-3 col-sm-offset-2">
                    <form action="" id="login-validation" method="post">

                        <div id="login-form" class="content-box form_boxes">
                            <div class="form_box_header"><i class="form_head_icon icon_signin"></i>Sign In</div>
                            <div class="content-box-wrapper">

                                <div class="social_signin_block">
                                    <div id="status"></div>
                                    <h3 class="form_box_subheading">Sign in with Facebook or Google+</h3>
                                    <div class="social_icons" style="vertical-align:middle">
                                        <a class="fb" href="javascript:fb_login();">facebook</a>
                                        <a class="linkedin" href="javascript:GPlogin();" >linkedin</a>
                                    </div>
                                </div>
                                <span class="or_text">Or</span>
                                
                                 <h3 class="form_box_subheading" style="color:#930;display:none" id="msg"><img src="<c:url value="/adminassets/images/loadingbar.gif" />"></h3>
                                <h3 class="form_box_subheading">Sign in with your Login ID.</h3>
                                <div class="form-group clearfix">
                                    <label class="col-sm-3 nopadding-lr  control-label" for="exampleInputEmail1">Login ID</label>
                                    <div class="col-sm-9">
                                        <div class="input-group">
                                            <input type="text"  class="form-control" name="loginid" id="loginid">
                                            <span class="input-group-addon icon_email">@</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group clearfix">
                                    <label class="col-sm-3 control-label nopadding-lr" for="exampleInputPassword1">Password:</label>

                                    <div class="col-sm-9">
                                        <div class="input-group">
                                           <input type="password" name="password" id="password"  class="form-control" >
                                            <span class="input-group-addon icon_passowrd">@</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group clearfix">
                                    <div class="col-xs-6 col-sm-5 col-sm-offset-3">
                                        <div class="checkbox checkbox-primary">
                                            <input type="checkbox" id="rememberMe" name="rememberMe" value="1">
                                            <label for="rememberMe">
                                                Stay Signed In
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-4">
                                        <a href="/admin/forgotpassword" class="switch-button pull-right" id="goToForget" title="Recover password">Forgot Password</a>
                                    </div>
                                </div>

                                <div class="row forgot_txt_row">
                                    <div class="col-xs-12">


                                    </div>
                                </div>

                            </div>

                        </div>
                        <footer class="formBox_footer">

                            <div class="button-panel">
                                <p>By logging in, you are bound by <a href="#">Ringgitnsen Customer Terms &amp; Condition</a></p>
                                <button type="button" class="btn btn-default btn-lg" id="loginSigninBtn" onclick="submitLogin()">Sign In</button>


                            </div>
                        </footer>
                    </form>

                </div>
            </div>
        </div> 
    </div>  
    <script type="text/javascript">
      (function() {
       var po = document.createElement('script'); po.type = 'text/javascript'; po.async = true;
       po.src = 'https://apis.google.com/js/client.js?onload=GPonLoadCallback';
       var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s);
     })();
</script>

   <%@ include file="/WEB-INF/jsp/admin/includes/footer.jsp" %>
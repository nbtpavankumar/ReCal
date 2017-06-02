<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ include file="/WEB-INF/jsp/admin/includes/header.jsp" %>
 
<div id="middle_content_area">
        <div class="login_content_area container-fluid">
            <div class="row">
                <div class=" col-xs-12 col-sm-8 col-md-5 col-md-offset-3 col-sm-offset-2">
                    <form action="" id="login-validation" method="post">

                        <div id="login-form" class="content-box form_boxes reset-password">
                            <div class="form_box_header">Forgot your password?</div>
                            <div class="content-box-wrapper">


                                <p class="text-center">
                                    Don’t worry, it happens to everyone.
                                    <br> Please enter your email and we’ll send you a link where you can change it.
                                </p>

                                <div class="form-group clearfix">

                                    <div class="col-sm-9 col-md-9 col-xs-12">
                                        <div class="input-group">
                                            <input type="email" required class="form-control" id="exampleInputEmail1" placeholder="Email">
                                            <span class="input-group-addon icon-mail">@</span>
                                        </div>
                                    </div>

                                    <div class="col-sm-3 col-md-3 col-xs-12">
                                        <button type="submit" class="btn btn-default btn-block btn-lg btn-res-fix" id="loginSigninBtn">Send</button>

                                    </div>
                                </div>






                            </div>

                        </div>
                        <footer class="formBox_footer">

                            <div class="button-panel">




                            </div>
                        </footer>
                    </form>

                </div>
            </div>
        </div>
    </div>
    
    <%@ include file="/WEB-INF/jsp/admin/includes/footer.jsp" %>
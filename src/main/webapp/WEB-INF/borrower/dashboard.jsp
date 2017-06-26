 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ include file="/WEB-INF/admin/includes/borrowerHeader.jsp" %>
<link href="<c:url value="/resources/adminassets/css/admin.css" />" media="screen" rel="stylesheet" />
    <div class="content_area">
        <div class="content_inner">
            <div class="content_box_wrap">
                <div class="content_heading"><img src="<c:url value="/resources/adminassets/images/dashboard_icon.png"/>"> &nbsp;Dashboard</div>
                <div class="row">
                    <div class="col-md-8 col-sm-7 col-xs-12">
                        <div class="cb_mid">
                            <h1>Dashboard</h1>
                            <p>You currently have no application</p>
                            <form action="borrowerPersonalDetails" method="GET" enctype="multipart/form-data" id="hiddenForm1">
                            <input type="hidden" id="uid" name="uid">
                            <input type="hidden" id="keyId" name="keyId">
                             <p>To apply new application, <a href="javascript:void(0)">Click here</a>.</p>
                            </form>
                           
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-5 col-xs-12">
                        <div class="he-hr">
                            <div class="trf_right_inner">
                                <div class="trf_right_head">We're here to help</div>
                                <div class="trf_right_detail">
                                    <div class="trf_right_row border_bottom">
                                        <a href="#">
                                            <img src="<c:url value="/resources/adminassets/images/cust_service_icon.png"/>"> Cust Service
                                        </a>
                                    </div>
                                    <div class="trf_right_row">
                                        <a href="#">
                                            <img src="<c:url value="/resources/adminassets/images/call_icon.png"/>"> +00-123456789
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="clear"></div>
        </div>

    </div>
<script>
$('#hiddenForm1 a').click(function(){
	var uid = Cookies.get('uid');
	var keyId = Cookies.get('keyId');
	
	$('#keyId').val(keyId);
	$('#uid').val(uid);
	$('#hiddenForm1').submit();
});
</script>
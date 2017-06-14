<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/admin/includes/header1.jsp"%>
<div class="content_area">
<div class="content_inner"> 
  <div class="social_test_nav">
     <div class="social_test_btttn"><a href="smsSocialTest" class="soc_btn_style">SMS</a></div>
     <div class="social_test_btttn"><a href="cameraSocialTest" class="soc_btn_style">Camera</a></div>
     <div class="social_test_btttn"><a href="socialTest" class="soc_btn_style active">Social Test</a></div>
  </div> 
  <div class="content_box_wrap">
  <div class="content_heading"><img src="<c:url value="/resources/adminassets/images/camera.png"/>"> &nbsp;Camera</div>    
  <div class="cb_mid">
    <div class="st_wrap">
    <div class="social_test_icon">
     <input id="uploadBtn" class="btn btn-default" type="file">
      </div>
      </div>
  </div>
  </div>
  <div class="clear"></div>
</div>

</div>
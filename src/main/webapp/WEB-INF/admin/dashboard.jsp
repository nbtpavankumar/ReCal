 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ include file="/WEB-INF/admin/includes/header1.jsp" %>
    
    <div class="content_area">
        <div class="content_inner">
            <div class="content_box_wrap">
                <div class="content_heading"><img src="<c:url value="/resources/adminassetsimages/dashboard_icon.png" />"> &nbsp;Dashboard</div>
                <div class="cb_mid">
                    <div class="cdm_box1">
                        <div class="cdm_cont">
                            <div class="cdm_cont_heading">Recent Applications</div>
                            <div class="cdm_data">
                                <table width="100%" border="0" cellpadding="0" cellspacing="0" id="tblRecentApps">
                                   <tr><td width="100%" align="center"><img src="<c:url value="/resources/adminassetsimages/rolling.gif"  />" width="25" height="25"></td></tr>
                                </table>

                            </div>
                        </div>
                    </div>
                    <div class="cdm_box2">
                        <div class="cdm_cont">
                            <div class="cdm_cont_heading">Loan Applications</div>
                            <div class="cdm_data">
                                <table width="100%" border="0" cellpadding="0" cellspacing="0" id="tblLoanApps">
                                    <tr><td width="100%" align="center"><img src="<c:url value="/resources/adminassetsimages/rolling.gif"  />" width="25" height="25"></td></tr>
                                </table>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="clear"></div>
        </div>

    </div>

   
    <script>
    getRecentApplicatons();
    getLoanSummary();
    </script>

     <%@ include file="/WEB-INF/admin/includes/footer1.jsp" %>
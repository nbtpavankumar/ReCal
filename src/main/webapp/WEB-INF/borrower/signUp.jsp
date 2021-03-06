<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ include file="/WEB-INF/admin/includes/header.jsp" %>

<head>

    <meta charset="UTF-8">
    <!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->
    <title>Signup</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/adminassets/assets/icons/fontawesome/css/font-awesome.css"/>">

    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/adminassets/css/bootstrap.min.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/adminassets/css/bootstrap-theme.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/adminassets/css/awesome-bootstrap-checkbox.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/adminassets/btRangeSlider/css/bootstrap-slider.css"/>">

    <!-- Admin theme -->
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/adminassets/css/ringgit.css"/>">

    <!-- Admin responsive -->
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/adminassets/css/admin-responsive.css"/>">

    <!-- JS Core -->

    <script type="text/javascript" src="<c:url value="/resources/adminassets/js/jquery-3.1.1.min.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/resources/adminassets/js/capthaApi.js"/>"></script>
    
    <script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.js"></script>
   <!-- <script type="text/javascript" src="<c:url value="/resources/adminassets/js/jquery.form-validator.js"/>"></script> -->
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery-form-validator/2.3.26/jquery.form-validator.min.js"></script>


</head>

<body>

    <div class="header_new active top_bar_header">
        <div class="ringgetnsen_logo"><img src="<c:url value="/resources/adminassets/images/Logo.png" />"></div>
        <div class="header-right">
            <ul class="top_control_list">
                <li class="back-btn"><a href="home" class="btn btn-holo"><i aria-hidden="true" class="display_mobile fa fa-chevron-circle-right"></i>
               <span class="hide_mobile ">Back To Home</span></a></li>
            </ul>
        </div>

    </div>

    <div id="middle_content_area">
        <div class="login_content_area container-fluid">
            <div class="container1000">
                <h1 class="capital">details</h1>
                <div class="row">
                    <div class="col-md-8">
                    <c:url var="borrowerSignup" value="borrowerSignup" />
                    <form:form  action="${borrowerSignup}" id="demo-form" method="POST" modelAttribute="userLogin" autocomplete="off"> 
                        <div class="amounterm">
                            <h3 class="textCenter amountBtm"><img src="<c:url value="/resources/adminassets/images/aandm.png" />"> Amount & Term</h3>
                            <div class="amounttermData ">

                                <div class="sliderRContainer">
                                    <div class="">
                                        <div class="col-sm-3">
                                            <span class="amtLbl">AMOUNT</span>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="sldContainer">
                                                <span class="leftLblspan">RM 5K</span>
                                                <input id="requiredAmt" data-slider-id='requiredAmtSlider' type="text" data-slider-min="5000" data-slider-max="50000" data-slider-step="1000" data-slider-value="5000" />
                                                <span class="rightLblspan">RM 50K</span>
                                            </div>
                                        </div>
                                        <div class="col-sm-3">
                                            <span class="amtLbl pull-right">RM <label id="valonc"> 5000 </label></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="clearfix"></div>
                                <input type="hidden" name="option" id="myoption">
                                <div class="table-responsive">
                                    <table class="amountTbl">
                                        <tr>
                                            <th>TERM</th>
                                            <th>PROFIT RATE</th>
                                            <th>MONTHLY INSTALMENT</th>
                                            <th></th>
                                        </tr>
                                        <tbody>
                                            <tr id="6months">
                                                <td>6 months </td>
                                                <td>10% - 18% p.a.</td>
                                                <td>RM916.66- RM983.33</td>
                                                <td>
                                                <input type="button" data-tenor="0" data-duration="6" class="btn btnChose" name="tenor" value="Choose">
                                                  <!--  <a hidden="#" class="btn btnChose">Choose</a> --> 
                                                </td>
                                            </tr>
                                            <tr id="9months">
                                                <td>9 months </td>
                                                <td>4.30% - 17.30% p.a.</td>
                                                <td>RM869- RM978</td>
                                                <td>
                                                <input type="button" data-tenor="1" data-duration="9"  class="btn btnChose" name="tenor" value="Choose">
                                                   <!-- <a hidden="#" class="btn btnChose">Choose</a> --> 
                                                </td>
                                            </tr>
                                            <tr id="12months">
                                                <td>12 months </td>
                                                <td>4.30% - 17.30% p.a.</td>
                                                <td>RM869- RM978</td>
                                                <td>
                                                <input type="button" data-tenor="2" data-duration="12"  class="btn btnChose" name="tenor" value="Choose">
                                                     <!-- <a hidden="#" class="btn btnChose">Choose</a> --> 
                                                </td>
                                            </tr>
                                            <tr id="24months">
                                                <td>24 months </td>
                                                <td>4.30% - 17.30% p.a.</td>
                                                <td>RM869- RM978</td>
                                                <td>
                                                <input type="button" data-tenor="3" data-duration="24"  class="btn btnChose" name="tenor" value="Choose">
                                                       <!-- <a hidden="#" class="btn btnChose">Choose</a> --> 
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <input type="hidden" name="selectedOptions" id="selectedOptions">
                        <!-- <input type="hidden" name="duration" id="duration">
                        <input type="hidden" name="amount" id="amount"> -->
                        <form:hidden path="loanAmount"  id="amount" value="0"/>
                        <form:hidden path="loanTerms" id="duration" value="0"/>
                        <div class="amounterm aboutyourself">
                            <h3 class="textCenter amountBtm"> <img src="<c:url value="/resources/adminassets/images/manAdd.png" />"> Sign up</h3>
                            <div class=" aboutdata signUpformCnt">

                                <div class="amounttermData dataright ">
                                    <h5 class="signUpHeader">Apply now with Facebook or Google+</h5>

                                    <div class="form_boxes sIconsCnt">
                                        <div class="social_icons">
                                            <a class="fb" href="#">facebook</a>
                                            <a class="linkedin" href="#">linkedin</a>
                                        </div>
                                    </div>

                                    <span class="or_text orTxt">Or</span>
                                    <h5 class="signUpHeader" style="margin-bottom:25px;">Apply now with your email.</h5>
                    				
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">Email</label>
                                        <div class="col-sm-10">
                                            <div class="formFieldCont">
                                            <form:input path="loginToken" id="idLoginEmail" required="true" class="form-control" placeholder="Enter Email ID" data-validation="required length email login_email" data-validation-length="max124"/>
                                            <span class="fldIcon"> <img src="<c:url value="/resources/adminassets/images/ic4.png"/>" > </span>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <div class="form-group">
   										<label class="col-sm-2 control-label">Password</label>
   										<div class="col-sm-10">
       										<div class="formFieldCont">
									           <form:password path="password" id="idPassword" required="true" class="form-control" placeholder="Enter Password" data-validation="required length" data-validation-length="min8"  data-validation-error-msg="Please enter the Password"/>
									           <span class="fldIcon"> <img src="<c:url value="/resources/adminassets/images/ic5.png" />" > </span>
									        </div>
									    </div>
                                    </div>
                                    
                                    <div class="form-group">
   										<label class="col-sm-2 control-label">Confirm Password</label>
   										<div class="col-sm-10">
       										<div class="formFieldCont">       										
									           <form:password path="" id="idConfirmPassword" class="form-control" placeholder="Enter Confirm Password" data-validation="confirmation" data-validation-error-msg="Confirm Password not match" data-validation-confirm="password" />
									           <span class="fldIcon"> <img src="<c:url value="/resources/adminassets/images/ic5.png" />" > </span>
									        </div>
									    </div>
                                    </div>
                                    
                                    <div class="form-group">

                                        <label class="col-sm-2 control-label"> &nbsp; </label>
                                        <div class="col-sm-10">
                                           <div class="g-recaptcha" data-sitekey="6LdyXCYUAAAAAKJ-nTMog_WeSP6kcZZv-njQx_Oe"></div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
						<form:button id="Verification_btn" type="submit" class="btn btnSignUp">Get a Quote Today</form:button>

					</form:form>
                    </div>
                    <div class="col-md-4">
                        <div class="amounterm">
                            <h3 class="textCenter amountBtm"> <img src="<c:url value="/resources/adminassets/images/appC.png" />">  Application Process</h3>
                            <div class="amounttermData ">
                                <ul class="progressing">
                                    <li> <span class="progcircle"><span class="progDetails"></span></span>details</li>
                                    <li><span class="progcircle"><span class=""></span></span>Personal Details</li>
                                    <li class="LastCli"><span class="progcircle lastC"><span class=""></span></span>Review and Submit</li>
                                </ul>
                            </div>
                        </div>

                        <div class="featuresSection">
                            <ul class="featureUl">
                                <li>
                                    <span class="fIcon">
                            	<img src="<c:url value="/resources/adminassets/images/interest.png" /> " >
                            </span>
                                    <span class="fText">
                            	Low interest rates
                            </span>
                                </li>

                                <li>
                                    <span class="fIcon">
                            	<img src="<c:url value="/resources/adminassets/images/fc1.png" /> " >
                            </span>
                                    <span class="fText">
                            	Fixed terms - 6 to 24 months*
                            </span>
                                </li>

                                <li>
                                    <span class="fIcon">
                            	<img src="<c:url value="/resources/adminassets/images/three.png" /> " >
                            </span>
                                    <span class="fText">
                            	Single monthly payment
                            </span>
                                </li>

                                <li>
                                    <span class="fIcon">
                            	<img src="<c:url value="/resources/adminassets/images/fc4.png" /> " >
                            </span>
                                    <span class="fText">
                            	No hidden fees or <br> prepayment penalties
                            </span>
                                </li>


                            </ul>
                        </div>
                        <div class="ubCnt">
                            <span class="ubIcon">
                    	<img src="<c:url value="/resources/adminassets/images/umbrella.png" />" >
                    </span> We care about your privacy we will never sell your information.
                        </div>
                    </div>
                </div>

            </div>
        </div>

    </div>
    </div>
    <footer class="site_footer">
        <div class="container-fluid">
            <div class="row text-center">
                <div class="col-xs-12">
                    <div class="f_social_icon">
                        <a href="#"><i class="fa fa-facebook"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-linkedin"></i></a>
                    </div>
                </div>
                <div class="col-xs-12"><span class="text-copyright">&copy; 2016-2017 Recal. All rights reserved.</span></div>
            </div>
        </div>
    </footer>
    <div class="modalDropdown">
        <div class="mdDropdown">
            <div class="mdStateDrop">
                <div class="mdSearch_headerContainer">
                    <div class="mdSearchContainer">
                        <input type="text" class="mdSearchBox" placeholder="Select State">
                        <a href="#" class="closeMd" data-dismiss="modal">

                        </a>
                    </div>
                    <h4 class="mdStateHeader">
                        Malaysia <i class="fa fa-angle-right"></i>
                    </h4>
                </div>
                
            </div>


            
        </div>

    </div>

    <!-- WIDGETS -->
    <script type="text/javascript" src="<c:url value="/resources/adminassets/js/bootstrap.min.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/resources/adminassets/btRangeSlider/bootstrap-slider.min.js"/>"></script>
    <script>
    $.validate({
modules:'security',
        lang: 'en'
      });
    // min & max interest rates
 var minRates = {six:0.10,nine:0.10,twelve:0.10,twentyfour:0.10};
    var maxRates = {six:0.18,nine:0.18,twelve:0.18,twentyfour:0.18};
    var selectedOptions = {};
    selectedOptions.amount=10000;
       
        $('#requiredAmt').slider({
            formatter: function (value) {
                return 'Current value: ' + value;
            }
        });
        $("#requiredAmt").on("slide", function(slideEvt) {
        	// get slider value and update div
        	var selectedAmount = slideEvt.value;
        	$("#valonc").text(selectedAmount);
        	selectedOptions.amount = selectedAmount;
        	 $(".amountTbl tr").removeClass('selected');
        	// update table values accroding to slider values
        //	$('#3months td')[2].text(getAmount(selectedAmount,3));
        	$($('#6months td')[2]).text(getAmount(selectedAmount,6));
        	$($('#9months td')[2]).text(getAmount(selectedAmount,9));
        	$($('#12months td')[2]).text(getAmount(selectedAmount,12));
        	$($('#24months td')[2]).text(getAmount(selectedAmount,24));
        	
        	
        });
        $(".btnChose").click(function(){
        	$(".btnChose").val("Choose");
        	$(".btnChose").parent().parent().removeClass('selected');
        	$(this).val("Selected");
        	$(this).parent().parent().addClass('selected');
        	$("#myoption").val($(this).data('tenor'));
			
        	$("#amount").val($("#requiredAmt").val());
        	$("#duration").val($(this).data('duration'));
			
        });
        function getAmount(amount,months)
        {
        	// calculate amount based on the interest rates
        	// get the min and max interest and calculate 
        	var minRatePercent =0;
        	var maxRatePercent =0;
        	if(months==6)
        		{
        		minRatePercent = minRates.six;
        		}
        	if(months==9)
    		{
    		minRatePercent = minRates.nine;
    		}
        	if(months==12)
    		{
    		minRatePercent = minRates.twelve;
    		}
        	if(months==24)
    		{
    		minRatePercent = minRates.twentyfour;
    		}
        	
        	if(months==6)
    		{
    		maxRatePercent = maxRates.six;
    		}
    	if(months==9)
		{
		maxRatePercent = maxRates.nine;
		}
    	if(months==12)
		{
		maxRatePercent = maxRates.twelve;
		}
    	if(months==24)
		{
		maxRatePercent = maxRates.twentyfour;
		}
        	var minRate = 'RM' + calculateInstalment(amount,minRatePercent,0,months);
        	var maxRate = 'RM'+calculateInstalment(amount,maxRatePercent,0,months);
        	
        	return minRate + '- '+maxRate;
        }
        function calculateInstalment(amount, rate, processingFees, term) {
            var totalYear = term / 12;
            var loanAmount = parseFloat(amount).toFixed(2);
            var processingFeeInAmount = (parseFloat(loanAmount) * processingFees).toFixed(2);
            var flatRate = parseFloat(rate).toFixed(4);
            var totalInterestRate = (parseFloat(loanAmount) * parseFloat(flatRate));
            console.log("intrest rate"+ totalInterestRate);
            console.log("amnt"+ loanAmount);
            console.log("year"+ totalYear);
            
            var MonthlyPayment = ((parseFloat(loanAmount) + (parseFloat(totalInterestRate)) * totalYear) / term).toFixed(2); // exclude processing fees
            var totalRepayment = ((MonthlyPayment * term) + parseFloat(processingFeeInAmount)).toFixed(2);

            return parseFloat(MonthlyPayment).toFixed(0);
        }

        function saveSelectedOptions()
        {
        	// save selected options in an object to submit to server
        	
        	//selectedOptions.amount = $('').text();
        	selectedOptions.installment = $($('.amountTbl tr.selected td')[2]).text();
        	selectedOptions.term = $($('.amountTbl tr.selected')[2]).data('months');
        	selectedOptions.minInterest = 0;
        	selectedOptions.maxInterest = 0;
        }

    </script>
	<style>
	.help-block.form-error{
		padding-left: 115px;
	}
	</style>
</body>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/admin/includes/header.jsp" %>
<head>

    <meta charset="UTF-8">
    <!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->
    <title>Personal Details</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/adminassets/assets/icons/fontawesome/css/font-awesome.css"/>">

    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/adminassets/css/bootstrap.min.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/adminassets/css/bootstrap-theme.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/adminassets/css/awesome-bootstrap-checkbox.css"/>">

    <!-- Admin theme -->
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/adminassets/css/ringgit.css"/>">

    <!-- Admin responsive -->
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/adminassets/css/admin-responsive.css"/>">

    <!-- JS Core -->

    <script type="text/javascript" src="<c:url value="/resources/adminassets/js/jquery-3.1.1.min.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/resources/adminassets/assets/js-core/modernizr.js"/>"></script>


</head>

<body>

    <div class="header_new active top_bar_header">
        <div class="ringgetnsen_logo"><img src="<c:url value="/resources/adminassets/images/Logo.png"/>"></div>
        <div class="header-right">
            <ul class="top_control_list">
                <li class="t_icon myaccount_link"><a href="<c:url value="/resources/adminassets/Borrower/Dashboard.html"/>">My Account</a></li>
                <li class="t_icon logout_link"> <a href="login"><i class="fa fa-sign-out" aria-hidden="true"></i>
Logout</a></li>
                <li class="back-btn"><a href="home" class="btn btn-holo"><i aria-hidden="true" class="display_mobile fa fa-chevron-circle-right"></i>
               <span class="hide_mobile ">Back To Home</span></a></li>
            </ul>
        </div>

    </div>

    <div id="middle_content_area">
        <div class="login_content_area container-fluid">
            <div class="container1000">
                <h1 class="capital">personal details</h1>
                <div class="row">
                    <div class="col-md-8">
                        <div class="amounterm">
                            <h3 class="textCenter amountBtm">
                                <img src="<c:url value="/resources/adminassets/images/aandm.png"/>">
                                Amount & Term</h3>
                            <div class="amounttermData ">
                                <div class="table-responsive">
                                    <table class="amountTbl">
                                        <tr>
                                            <th>Amount</th>
                                            <th>term</th>
                                            <th>profit rate</th>
                                            <th>monthly instalment</th>
                                        </tr>
                                        <tbody>
                                            <tr>
                                                <td>RM 15,000.00 </td>
                                                <td>9 months</td>
                                                <td>4.30% - 17.30% p.a</td>
                                                <td>RM869- RM978</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>



                        <!--sssssss-->


                        <div class="amounterm aboutyourself">
                            <h3 class="textCenter amountBtm">
                                <img src="<c:url value="/resources/adminassets/images/Doccc.png"/>">
                                More about yourself</h3>
                            <div class=" aboutdata">

                                <div class="amounttermData dataright">
                                	<form class="form-horizontal">
                                        <div class="form-group">
                                            <div class="col-md-1"></div>
                                            <label class="col-sm-3 control-label">Purpose</label>
                                            <div class="col-sm-8">
                                                <input class="form-control" id="" type="text" placeholder="Purpose of Loan">
                                            </div>
                                        </div>
                                    </form>
                                    <form class="form-horizontal">
                                        <div class="form-group">
                                            <div class="col-md-1"></div>
                                            <label class="col-sm-3 control-label">New I/C No.</label>
                                            <div class="col-sm-8">
                                                <input class="form-control" id="" type="text" placeholder="800101-14-1234">
                                            </div>
                                        </div>
                                    </form>
                                    <form class="form-horizontal">
                                        <div class="form-group">
                                            <div class="col-md-1"></div>
                                            <label class="col-sm-3 control-label">Re-type New I/C No.</label>
                                            <div class="col-sm-8">
                                                <input class="form-control" id="" type="text">
                                            </div>
                                        </div>
                                    </form>
                                    <form class="form-horizontal">
                                        <div class="form-group">
                                            <div class="col-md-1"></div>
                                            <label class="col-sm-3 control-label"> Name as per IC </label>
                                            <div class="col-sm-8">
                                                <input class="form-control" id="" type="text">
                                            </div>
                                        </div>
                                    </form>
                                    <form class="form-horizontal">
                                        <div class="form-group">
                                            <div class="col-md-1"></div>
                                            <label class="col-sm-3 control-label">Mobile No</label>
                                            <div class="col-sm-8">
                                                <input class="form-control" id="" type="text" placeholder="800101-14-1234">
                                            </div>
                                        </div>
                                    </form>
                                    <form class="form-horizontal">
                                        <div class="form-group">
                                            <div class="col-md-1"></div>
                                            <label class="col-sm-3 control-label">Residential address</label>
                                            <div class="col-sm-8">
                                                <input class="form-control" id="" type="text" placeholder="800101-14-1234">
                                            </div>
                                        </div>
                                    </form>
                                    
                                    <form class="form-horizontal">
                                        <div class="form-group">
                                            <div class="col-md-1"></div>
                                            <label class="col-sm-3 control-label">Postal Code</label>
                                            <div class="col-sm-4 ">
                                                <input class="form-control" id="" type="text" placeholder="800101-14-1234">
                                            </div>
                                            <div class="col-md-4">
                                            </div>

                                        </div>
                                    </form>
                                    <form class="form-horizontal">
                                        <div class="form-group">
                                            <div class="col-md-1"></div>
                                            <label class="col-sm-3 control-label">Country / State / City</label>
                                            <div class="col-sm-8">
                                                <input type="text" class="form-control">
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>


                        <div class="amounterm aboutyourself">
                            <h3 class="textCenter amountBtm">
                                <img src="<c:url value="/resources/adminassets/images/employement_icon.png"/>">
                                Employment Details</h3>
                            <div class=" aboutdata">
                                <div class="amounttermData dataright">
                                    <form class="form-horizontal">
                                        <div class="form-group">
                                            <div class="col-md-1"></div>
                                            <label class="col-sm-3 control-label">Type of Employment</label>
                                            <div class="col-sm-8">
                                                <div class="dropdown">
                                                    <button class="btn btn-default dropdown-toggle dropdowns" type="button" data-toggle="dropdown">
                                                        Select
                                                        <span class="caret"></span>
                                                    </button>
                                                    <ul class="dropdown-menu">
                                                        <li><a href="#">select 1</a></li>
                                                        <li><a href="#">select 2</a></li>
                                                        <li><a href="#">select 3</a></li>

                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                    <form class="form-horizontal">
                                        <div class="form-group">
                                            <div class="col-md-1"></div>
                                            <label class="col-sm-3 control-label">Employer Name</label>
                                            <div class="col-sm-8">
                                                <input class="form-control" id="" type="text" placeholder="800101-14-1234">
                                            </div>
                                        </div>
                                    </form>
                                    <form class="form-horizontal">
                                        <div class="form-group">
                                            <div class="col-md-1"></div>
                                            <label class="col-sm-3 control-label">Industry</label>
                                            <div class="col-sm-8">
                                                <div class="dropdown">
                                                    <button class="btn btn-default dropdown-toggle dropdowns" type="button" data-toggle="dropdown">
                                                        Select
                                                        <span class="caret"></span>
                                                    </button>
                                                    <ul class="dropdown-menu">
                                                        <li><a href="#">select 1</a></li>
                                                        <li><a href="#">select 2</a></li>
                                                        <li><a href="#">select 3</a></li>

                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                    <form class="form-horizontal">
                                        <div class="form-group">
                                            <div class="col-md-1"></div>
                                            <label class="col-sm-3 control-label">
                                                Business in operation /length of service</label>
                                            <div class="col-sm-8">
                                                <div class="dropdown">
                                                    <button class="btn btn-default dropdown-toggle dropdowns" type="button" data-toggle="dropdown">
                                                        Select
                                                        <span class="caret"></span>
                                                    </button>
                                                    <ul class="dropdown-menu">
                                                        <li><a href="#">select 1</a></li>
                                                        <li><a href="#">select 2</a></li>
                                                        <li><a href="#">select 3</a></li>

                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                    <form class="form-horizontal">
                                        <div class="form-group">
                                            <div class="col-md-1"></div>
                                            <label class="col-sm-3 control-label">Employer Address</label>
                                            <div class="col-sm-8">
                                                <input class="form-control" id="" type="text" placeholder="800101-14-1234">
                                            </div>
                                        </div>
                                    </form>
 									<form class="form-horizontal">
                                        <div class="form-group">
                                            <div class="col-md-1"></div>
                                            <label class="col-sm-3 control-label">Postal Code</label>
                                            <div class="col-sm-4 ">
                                                <input class="form-control" id="" type="text" placeholder="800101-14-1234">
                                            </div>
                                            <div class="col-md-4">
                                            </div>

                                        </div>
                                    </form>
                                    
                                    <form class="form-horizontal">
                                        <div class="form-group">
                                            <div class="col-md-1"></div>
                                            <label class="col-sm-3 control-label">Country / State / City</label>
                                            <div class="col-sm-8">
                                                <input type="text" class="form-control">
                                            </div>
                                        </div>
                                    </form>
                                    <form class="form-horizontal">
                                        <div class="form-group">
                                            <div class="col-md-1"></div>
                                            <label class="col-sm-3 control-label">Referral Code</label>
                                            <div class="col-sm-8">
                                                <input class="form-control" id="" type="text" placeholder="800101-14-1234">
                                            </div>
                                        </div>
                                    </form>

                                </div>
                            </div>

                        </div>


                        <div class="amounterm aboutyourself">
                            <h3 class="textCenter amountBtm">
                                <img src="<c:url value="/resources/adminassets/images/Disbursement_icon.png"/>">
                                Disbursement Details</h3>
                            <div class=" aboutdata">
                                <span class="spanDistrub">Disbursement Details</span>
                                <div class="amounttermData dataright">

                                    <form class="form-horizontal">
                                        <div class="form-group">
                                            <div class="col-md-1"></div>
                                            <label class="col-sm-3 control-label">Bank Name</label>
                                            <div class="col-sm-8">
                                                <div class="dropdown">
                                                    <button class="btn btn-default dropdown-toggle dropdowns" type="button" data-toggle="dropdown">
                                                        Select
                                                        <span class="caret"></span>
                                                    </button>
                                                    <ul class="dropdown-menu">
                                                        <li><a href="#">HTML</a></li>
                                                        <li><a href="#">CSS</a></li>
                                                        <li><a href="#">JavaScript</a></li>
                                                        <li class="divider"></li>
                                                        <li><a href="#">About Us</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                    <form class="form-horizontal">
                                        <div class="form-group">
                                            <div class="col-md-1"></div>
                                            <label class="col-sm-3 control-label">Account Number</label>
                                            <div class="col-sm-8">
                                                <input class="form-control" id="" type="text" placeholder="800101-14-1234">
                                            </div>
                                        </div>
                                    </form>
                                    <form class="form-horizontal">
                                        <div class="form-group">
                                            <div class="col-md-1"></div>
                                            <label class="col-sm-3 control-label">Confirm Account Number</label>
                                            <div class="col-sm-8">
                                                <input class="form-control" id="" type="text" placeholder="800101-14-1234">
                                            </div>
                                        </div>
                                    </form>
                                    <form class="form-horizontal">
                                        <div class="form-group">
                                            <div class="col-md-1"></div>
                                            <label class="col-sm-3 control-label">
                                                Account Holder Name (No 3rd party allowed)</label>
                                            <div class="col-sm-8">
                                                <input class="form-control" id="" type="text" placeholder="800101-14-1234">
                                            </div>
                                        </div>
                                    </form>







                                </div>
                            </div>

                        </div>

                        <div class="amounterm aboutyourself">
                            <h3 class="textCenter amountBtm">
                                <img src="<c:url value="/resources/adminassets/images/upload_icon.png"/>">
                                Upload Documents</h3>
                            <div class=" aboutdata">
                                <span class="spanDistrub">Upload Documents</span>
                                <div class="amounttermData dataright">
                                    <div class="upload_images">
                                        <ul class="uplaoding">
                                            <li>
                                                <input style="display:none" type="file" id="fileupload1" />
                                                <a href="">
                                                    <img src="<c:url value="/resources/adminassets/images/front.png"/>"></a>
                                                <button type="button" class="btn uploads" id="btnUpload1" onclick='$("#fileupload1").click()'>
                                                    <i class="fa fa-cloud-upload" aria-hidden="true"></i> Upload
                                                </button>
                                            </li>
                                            <li>
                                                <input style="display:none" type="file" id="fileupload2" />
                                                <a href="">
                                                    <img src="<c:url value="/resources/adminassets/images/back.png"/>"></a>
                                                <button type="button" class="btn uploads" id="btnUpload2" onclick='$("#fileupload2").click()'>
                                                    <i class="fa fa-cloud-upload" aria-hidden="true"></i> Upload
                                                </button>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>

                        </div>



                        <a class="btn btnSignUp" href="personalDetailsView">Next</a>



                    </div>
                    <div class="col-md-4">
                        <div class="amounterm">
                            <h3 class="textCenter amountBtm">
                                <img src="<c:url value="/resources/adminassets/images/appC.png"/>">
                                Application Process</h3>
                            <div class="amounttermData ">
                                <ul class="progressing">
                                    <li><span class="progcircle"><span class="progDetails"></span></span>details</li>
                                    <li><span class="progcircle"><span class="progDetails"></span></span>Personal Details</li>
                                    <li class="LastCli"><span class="progcircle lastC"><span class=""></span></span>Review and Submit</li>
                                </ul>
                            </div>
                        </div>
                        <div class="featuresSection">
                            <ul class="featureUl">
                                <li>
                                    <span class="fIcon">
                            	<img src="<c:url value="/resources/adminassets/images/interest.png"/>" >
                            </span>
                                    <span class="fText">
                            	Low interest rates
                            </span>
                                </li>

                                <li>
                                    <span class="fIcon">
                            	<img src="<c:url value="/resources/adminassets/images/fc1.png"/>" >
                            </span>
                                    <span class="fText">
                            	Fixed terms - 6 to 24 months*
                            </span>
                                </li>

                                <li>
                                    <span class="fIcon">
                            	<img src="<c:url value="/resources/adminassets/images/three.png"/>" >
                            </span>
                                    <span class="fText">
                            	Single monthly payment
                            </span>
                                </li>

                                <li>
                                    <span class="fIcon">
                            	<img src="<c:url value="/resources/adminassets/images/fc4.png"/>" >
                            </span>
                                    <span class="fText">
                            	No hidden fees or <br>
prepayment penalties
                            </span>
                                </li>


                            </ul>
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
                        <a href="#" class="closeMd" data-dismiss="modal"></a>
                    </div>
                    <h4 class="mdStateHeader">Malaysia <i class="fa fa-angle-right"></i>
                    </h4>
                </div>
                <div class="mdStateContainer">

                    <ul class="mdDropdownUl" id="stateDropdown">
                        <li>
                            <a href="#cityDrop1">Kuala Lumpur  <span class="mdRightarrow"><i class="fa fa-angle-right"></i></span></a>
                        </li>
                        <li>
                            <a href="#cityDrop1">Selangor <span class="mdRightarrow"><i class="fa fa-angle-right"></i></span></a>
                        </li>
                        <li>
                            <a href="#cityDrop1">Johor <span class="mdRightarrow"><i class="fa fa-angle-right"></i></span></a>
                        </li>
                        <li>
                            <a href="#cityDrop1">Kedah  <span class="mdRightarrow"><i class="fa fa-angle-right"></i></span></a>
                        </li>
                        <li>
                            <a href="#cityDrop1">Melaka  <span class="mdRightarrow"><i class="fa fa-angle-right"></i></span></a>
                        </li>
                        <li>
                            <a href="#cityDrop1">Negeri Sambilan <span class="mdRightarrow"><i class="fa fa-angle-right"></i></span></a>
                        </li>
                        <li>
                            <a href="#cityDrop1">Perak  <span class="mdRightarrow"><i class="fa fa-angle-right"></i></span></a>
                        </li>
                        <li>
                            <a href="#cityDrop1">Perlis  <span class="mdRightarrow"><i class="fa fa-angle-right"></i></span></a>
                        </li>
                        <li>
                            <a href="#cityDrop1">Penang  <span class="mdRightarrow"><i class="fa fa-angle-right"></i></span></a>
                        </li>
                        <li>
                            <a href="#cityDrop1">Pahang  <span class="mdRightarrow"><i class="fa fa-angle-right"></i></span></a>
                        </li>

                    </ul>
                </div>
            </div>


            <div class="mdCityDrop" id="cityDrop1">
                <div class="mdSearch_headerContainer">
                    <div class="mdSearchContainer">
                        <input type="text" class="mdSearchBox" placeholder="Select City">
                        <a href="#" class="closeMd"></a>
                    </div>
                    <h4 class="mdStateHeader">Malaysia <i class="fa fa-angle-right"></i>Salengor
                    </h4>
                </div>
                <div class="mdStateContainer">

                    <ul class="mdDropdownUl mdDropdownCityUl">
                        <li>
                            <a href="#mdCity"><span class="cityHere">Alam Impian </span><span class="mdRightarrow"><i class="fa fa-angle-right"></i></span></a>
                        </li>
                        <li>
                            <a href="#mdCity"><span class="cityHere">Alam Perdana </span><span class="mdRightarrow"><i class="fa fa-angle-right"></i></span></a>
                        </li>
                        <li>
                            <a href="#mdCity"><span class="cityHere">Ambang Botanic </span><span class="mdRightarrow"><i class="fa fa-angle-right"></i></span></a>
                        </li>
                        <li>
                            <a href="#mdCity"><span class="cityHere">Ampang</span>  <span class="mdRightarrow"><i class="fa fa-angle-right"></i></span></a>
                        </li>
                        <li>
                            <a href="#mdCity"><span class="cityHere">Ara Damansara </span><span class="mdRightarrow"><i class="fa fa-angle-right"></i></span></a>
                        </li>
                        <li>
                            <a href="#mdCity"><span class="cityHere">Balakong </span><span class="mdRightarrow"><i class="fa fa-angle-right"></i></span></a>
                        </li>
                        <li>
                            <a href="#mdCity"><span class="cityHere">Bandar Baru Bangi </span><span class="mdRightarrow"><i class="fa fa-angle-right"></i></span></a>
                        </li>
                        <li>
                            <a href="#mdCity"><span class="cityHere">Bandar Botanic</span>  <span class="mdRightarrow"><i class="fa fa-angle-right"></i></span></a>
                        </li>
                        <li>
                            <a href="#mdCity"><span class="cityHere">Bandar Bukit Raja</span>  <span class="mdRightarrow"><i class="fa fa-angle-right"></i></span></a>
                        </li>
                        <li>
                            <a href="#mdCity"><span class="cityHere">Bandar Bukit Tinggi </span><span class="mdRightarrow"><i class="fa fa-angle-right"></i></span></a>
                        </li>
                        <li>
                            <a href="#mdCity"><span class="cityHere">Bandar Kinrara</span>  <span class="mdRightarrow"><i class="fa fa-angle-right"></i></span></a>
                        </li>
                        <li>
                            <a href="#mdCity"><span class="cityHere">Bandar Puncak Alam</span> <span class="mdRightarrow"><i class="fa fa-angle-right"></i></span></a>
                        </li>
                        <li>
                            <a href="#mdCity"><span class="cityHere">Bandar Puteri Klang </span><span class="mdRightarrow"><i class="fa fa-angle-right"></i></span></a>
                        </li>

                    </ul>
                </div>
            </div>
        </div>

    </div>

    <!-- WIDGETS -->
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script>
        $('#stateDropdown > li > a').click(function (e) {
            $(this).closest('.mdStateDrop').fadeOut();
            var attrB = $(this).attr('href');
            $(attrB).fadeIn();
            e.preventDefault();
        });
        $('.mdDropdownCityUl > li > a').click(function (e) {
            var getVal = $(this).find('.cityHere').text();
            //alert(getVal);
            $('.modalDropdown').modal('hide');
            $('#stateDrop').val(getVal);
            $('.mdStateDrop, .mdCityDrop').removeAttr('style');
        });
    </script>
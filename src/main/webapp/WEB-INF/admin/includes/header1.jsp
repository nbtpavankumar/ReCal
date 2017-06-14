<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html class="no-js">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1" />
    <meta name='apple-mobile-web-app-capable' content='yes' />
    <title>AlphaCredits Dashboard</title>
    <link href="<c:url value="/resources/adminassets/css/style.css" />" media="screen" rel="stylesheet" />
    <link href="<c:url value="/resources/adminassets/css/fonts.css" />" media="screen" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/adminassets/css/ddlevelsmenu-base.css" />" />
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/adminassets/css/datatables.min.css" />" />
    
    <link href="<c:url value="/resources/adminassets/css/material-design-iconic-font.min.css" />" rel="stylesheet" />
    <link href="<c:url value="/resources/adminassets/css/font-awesome.min.css" />" rel="stylesheet" />
    <link href="<c:url value="/resources/adminassets/css/responsive.css" />" rel="stylesheet" />
    <link href="<c:url value="/resources/adminassets/css/datepicker-min.css" />" rel="stylesheet" />

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript" src="<c:url value="/resources/adminassets/js/js.cookie.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resources/adminassets/js/functions.js" />"></script>
    <script type="text/javascript">
	    
       //redirect to login page if not logged in 
       isUserNotLoggedIn();
   
     
        (function ($) {
            $.fn.menumaker = function (options) {
                var cssmenu = $(this),
                    settings = $.extend({
                        format: "dropdown",
                        sticky: false
                    }, options);
                return this.each(function () {
                    $(this).find(".button").on('click', function () {
                        $(this).toggleClass('menu-opened');
                        var mainmenu = $(this).next('ul');
                        if (mainmenu.hasClass('open')) {
                            mainmenu.slideToggle().removeClass('open');
                        } else {
                            mainmenu.slideToggle().addClass('open');
                            if (settings.format === "dropdown") {
                                mainmenu.find('ul').show();
                            }
                        }
                    });
                    cssmenu.find('li ul').parent().addClass('has-sub');
                    multiTg = function () {
                        cssmenu.find(".has-sub").prepend('<span class="submenu-button"></span>');
                        cssmenu.find('.submenu-button').on('click', function () {
                            $(this).toggleClass('submenu-opened');
                            if ($(this).siblings('ul').hasClass('open')) {
                                $(this).siblings('ul').removeClass('open').slideToggle();
                            } else {
                                $(this).siblings('ul').addClass('open').slideToggle();
                            }
                        });
                    };
                    if (settings.format === 'multitoggle') multiTg();
                    else cssmenu.addClass('dropdown');
                    if (settings.sticky === true) cssmenu.css('position', 'fixed');
                    resizeFix = function () {
                        var mediasize = 768;
                        if ($(window).width() > mediasize) {
                            cssmenu.find('ul').show();
                        }
                        if ($(window).width() <= mediasize) {
                            cssmenu.find('ul').hide().removeClass('open');
                        }
                    };
                    resizeFix();
                    return $(window).on('resize', resizeFix);
                });
            };
        })(jQuery);

        (function ($) {
            $(document).ready(function () {
                $("#cssmenu").menumaker({
                    format: "multitoggle"
                });
                
                $.notify.addStyle("showloading", {
                    html: '<div class="title" data-notify-html="title"><i class="fa fa-spin fa-spinner fa-2x text-orange"></i></div>',
                    classes: {
                        base: {
                            //"box-shadow": "inset 0 1px 1px rgba(0, 0, 0, 0.075)",
                            "background": "transparent",
                            "padding": "0px"
                        },
                    }
                });

                $('div.dpmonth.input-group.date').datepicker({
                    clearBtn: true,
                    autoclose: true,
                    todayHighlight: true,
                    orientation: "auto",
                    format: "mm/yyyy",
                    viewMode: "months",
                    minViewMode: "months",
                });

                $('div.input-group.date, .date-picker').datepicker({
                    clearBtn: true,
                    autoclose: true,
                    todayHighlight: true,
                    orientation: "auto",
                    format: "dd/mm/yyyy",

                });

                $(".numeric").numeric();
                $(".integer").numeric(false, function () {
                    alert("Integers only");
                    this.value = "";
                    this.focus();
                });
                $(".positive").numeric({
                    negative: false
                }, function () {
                    alert("No negative values");
                    this.value = "";
                    this.focus();
                });
                $(".positive-integer").numeric({
                    decimal: false,
                    negative: false
                }, function () {
                    alert("Positive integers only");
                    this.value = "";
                    this.focus();
                });
                $(".decimal-2-places").numeric({
                    decimalPlaces: 2
                });

                $('#searchbtn').on('click', function () {
                    var s = $('#searchstring').val();

                    if (s.length || $(this).data("allowempty")) {
                        window.location.href = 'http://demo.lendlend.com/oacc/authorizer/borrowerlist' + "?s=" + s;
                    } else {
                        $('#searchstring').parent().removeClass('has-error').addClass('has-error');
                        $.notify("Please enter value for searching", "error");
                    }
                });

                $.maskLoading = function (selector, opt) {
                    if (opt.showLoading) {
                        $(selector).attr("disabled", "disabled").text(opt.msg).val(opt.msg);
                    } else {
                        $(selector).removeAttr("disabled").text(opt.msg).val(opt.msg);
                    }
                }

                $.validator.methods.date = function (value, element) {
                    return this.optional(element) || Globalize.parseDate(value, "dd/MM/yyyy", "en");
                };

                var current_page_url = location.protocol + '//' + location.host + location.pathname;
                current_page_url = current_page_url.toLowerCase();
                //alert(current_page_url.toLowerCase().endsWith('/oacc'));
                //highligh menu
                if (current_page_url.endsWith('/oacc') ||
                    current_page_url.endsWith('/oacc/') ||
                    current_page_url.endsWith('/authorizer') ||
                    current_page_url.endsWith('/authorizer/') ||
                    current_page_url.endsWith('/maker') ||
                    current_page_url.endsWith('/maker/')
                ) {
                    $('#nav-home').addClass("active");
                    $('#sidebar-title').html('<i class="fa fa-home"></i> Dashboard');
                }

                $('#navbar ul.dropdown-menu > li > a').each(function (i, v) {

                    //Highlight current page in menu
                    if (current_page_url.endsWith(v.href.toLowerCase())) {
                        $(this).parent().addClass("active"); //li
                        $(this).removeAttr('href');
                        $(this).parent().parent().parent().addClass("active"); // li class=dropdown


                    }
                });


                $("a:contains('Back to List')").each(function (i, v) {
                    //alert($(this).html());
                    $('#topmessage').append($("<li></li>").append($(this).prepend("<i class='fa fa-chevron-left'></i> "))).append("<div class='margin-bottom-10'></div>");
                    //$(this).hide();
                });



            });

            if (!String.prototype.endsWith) {
                String.prototype.endsWith = function (searchString, position) {
                    var subjectString = this.toString();
                    if (position === undefined || position > subjectString.length) {
                        position = subjectString.length;
                    }
                    position -= searchString.length;
                    var lastIndex = subjectString.indexOf(searchString, position);
                    return lastIndex !== -1 && lastIndex === position;
                };
            });
        })(jQuery);
    </script>

    <script type="text/javascript" src="<c:url value="/resources/adminassets/js/bootstrap.min.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resources/adminassets/js/ddlevelsmenu.js" />"></script>
    
    <script type="text/javascript" src="<c:url value="/resources/adminassets/js/datatables.min.js.download" />"></script>
    <script type="text/javascript" src="<c:url value="/resources/adminassets/js/notify.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resources/adminassets/js/moment.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resources/adminassets/js/daterangepicker.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resources/adminassets/js/bootstrap-datepicker.js" />"></script>


</head>

<body>
    <div class="header_top">
        <div class="ht_inner">
            <div class="hti_logo">
                <a href="#"><img src="<c:url value="/resources/adminassets/images/Logo.png" />" /></a>
            </div>
            <div class="ht_user" id="ddtopmenubar">
                <ul>
                    <li>
                        <a href="#" rel="ddsubmenu3"><img src="<c:url value="/resources/adminassets/images/user_icon.png" />" /></a>
                    </li>
                </ul>
                <script type="text/javascript">
                    ddlevelsmenu.setup("ddtopmenubar", "topbar")
                </script>
            </div>
            <div class="clear"></div>
        </div>
    </div>

    <header>
        <div class="hr_inner">
            <nav id='cssmenu'>
                <div class="logo"><a href="#">Menu</a></div>
                <div id="head-mobile"></div>
                <div class="button"></div>
                <ul>
                    <li <c:if test="${page == 'dashboard'}"> class='active' </c:if> ><a href='/recal/admin/dashboard'>Dashboard</a></li>
                    <li <c:if test="${page == 'applications'}"> class='active' </c:if>><a href='#'>Application</a>
                        <ul>
                            <li><a href='/recal/admin/applicationslist?searchval=Submitted'>Lists</a> </li>
                            <li><a href='/recal/admin/borrowerList'>Borrower</a> </li>
                            <li><a href='/recal/admin/salesRep'>Sales Rep</a> </li>
                        </ul>
                    </li>
                    <li <c:if test="${page == 'loans'}"> class='active' </c:if>><a href='/recal/admin/loanList'>Loan</a>
                        <ul>
                            <li><a href='/recal/admin/loanList'>Lists</a> </li>
                            <li><a href='/recal/admin/disbursement'>Disbursement</a> </li>
                            <li><a href='/recal/admin/repayCollections'>Collections</a> </li>
                        </ul>

                    </li>
                    <li><a href='/recal/admin/topupFunds'>Investor</a>
                        <ul>
                            <li><a href='/recal/admin/topupFunds'>Top up funds</a> </li>
                            <li><a href='/recal/admin/withdrawalRequest'>Withdrawal Request</a> </li>
                            <li><a href='/recal/admin/llpMaster'>LLP Master</a> </li>
                        </ul>
                    </li>
                    <li><a href='#'>Messages</a>
                        <ul>
                            <li><a href='/recal/admin/emailMsgList'>Emails</a> </li>
                            <li><a href='/recal/admin/messageTemplateList'>Message Templates</a> </li>
                            <li><a href='/recal/admin/smsList'>SMS</a> </li>
                        </ul>
                    </li>

                    <li><a href='#'>Users</a>
                        <ul>
                            <li><a href='/recal/admin/authorizerusers'>Authorizer</a> </li>
                            <li><a href='/recal/admin/makerUsers'>Maker</a> </li>
                        </ul>
                    </li>
                    <li><a href='/recal/admin/disbursementReport'>Reporting</a>
                        <ul>
                            <li><a href='/recal/admin/disbursementReport'>Disbursement</a> </li>
                            <li><a href='/recal/admin/collectionReport'>Collection</a> </li>
                            <li><a href='/recal/admin/loanReport'>Loan</a> </li>
                            <li><a href='/recal/admin/declinedAppReport'>Declined Application</a> </li>
                            <li><a href='/recal/admin/delinquencyInfo'>Delinquency Info</a> </li>
                            <li><a href='/recal/admin/ramciCreditInfo'>Ramci Api Logs</a> </li>
                        </ul>
                    </li>
                    <li><a href='/recal/admin/repaymentSchedule'>UAT</a>
                        <ul>
                            <li><a href='/recal/admin/repaymentSchedule'>Repayment Schedules</a> </li>
                            <li><a href='/recal/admin/scheduleTask'>Schedule Tasks</a> </li>
                            <li><a href='/recal/admin/socialTest'>Social Test</a> </li>
                        </ul>
                    </li>
                </ul>
            </nav>
            <div class="clear"></div>
        </div>
    </header>
    <ul id="ddsubmenu3" class="ddsubmenustyle">
        <li><a href="#">info@exampledomin.com</a></li>
        <li><a href="#">Change Password</a></li>
        <li><a href="#">Sign Out</a></li>
    </ul>
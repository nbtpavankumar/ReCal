<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html class="no-js">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1" />
    <meta name='apple-mobile-web-app-capable' content='yes' />
    <title>AlphaCredits Dashboard</title>
    <link href="<c:url value="/adminassets/css/style.css" />" media="screen" rel="stylesheet" />
    <link href="<c:url value="/adminassets/css/fonts.css" />" media="screen" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="<c:url value="/adminassets/css/ddlevelsmenu-base.css" />" />
    <link rel="stylesheet" type="text/css" href="<c:url value="/adminassets/css/datatables.min.css" />" />
    
    <link href="<c:url value="/adminassets/css/material-design-iconic-font.min.css" />" rel="stylesheet" />
    <link href="<c:url value="/adminassets/css/font-awesome.min.css" />" rel="stylesheet" />
    <link href="<c:url value="/adminassets/css/responsive.css" />" rel="stylesheet" />
    <link href="<c:url value="/adminassets/css/datepicker-min.css" />" rel="stylesheet" />

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript" src="<c:url value="/adminassets/js/js.cookie.js" />"></script>
    <script type="text/javascript" src="<c:url value="/adminassets/js/functions.js" />"></script>
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
            });
        })(jQuery);
    </script>

    <script type="text/javascript" src="<c:url value="/adminassets/js/bootstrap.min.js" />"></script>
    <script type="text/javascript" src="<c:url value="/adminassets/js/ddlevelsmenu.js" />"></script>
    
    <script type="text/javascript" src="<c:url value="/adminassets/js/datatables.min.js.download" />"></script>
    <script type="text/javascript" src="<c:url value="/adminassets/js/notify.js" />"></script>
    <script type="text/javascript" src="<c:url value="/adminassets/js/moment.js" />"></script>
    <script type="text/javascript" src="<c:url value="/adminassets/js/daterangepicker.js" />"></script>
    <script type="text/javascript" src="<c:url value="/adminassets/js/bootstrap-datepicker.js" />"></script>


</head>

<body>
    <div class="header_top">
        <div class="ht_inner">
            <div class="hti_logo">
                <a href="#"><img src="<c:url value="/adminassets/images/Logo.png" />" /></a>
            </div>
            <div class="ht_user" id="ddtopmenubar">
                <ul>
                    <li>
                        <a href="#" rel="ddsubmenu3"><img src="<c:url value="/adminassets/images/user_icon.png" />" /></a>
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
                    <li <c:if test="${page == 'dashboard'}"> class='active' </c:if> ><a href='/admin/dashboard'>Dashboard</a></li>
                    <li <c:if test="${page == 'applications'}"> class='active' </c:if>><a href='#'>Application</a>
                        <ul>
                            <li><a href='/admin/applicationslist?searchval=Submitted'>Lists</a> </li>
                            <li><a href='#'>Borrower</a> </li>
                            <li><a href='#'>Sales Rep</a> </li>
                        </ul>
                    </li>
                    <li <c:if test="${page == 'loans'}"> class='active' </c:if>><a href='#'>Loan</a>
                        <ul>
                            <li><a href='#'>Lists</a> </li>
                            <li><a href='#'>Disbursement</a> </li>
                            <li><a href='#'>Collections</a> </li>
                        </ul>

                    </li>
                    <li><a href='#'>Investor</a>
                        <ul>
                            <li><a href='#'>Top up funds</a> </li>
                            <li><a href='#'>Withdrawal Request</a> </li>
                            <li><a href='#'>LLP Master</a> </li>
                        </ul>
                    </li>
                    <li><a href='#'>Messages</a>
                        <ul>
                            <li><a href='#'>Emails</a> </li>
                            <li><a href='#'>Message Templates</a> </li>
                            <li><a href='#'>SMS</a> </li>
                        </ul>
                    </li>

                    <li><a href='#'>Users</a>
                        <ul>
                            <li><a href='#'>Authorizer</a> </li>
                            <li><a href='#'>Maker</a> </li>
                        </ul>
                    </li>
                    <li><a href='#'>Reporting</a>
                        <ul>
                            <li><a href='#'>Disbursement</a> </li>
                            <li><a href='#'>Collection</a> </li>
                            <li><a href='#'>Loan</a> </li>
                            <li><a href='#'>Declined Application</a> </li>
                            <li><a href='#'>Delinquency Info</a> </li>
                            <li><a href='#'>Ramci Api Logs</a> </li>
                        </ul>
                    </li>
                    <li><a href='#'>UAT</a>
                        <ul>
                            <li><a href='#'>Repayment Schedules</a> </li>
                            <li><a href='#'>Schedule Tasks</a> </li>
                            <li><a href='#'>Social Test</a> </li>
                        </ul>
                    </li>
                </ul>
            </nav>
            <div class="clear"></div>
        </div>
    </header>
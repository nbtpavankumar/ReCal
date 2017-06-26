<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1" />
    <meta name='apple-mobile-web-app-capable' content='yes' />
    <title>Dashboard</title>
    
    <link href="<c:url value="/resources/adminassets/css/fonts.css" />" media="screen" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/adminassets/css/datatables.min.css" />" />
    
    <link rel="stylesheet" href="<c:url value="/resources/adminassets/css/bootstrap.min.css"/>" />
    <link rel="stylesheet" href="<c:url value="/resources/adminassets/css/font-awesome.css"/>" />
    <link rel="stylesheet" href="<c:url value="/resources/adminassets/css/build.css"/>" />
	<script type="text/javascript" src="<c:url value="/resources/adminassets/js/js.cookie.js" />"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>

    <script type="text/jscript">
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
                        var mediasize = 630;
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


    <div class="header_top">
        <div class="ht_inner">
            <div class="investor_logo">
                <a href="#"><img src="<c:url value="/resources/adminassets/images/Logo.png"/>" /></a>
            </div>
            <div class="investor_menu">
                <header>
                    <nav id='cssmenu'>
                        <div class="logo_menu"><a href="#">Responsive </a></div>
                        <div id="head-mobile"></div>
                        <div class="button"></div>
                        <ul>
                            <li class='active'><a href='/recal/borrower/dashboard'>Dashboard</a></li>
                            <li><a href='/recal/borrower/borrowing'>Borrowing</a></li>
                            <li><a href='/recal/borrower/borrowerTxHistory'>Transaction History</a></li>
                            <li><a href='/recal/borrower/borrowerRepayment'>Repayment</a> </li>
                            <li><a href='/recal/borrower/borrowerProfile'>My Profile</a></li>
                            <li><a href='#'>Sign Out</a></li>

                        </ul>
                    </nav>
                </header>

            </div>

            <div class="clear"></div>
        </div>
    </div>
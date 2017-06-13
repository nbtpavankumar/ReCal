 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<meta http-equiv="content-type" content="text/html;charset=utf-8" />

<head>

    <title>Home Page</title>
    <base>
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1" />
    <meta name='apple-mobile-web-app-capable' content='yes' />
    <link href="<c:url value="/resources/css/layout.css"/>" media="screen" rel="stylesheet" />
    <link href="<c:url value="/resources/css/fonts.css"/>" media="screen" rel="stylesheet" />
    <link rel="stylesheet" href="<c:url value="/resources/css/powerange.css"/>" />
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script src="<c:url value="/resources/js/responsiveslides.min.js"/>"></script>
    <script>
        // You can also use "$(window).load(function() {"
        $(function () {


            // Slideshow 2
            $("#slider2").responsiveSlides({
                auto: true,
                pager: true,
                nav: true,
                speed: 500,
                namespace: "transparent-btns"
            })
        });
    </script>


    <script type="text/javascript">
        $(window).on("scroll", function () {
            if ($(window).scrollTop() > 50) {
                $(".header_new").addClass("active");
            } else {
                //remove the background property so it comes transparent again (defined in your css)
                $(".header_new").removeClass("active");
            }
        });
    </script>
</head>

<body class="grey_matter cleaned">
    <script src="<c:url value="/resources/js/cleand2.js"/>"></script>
    <div class="borrower-landing">
        <div class="header_new">
            <div class="ringgetnsen_logo">
                <a href="index.html">
                    <img src="<c:url value="/resources/images/Ringgernsen_logo.png" />">
                </a>
            </div>
            <div class="header_right">
                <div class="apply_button">
                    <a href="signUp">Apply Now<br>
                    </a>
                </div>
                <div class="sign_in_button"><a href="admin" class="sign_in_style">Sign in</a></div>
            </div>

        </div>


        <main id="fullpageWrapper">
            <div class="row">
                <div class="cg_box1">
                    <div class="cgi_box_wrap">
                        <ul class="rslides" id="slider2">
                            <li>
                                <div class="cgi_box1_pic"><img src="<c:url value="/resources/images/cog_1.png"/>" ></div>
                                <div class="cgi_box1_content">
                                    <div class="cgi_box1_deatils">Stay on top of your money, financing, credit information and identity.</div>

                                    <div class="cgi_box1_apps">
                                        <a href="#"><img src="<c:url value="/resources/images/aap_storee.png"/>" ></a>
                                        <a href="#"><img src="<c:url value="/resources/images/google_play.png"/>" ></a>
                                    </div>
                                </div>
                            </li>


                            <li>
                                <div class="cg_box2">
                                    <div class="cgb2_right"><img src="<c:url value="/resources/images/credit_score.png"/>"></div>
                                    <div class="cgb2_left">
                                        <div class="cgb2_left_heading">Credit Score</div>
                                        <div class="cgb2_left_text">Learn how to track your credit score &amp; factor contributing to it. </div>
                                        <div class="cgb2_left_apps">
                                            <a href="#"><img src="<c:url value="/resources/images/aap_storee.png"/>"></a>
                                            <a href="#"><img src="<c:url value="/resources/images/google_play.png"/>"></a>
                                        </div>
                                    </div>
                                    <div class="clear"></div>
                                </div>
                            </li>
                            <li>
                                <div class="cg_box2">
                                    <div class="cgb2_right"><img src="<c:url value="/resources/images/shadule.png"/>"></div>
                                    <div class="cgb2_left">
                                        <div class="cgb2_left_heading">Schedule Financing</div>
                                        <div class="cgb2_left_text">Apply anytime, anywhere. Track your payment on the go.</div>
                                        <div class="cgb2_left_apps">
                                            <a href="#"><img src="<c:url value="/resources/images/aap_storee.png"/>"></a>
                                            <a href="#"><img src="<c:url value="/resources/images/google_play.png"/>"></a>
                                        </div>
                                    </div>
                                    <div class="clear"></div>
                                </div>
                            </li>

                            <li>

                                <div class="cg_box2">
                                    <div class="cgb2_right"><img src="<c:url value="/resources/images/boleh.png"/>"></div>
                                    <div class="cgb2_left">
                                        <div class="cgb2_left_heading"><img src="<c:url value="/resources/images/boleh_logo.png"/>"></div>
                                        <div class="cgb2_left_text">Compare Credit Card, Loans &amp; Insurance in your smart phone</div>
                                        <div class="cgb2_left_apps">
                                            <a href="#"><img src="<c:url value="/resources/images/aap_storee.png"/>"></a>
                                            <a href="#"><img src="<c:url value="/resources/images/google_play.png"/>"></a>
                                        </div>
                                    </div>
                                    <div class="clear"></div>
                                </div>
                            </li>
                            <li>
                                <div class="cg_box2">
                                    <div class="cgb2_right"><img src="<c:url value="/resources/images/shadule.png"/>"></div>
                                    <div class="cgb2_left">
                                        <div class="cgb2_left_heading">Express Loans Calculator
                                        </div>
                                        <div class="cgb2_left_text">A full range of loans calculator in your smart phone.</div>
                                        <div class="cgb2_left_apps">
                                            <a href="#"><img src="<c:url value="/resources/images/aap_storee.png"/>"></a>
                                            <a href="#"><img src="<c:url value="/resources/images/google_play.png"/>"></a>
                                        </div>
                                    </div>
                                    <div class="clear"></div>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="clear"></div>
                </div>
            </div>

            <div class="app_section">
                <div class="as_inner">
                    <div class="as_icon_pic"><img src="<c:url value="/resources/images/app_icon.png"/>"></div>
                    <div class="as_welcome">Welcome to AlphaCredits </div>
                    <div class="as_welcome2">Get it FREE now!</div>
                    <div class="as_icon_arrrow"><img src="<c:url value="/resources/images/up_arrow.png"/>"></div>
                </div>
                <div class="app_download">
                    <a href="#"><img src="<c:url value="/resources/images/aap_storee.png"/>"></a>
                    <a href="#"><img src="<c:url value="/resources/images/google_play.png"/>"></a>
                </div>

                <div class="app_dummy">
                    <img src="<c:url value="/resources/images/dummy_mobile.png"/>">
                </div>
            </div>
            <section class="fullpage_section fullpage_section--footer fp-auto-height">
                <div class="footer_new">
                    <div class="fn_row1">
                        <a href="#"><img src="<c:url value="/resources/images/fb_icon1.png"/>"></a>
                        <a href="#"><img src="<c:url value="/resources/images/twitt_icon.png"/>"></a>
                        <a href="#"><img src="<c:url value="/resources/images/linked_in_icon.png"/>"></a>
                    </div>

                    <div class="fn_row2">© 2016-2017 Recal. All rights reserved.</div>
                </div>
            </section>
        </main>
    </div>

</body>

</html>
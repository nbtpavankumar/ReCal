 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html class="no-js">
<meta http-equiv="content-type" content="text/html;charset=utf-8" />

<head>
    <title>Home Page
    </title>
    <base>
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1" />
    <meta name='apple-mobile-web-app-capable' content='yes' />
    <link href="<c:url value="/resources/css/layout.css" />" media="screen" rel="stylesheet" />
    <link href="<c:url value="/resources/css/fonts.css" />" media="screen" rel="stylesheet" />
    <link rel="stylesheet" href="<c:url value="/resources/css/powerange.css" />" />
    <script src="<c:url value="/resources/js/jquery-1.7.2.min.js" />">
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
    <script>
        var psp = {};
        psp.data = {
            login: false,
            proxy: "",
            roles: ("").replace(/&quot;/g, '"'),
            name: "",
            email: ""
        };
    </script>
    <script type="text/javascript">
        var omniture_data = {};
        window.optimizely = window.optimizely || [];
        var appConfig = {
            ringgetnsen_BASE_URL: "#",
            ringgetnsen_API_BASE_URL: "#",
            ringgetnsen_MOOVWEB_URL: "#",
            DEVELOPER_ringgetnsen_BASE_URL: "#",
            tracking: {
                IMPACT_RADIUS_CATEGORY: ""
            },
            DEFAULT_SERVICE_TIMEOUT: "9000",
            FF_ALLOW_TP_LAUNCH: "true",
            FF_ALLOW_TRANSFER_FUND: "",
            FF_DOC_UPLOAD_TRAFFIC: "100",
            PAYOUT_EMBED_CONFIGURE_TOKEN: "",
            PAYOUT_ENVIRONMENT: ""
        };
        if (window.s_gi) {
            window.optimizely.push(['activateSiteCatalyst', {
                    "sVariable": s_gi('prsprprod')
            }
            ]);
        }
    </script>
</head>

<body class="grey_matter cleaned">
    <script src="<c:url value="/resources/js/cleand2.js" />"></script>
    <div ng-app="landing" ng-controller="landingCtrl as LandingVM" class="borrower-landing" ringgetnsen-pax>
        <div class="header_new">
            <div class="ringgetnsen_logo">
                <a href="/home">
                    <img src="<c:url value="/resources/images/Ringgernsen_logo.png" />">
                </a>
            </div>
            <div class="header_right">
                <div class="apply_button">
                    <a href="signUp">Apply Now
            </a>
                </div>
                <div class="sign_in_button">
                    <a href="admin" class="sign_in_style">Sign in
            </a>
                </div>
            </div>
        </div>
        <main id="fullpageWrapper">
            <section class="fullpage_section above-the-fold-section" data-anchor="atf">
                <section class="pane above-the-fold" data-scroll-id="above-the-fold">
                    <div class="atf-container-new">
                        <div class="row">
                            <div class="banner_left">
                                <div class="banner_heading">Schedule Financing Made Simple
                                </div>
                                <div class="banner_box">
                                    <div class="banner_row">Low Rates
                                    </div>
                                    <div class="banner_row">Fixed term – 3, 6, 12 or 24 months
                                    </div>
                                    <div class="banner_row">Single monthly repayment
                                    </div>
                                    <div class="banner_row">No lock down period
                                    </div>
                                </div>
                                <div class="clear">
                                </div>
                            </div>
                            <div class="banner_right">
                                <div class="br_inner">
                                    <div class="bri_heading">Check My Rate
                                    </div>
                                    <div class="brih_sap">
                                        <img src="<c:url value="/resources/images/sap_rats.png" />">
                                    </div>
                                    <div class="birh_content">
                                        <div class="birh_rate_wrap">
                                            <div class="birh_rate_heading">I Want
                                                <span>RM 10000
                          </span>
                                            </div>
                                            <div class="birh_rslider">
                                                <input type="text" class="js-customized" />
                                            </div>
                                        </div>
                                        <div class="birh_month_wrap">
                                            <div class="birh_pre_text">For
                                            </div>
                                            <div class="birh_mid">
                                                <div class="birh_months">
                                                    <a href="#">3
                            </a>
                                                </div>
                                                <div class="birh_months">
                                                    <a href="#">6
                            </a>
                                                </div>
                                                <div class="birh_months">
                                                    <a href="#" class="active">9
                            </a>
                                                </div>
                                                <div class="birh_months nopadd">
                                                    <a href="#">12
                            </a>
                                                </div>
                                            </div>
                                            <div class="birh_past_text">Months
                                            </div>
                                        </div>
                                        <div class="annual_profit">
                                            <div class="ap_title_heading">Annual Profit Rate
                                            </div>
                                            <div class="ap_cont_row">
                                                <div class="apc_left">Recal
                                                </div>
                                                <div class="apc_right">4.30% - 17.30%
                                                </div>
                                            </div>
                                            <div class="ap_cont_row">
                                                <div class="apc_left">Others
                                                </div>
                                                <div class="apc_right">6.88% - 19.10%
                                                </div>
                                            </div>
                                        </div>
                                        <div class="monthly_instameent">
                                            <div class="ap_title_heading">Monthly Installment
                                            </div>
                                            <div class="ap_cont_row">
                                                <div class="apc_left">Recal
                                                </div>
                                                <div class="apc_right">RM869 - RM978
                                                </div>
                                            </div>
                                            <div class="ap_cont_row">
                                                <div class="apc_left">Others
                                                </div>
                                                <div class="apc_right">RM891 - RM993
                                                </div>
                                            </div>
                                        </div>
                                        <div class="apn_row">
                                            <div class="apn_inner">
                                                <a href="#" class="apply_yellow">Apply Now
                          </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="apply_terms">The above information is for illustration purposes only and excludes the processing fee. The monthly instalment and annual profit rate are only applicable if full settlement of invoice(s) are not received by the assigned due date.
                                    </div>
                                </div>
                            </div>
                        </div>
                        <section class="bubble_graphic">
                        </section>
                    </div>
                </section>
            </section>
            <section class="fullpage_section">
                <section landing-how-it-works id="HIW_trigger-checkRate" class="pane pane--HIW show-for-large" data-pax-name="BORROWER:Landing:How It Works 1:Scrolled" data-pax-event-type="scroll" data-scroll-id="how-it-works--checkrate">
                    <div class="HIW_content clearfix" id="HIW_content">
                        <div class="HIW_content_inner">
                            <h1 class="HIW_title how_work">How it works
                </h1>
                            <div class="row mediumlarge-collapse">
                                <div class="mediumlarge-6 columns">
                                    <div class="row">
                                        <div class="small-10 small-centered medium-8 mediumlarge-10 large-9 columns">
                                            <section class="HIW_illustration">
                                                <img src="<c:url value="/resources/images/screeennn.png" />">
                                                <div class="HIW_illustration responsiveScreen">
                                                    <div class="responsiveScreen_inner">
                                                        <img class="HIW_screenshot active" id="HIW_screen-checkRate" data-q='HIW-check-rate-image' src="<c:url value="/resources/images/slid_pic1.png" />">
                                                        <img class="HIW_screenshot" id="HIW_screen-chooseTerm" data-q='HIW-choose-terms-image' src="<c:url value="/resources/images/slid_pic2.png" />">
                                                        <img class="HIW_screenshot" id="HIW_screen-getFunds" data-q='HIW-get-funds-image' src="<c:url value="/resources/images/slid_pic1.png" />">
                                                    </div>
                                                </div>
                                            </section>
                                        </div>
                                    </div>
                                </div>
                                <div class="mediumlarge-6 columns">
                                    <div class="row">
                                        <div class="small-12 small-centered medium-10 mediumlarge-11 mediumlarge-uncentered large-10 columns">
                                            <section class="HIW_copy">
                                                <div class="HIW_item HIW_item--checkRate active" id="HIW_item--checkRate" data-q='HIW-check-rate-div'>
                                                    <span class="HIW_item_icon" data-q='HIW-check-rate-icon'>
                            </span>
                                                    <h5 class="HIW_item_title" data-q='HIW-check-rate-text1'>Check your rate
                            </h5>
                                                    <p class="HIW_item_summary" data-q='HIW-check-rate-text2'>Answer a few questions and get&nbsp;your&nbsp;lowest eligible rate in minutes.
                                                    </p>
                                                </div>
                                                <div class="HIW_item HIW_item--chooseTerm" id="HIW_item--chooseTerm" data-q='HIW-choose-terms-div'>
                                                    <span class="HIW_item_icon" data-q='HIW-choose-term-icon'>
                            </span>
                                                    <h5 class="HIW_item_title" data-q='HIW-choose-terms-text1'>Choose your term
                            </h5>
                                                    <p class="HIW_item_summary" data-q='HIW-choose-terms-text2'>Get a fixed term for 6, 9, 12 or 24 months. No hidden fees &amp; lock down period.

                                                    </p>
                                                </div>
                                                <div class="HIW_item HIW_item--getFunds" id="HIW_item--getFunds" data-q='HIW-get-funds-div'>
                                                    <span class="HIW_item_icon" data-q='HIW-get-funds-icon'>
                            </span>
                                                    <h5 class="HIW_item_title" data-q='HIW-get-funds-text1'>Get your funds
                            </h5>
                                                    <p class="HIW_item_summary" data-q='HIW-get-funds-text2'>Your money goes straight to your personal bank account
                                                    </p>
                                                </div>
                                            </section>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <a class="HIW_next" id="HIW_next" data-q="link--HIW--next" data-m="link--HIW--next">
                        </a>
                        <div class="HIW_wedge">
                        </div>
                    </div>
                </section>
                <div class="hide-for-large">
                    <section landing-how-it-works class="pane pane--HIW pane--HIW--flattened" data-pax-name="BORROWER:Landing:How It Works Flattened:Scrolled" data-pax-event-type="scroll" data-scroll-id="how-it-works--checkrate">
                        <h1 class="HIW_title">How it works
              </h1>
                        <div class="row css-table">
                            <div class="mediumlarge-6 columns css-table_cell">
                                <div class="row">
                                    <div class="small-10 small-centered medium-8 mediumlarge-9 columns">
                                        <section class="HIW_illustration">
                                            <img src="<c:url value="/resources/images/screeennn.png" />">
                                            <div class="HIW_illustration responsiveScreen">
                                                <div class="responsiveScreen_inner">
                                                    <img class="HIW_screenshot active" data-q='HIW-flattened-choose-terms-image' src="<c:url value="/resources/images/slid_pic1.png" />">
                                                </div>
                                            </div>
                                        </section>
                                    </div>
                                </div>
                            </div>
                            <div class="mediumlarge-6 columns css-table_cell">
                                <div class="row">
                                    <div class="small-10 small-centered medium-8 mediumlarge-9 mediumlarge-uncentered columns">
                                        <section class="HIW_copy">
                                            <div class="HIW_item HIW_item--checkRate active" data-q='HIW-flattened-check-rate-div'>
                                                <span class="HIW_item_icon" data-q='HIW-flattened-check-rate-icon'>
                          </span>
                                                <h5 class="HIW_item_title" data-q='HIW-flattened-check-rate-text1'>Check your rate
                          </h5>
                                                <p class="HIW_item_summary" data-q='HIW-flattened-check-rate-text2'>Answer a few questions and get&nbsp;your&nbsp;lowest eligible rate in minutes.
                                                </p>
                                            </div>
                                            <div class="HIW_item HIW_item--chooseTerm active" data-q='HIW-flattened-choose-terms-div'>
                                                <span class="HIW_item_icon" data-q='HIW-flattened-choose-term-icon'>
                          </span>
                                                <h5 class="HIW_item_title" data-q='HIW-flattened-choose-terms-text1'>Choose your term
                          </h5>
                                                <p class="HIW_item_summary" data-q='HIW-flattened-choose-terms-text2'>Get a fixed term for 3 or 5 years*. No hidden fees, early payment penalties or tricky fine print.
                                                </p>
                                            </div>
                                            <div class="HIW_item HIW_item--getFunds active" data-q='HIW-flattened-get-funds-div'>
                                                <span class="HIW_item_icon" data-q='HIW-flattened-get-funds-icon'>
                          </span>
                                                <h5 class="HIW_item_title" data-q='HIW-flattened-get-funds-text1'>Get your funds
                          </h5>
                                                <p class="HIW_item_summary" data-q='HIW-flattened-get-funds-text2'>Your money goes straight to your bank&nbsp;account via direct deposit.
                                                </p>
                                            </div>
                                        </section>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="HIW_wedge">
                            <div class="HIW_wedge_colorBlock">
                            </div>
                        </div>
                    </section>
                </div>
            </section>
            <section class="fullpage_section fullpage_section--chooseTerm">
                <section class="pane pane--HIW show-for-large" id="HIW_trigger--chooseTerm" data-pax-name="BORROWER:Landing:How It Works 2:Scrolled" data-pax-event-type="scroll" data-scroll-id="how-it-works--chooseTerm">
                </section>
            </section>
            <section class="fullpage_section fullpage_section--getFunds">
                <section class="pane pane--HIW show-for-large" id="HIW_trigger--getFunds" data-pax-name="BORROWER:Landing:How It Works 3:Scrolled" data-pax-event-type="scroll" data-scroll-id="how-it-works--getFunds">
                </section>
            </section>
            <section class="fullpage_section" data-anchor="fullpage_user-testimonials">
                <section class="pane testimonials" ng-switch on="reviewerName" ng-init="reviewerName = 'oscar'" data-pax-name="BORROWER:Landing:User Testimonials:Scrolled" data-pax-event-type="scroll" data-scroll-id="testimonials">
                    <div class="row">
                        <div class="mediumlarge-5 large-5 large-push-7 columns">
                            <div class="row">
                                <div class="small-10 small-centered large-12 columns hide-for-mediumlarge-only">
                                    <div class="ringgetnsen_image-wrapper">
                                        <div class="row">
                                            <div class="small-10 small-centered large-12 columns">
                                                <img src="<c:url value="/resources/images/recal_phone.png" />" alt="" class="ringgetnsen_image" data-q="ringgetnsen-image">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="mediumlarge-12 columns show-for-mediumlarge-only">
                                    <img src="<c:url value="/resources/images/recal_phone.png" />" alt="" class="ringgetnsen_image" data-q="ringgetnsen-image-mediumlarge">
                                </div>
                            </div>
                        </div>
                        <div class="mediumlarge-7 large-7 large-pull-5 columns">
                            <div class="ringgetnsen_copy-wrapper">
                                <div class="ringgetnsen_copy">
                                    <div class="row">
                                        <div class="small-10 small-centered mediumlarge-11 large-12 large-uncentered columns">
                                            <h1 class="ringgetnsen_title pane_title show-for-large">Stay on top of your money with
                          <br>
                          AlphaCredits <i>express</i>

                        </h1>
                                            <ul class="ringgetnsen_list">
                                                <li data-q="ringgetnsen-bullet-1" class="ringgetnsen_list-item">View your financial accounts and personal credit information one place
                                                </li>
                                                <li data-q="ringgetnsen-bullet-2" class="ringgetnsen_list-item">Know exactly where your money is going
                                                </li>
                                            </ul>
                                            <div class="app_box">
                                                <div class="ringgetnsen_app-links-wrapper" style="float:left;">
                                                    <a class="ringgetnsen_app-link" href="https://itunes.apple.com/in/genre/ios/id36?mt=8">
                                                        <img src="<c:url value="/resources/images/aap_storee.png" />">
                                                    </a>
                                                    <a class="ringgetnsen_app-link" href="https://play.google.com/store?hl=en">
                                                        <img src="<c:url value="/resources/images/google_play.png" />">
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="compny_go_link">
                                                <a href="#">Click here to learn more about AlphaCredits <i>express</i> >
                          </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </section>
            <section class="fullpage_section schedule_financing">
                <div class="sf_heading">Example of Schedule Financing fee and rates
                </div>
                <div class="sf_content2">
                    <img src="<c:url value="/resources/images/ExampleGraphics.png" />">
                </div>
            </section>
            <section class="fullpage_section fullpage_section--footer fp-auto-height">
                <div class="footer_new">
                    <div class="fn_row1">
                        <a href="#">
                            <img src="<c:url value="/resources/images/fb_icon1.png" />">
                        </a>
                        <a href="#">
                            <img src="<c:url value="/resources/images/twitt_icon.png" />">
                        </a>
                        <a href="#">
                            <img src="<c:url value="/resources/images/linked_in_icon.png" />">
                        </a>
                    </div>
                    <div class="fn_row2">© 2016-2017 Recal. All rights reserved.
                    </div>
                </div>
            </section>
        </main>
    </div>
    <script src="<c:url value="/resources/js/cleand.js" />">
    </script>
    <script>
        window._satellite = window._satellite || {
            pageBottom: function () {
                this.webBlocker();
            },
            track: function () {
                this.webBlocker();
            },
            webBlocker: function () {
                console.log('Please disable your web-blocker plugins and reload the page.');
            }
        };
    </script>
    <script src="<c:url value="/resources/js/powerange.min.js" />">
    </script>
    <script type="text/javascript">
        // Basic customization.
        var cust = document.querySelector('.js-customized');
        var initCust = new Powerange(cust, {
            hideRange: true,
            klass: 'power-ranger',
            start: 60
        });
        // Min, max, start.
        var vals = document.querySelector('.js-min-max-start');
        var initVals = new Powerange(vals, {
            min: 16,
            max: 256,
            start: 128
        });
        // Decimal.
        var dec = document.querySelector('.js-decimal');
        var initDec = new Powerange(dec, {
            decimal: true,
            callback: displayDecimalValue,
            max: 50,
            start: 19.12
        });

        function displayDecimalValue() {
            document.getElementById('js-display-decimal').innerHTML = dec.value;
        }
        // Step.
        var stp = document.querySelector('.js-step');
        var initStp = new Powerange(stp, {
            start: 50,
            step: 10
        });
        // Hide range.
        var hide = document.querySelector('.js-hiderange');
        var initHideRange = new Powerange(hide, {
            hideRange: true,
            start: 70
        });
        // Disabled.
        var disabled = document.querySelector('.js-disabled');
        var initDisabled = new Powerange(disabled, {
            disable: true,
            disabledOpacity: 0.75,
            start: 30
        });
        // Vertical.
        var vert = document.querySelector('.js-vertical');
        var initVert = new Powerange(vert, {
            start: 80,
            vertical: true
        });
        // Checking state.
        // On click.
        var clickInput = document.querySelector('.js-check-click'),
            clickButton = document.querySelector('.js-check-click-button'),
            initClickInput = new Powerange(clickInput, {
                start: 20
            });
        clickButton.addEventListener('click', function () {
            alert(clickInput.value);
        });
        // On change.
        var changeInput = document.querySelector('.js-check-change'),
            initChangeInput = new Powerange(changeInput, {
                start: 70
            });
        changeInput.onchange = function () {
            document.getElementById('js-display-change').innerHTML = changeInput.value;
        };
        // Callback.
        var clbk = document.querySelector('.js-callback');
        var initClbk = new Powerange(clbk, {
            callback: displayValue,
            start: 88
        });

        function displayValue() {
            document.getElementById('js-display-callback').innerHTML = clbk.value;
        }
        // Interacting with elements.
        var opct = document.querySelector('.js-opacity');
        var initOpct = new Powerange(opct, {
            callback: setOpacity,
            decimal: true,
            min: 0,
            max: 1,
            start: 1
        });

        function setOpacity() {
            document.querySelector('.js-change-opacity').style.opacity = opct.value;
        }
    </script>
</body>

</html>
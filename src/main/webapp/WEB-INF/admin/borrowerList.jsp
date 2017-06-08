 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html class="no-js">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1" />
    <meta name='apple-mobile-web-app-capable' content='yes' />
    <title>Borrower List</title>
    <link href="css/admin.css" media="screen" rel="stylesheet" />
    <link href="css/fonts.css" media="screen" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="css/ddlevelsmenu-base.css" />
    <link href="css/material-design-iconic-font.min.css" rel="stylesheet" />
    <link href="css/responsive.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/datatables.min.css" rel="stylesheet" />
    <link href="css/daterangepicker-bs3.css" rel="stylesheet" />

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript">
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
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/ddlevelsmenu.js"></script>
    <script>
        $(document).ready(function () {
            $(".dropdown-menu li a").click(function () {
                $("#options").text($(this).text());
            });
        });
    </script>
    <script type="text/javascript" src="js/datatables.min.js.download"></script>
    <script type="text/javascript" charset="utf-8">
        $(document).ready(function () {
            $('#example').DataTable();
        });
    </script>

    <script type="text/javascript" src="js/notify.js"></script>
    <script type="text/javascript" src="js/moment.js"></script>
    <script type="text/javascript" src="js/daterangepicker.js"></script>

    <script type="text/javascript">
        $(function () {


            var localStart = moment("11/01/2016", "MM/DD/YYYY");
            var localEnd = moment("11/30/2016", "MM/DD/YYYY");

            function cb(start, end) {
                localStart = start;
                localEnd = end;
                $('#reportrange span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
                $.notify("Loading...", {
                    style: 'showloading'
                });
                setTimeout(function () {
                    window.location.href = '/oacc/authorizer/borrowerlist' + '?s=&ds=' + start.format('MM/DD/YYYY') + '&de=' + end.format('MM/DD/YYYY') + '&noapp=' + $("#chkNoApp").is(":checked");
                }, 1500);

            }

            $('#reportrange span').html(localStart.format('MMMM D, YYYY') + ' - ' + localEnd.format('MMMM D, YYYY'));

            $('#reportrange').daterangepicker({
                "startDate": "11/01/2016",
                "endDate": "11/30/2016",
                ranges: {
                    'Today': [moment(), moment()],
                    'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                    'Last 7 Days': [moment().subtract(6, 'days'), moment()],
                    'Last 15 Days': [moment().subtract(14, 'days'), moment()],
                    'This Month': [moment().startOf('month'), moment().endOf('month')],
                    'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
                }
            }, cb);

            $('#chkNoApp').on('change', function (e) {
                e.preventDefault();
                cb(localStart, localEnd);
            });
        });
    </script>

    <script type="text/javascript">
        jQuery(document).ready(function () {

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
        }
    </script>
    <script type="text/javascript" src="js/bootstrap-datepicker.js"></script>




</head>

<body>
    <div class="header_top">
        <div class="ht_inner">
            <div class="hti_logo">
                <a href="#"><img src="images/Ringgernsen_logo.png" /></a>
            </div>
            <div class="ht_user" id="ddtopmenubar">
                <ul>
                    <li>
                        <a href="#" rel="ddsubmenu3"><img src="images/user_icon.png" /></a>
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
                <div class="logo"><a href="index.html">Menu</a></div>
                <div id="head-mobile"></div>
                <div class="button"></div>
                <ul>
                    <li><a href='dashboard.html'>Dashboard</a></li>
                    <li class='active'><a href='#'>Application</a>
                        <ul>
                            <li><a href='application-list.html'>Lists</a> </li>
                            <li><a href='borrower-list.html'>Borrower</a> </li>
                            <li><a href='sales-rep.html'>Sales Rep</a> </li>
                        </ul>
                    </li>
                    <li><a href='#'>Loan</a>
                        <ul>
                            <li><a href='loan-list.html'>Lists</a> </li>
                            <li><a href='disbursement.html'>Disbursement</a> </li>
                            <li><a href='collections.html'>Collections</a> </li>
                        </ul>

                    </li>
                    <li><a href='#'>Investor</a>
                        <ul>
                            <li><a href='Top-up-funds.html'>Top up funds</a> </li>
                            <li><a href='Withdrawal-Request.html'>Withdrawal Request</a> </li>
                            <li><a href='LLP-Master.html'>LLP Master</a> </li>
                        </ul>
                    </li>
                    <li><a href='#'>Messages</a>
                        <ul>
                            <li><a href='Emails.html'>Emails</a> </li>
                            <li><a href='message-template.html'>Message Templates</a> </li>
                            <li><a href='sms-list.html'>SMS</a> </li>
                        </ul>
                    </li>

                    <li><a href='#'>Users</a>
                        <ul>
                            <li><a href='authorizer.html'>Authorizer</a> </li>
                            <li><a href='maker.html'>Maker</a> </li>
                        </ul>
                    </li>
                    <li><a href='#'>Reporting</a>
                        <ul>
                            <li><a href='Disbursement_Report.html'>Disbursement</a> </li>
                            <li><a href='Collection_Report.html'>Collection</a> </li>
                            <li><a href='Loan_Report.html'>Loan</a> </li>
                            <li><a href='Declined_Application_Report.html'>Declined Application</a> </li>
                            <li><a href='Delinquency_Info.html'>Delinquency Info</a> </li>
                            <li><a href='Ramci_Credit_Info.html'>Ramci Api Logs</a> </li>
                        </ul>
                    </li>
                    <li><a href='#'>UAT</a>
                        <ul>
                            <li><a href='Repayment_Schedule.html'>Repayment Schedules</a> </li>
                            <li><a href='Schedule_Task.html'>Schedule Tasks</a> </li>
                            <li><a href='Social_Test.html'>Social Test</a> </li>
                        </ul>
                    </li>
                </ul>
            </nav>
            <div class="clear"></div>
        </div>
    </header>
    <div class="content_area">
        <div class="content_inner">
            <div class="content_box_wrap">
                <div class="content_box">
                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <h1><i class="zmdi zmdi-file-text"></i> &nbsp;Borrower Lists</h1>
                            <div class="pull-right time-date-set">
                                <div id="reportrange" class="pull-left dd-daterange set-date-pi">
                                    <i class="glyphicon glyphicon-calendar fa fa-calendar"></i>&nbsp;
                                    <span>November 1, 2016 - November 30, 2016</span> <b class="caret"></b>
                                </div>


                                <p class="p-check pull-left">
                                    <input type="checkbox" id="test1" />
                                    <label for="test1" class="pt-5">No Application</label>
                                </p>
                            </div>

                        </div>

                    </div>
                </div>

                <div class="panel-body">
                    <div class="list-content">
                        <div class="row">
                            <div class="col-sm-12 table-responsive">
                                <table id="example" class="table table-striped table-bordered dataTable no-footer" cellspacing="0" width="100%" role="grid" aria-describedby="example_info" style="width: 100%;">
                                    <thead>
                                        <tr role="row">
                                            <th class="sorting info" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="Name: activate to sort column ascending" style="width: 180px;">Name</th>
                                            <th class="sorting_desc info" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="Position: activate to sort column ascending" aria-sort="descending" style="width: 120px;">Sequence Id</th>
                                            <th class="sorting info" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="Office: activate to sort column ascending" style="width: 120px;">New IC</th>
                                            <th class="sorting info" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="Salary: activate to sort column ascending" style="width: 100px;">Email</th>
                                            <th class="sorting info" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="Salary: activate to sort column ascending" style="width: 150px;">Mobile Tel. No</th>
                                            <th class="sorting info" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="Salary: activate to sort column ascending" style="width: 150px;">Last Login On</th>
                                            <th class="sorting info" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="Salary: activate to sort column ascending" style="width: 100px;">Created On</th>
                                            <th class="sorting info" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="Salary: activate to sort column ascending" style="width: 100px;">Suspend Period</th>
                                            <th class="sorting info" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="Salary: activate to sort column ascending" style="width: 100px;">Suspend Reason</th>
                                            <th class="sorting info" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="Salary: activate to sort column ascending" style="width: 90px;">Suspend By</th>
                                            <th class="sorting info" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="Salary: activate to sort column ascending" style="width: 90px;">Suspend On</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr role="row" class="odd">
                                            <td class="">Chen Chee Wah</td>
                                            <td><a href="#" class="blue-text">A161003330</a></td>
                                            <td>Chen Wah</td>
                                            <td>example@gmail.com</td>
                                            <td>8236954788</td>
                                            <td>07-Mar-2016 20:59:22</td>
                                            <td>07-Mar-2016 20:59:22</td>
                                            <td>12 months</td>
                                            <td>Rejected</td>
                                            <td>Chen Chee Wah</td>
                                            <td>22-Mar-2016</td>
                                        </tr>

                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>


            </div>
        </div>
        <div class="clear"></div>
    </div>


    <ul id="ddsubmenu3" class="ddsubmenustyle">
        <li><a href="#">info@exampledomin.com</a></li>
        <li><a href="#">Change Password</a></li>
        <li><a href="#">Sign Out</a></li>
    </ul>









</body>

</html>
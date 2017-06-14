<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/admin/includes/header1.jsp"%>

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
    
    <div class="content_area">
        <div class="content_inner">
            <div class="content_box_wrap">
                <div class="content_heading2_wrap border-none">
                    <div class="content_box">
                        <h1><img src="<c:url value="/resources/adminassets/images/info_icon.png"/>"> &nbsp;Ramci Credit Info</h1> </div>
                </div>
                <div class="cb_mid">
                    <div class="reshudle_wrap">
                        <div id="example_wrapper" class="dataTables_wrapper form-inline dt-bootstrap no-footer">
                            <div class="row marg_top_10">
                                <div class="col-sm-12 table-responsive">
                                    <table id="example" class="table table-striped table-bordered dataTable no-footer" cellspacing="0" width="100%" role="grid" aria-describedby="example_info" style="width: 100%;">
                                        <thead>
                                            <tr role="row">
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 150px;">Ip Address</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 150px;">Search_req_entityid</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width:150px;"> Result_req_start</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width:150px;">Result_req_end</th>

                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 100px;">Result_req_status</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 100px;">Search_req_entityname</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width:100px;">Search_req_start</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width:100px;">Search_req_end</th>

                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 100px;">Search_req_status</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 100px;">Search_resp_crefid</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width:100px;">Search_resp_entitykey</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width:100px;">Confirm_req_start</th>

                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 100px;">Confirm_req_end</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 100px;">Confirm_req_status</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width:100px;">Confirm_resp_token1</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width:100px;">Confirm_resp_token2</th>

                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 100px;">Retry_attempt</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 100px;">Retry_required</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 100px;">Retry_lastdatetime</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 100px;">Subscriber_name</th>

                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 100px;">Username</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 100px;">Order_date</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 100px;">Order_time</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 100px;">Userid</th>

                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 100px;">Order_id</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 100px;">Created On</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 100px;">Created By</th>


                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr role="row" class="odd">
                                                <td>113.210.190.3</td>
                                                <td> <a href="#">850311-08-6560</a></td>
                                                <td>13-Sep-2016 11:58:05</td>
                                                <td>13-Sep-2016 11:58:17</td>
                                                <td>success</td>
                                                <td>chai ying san</td>
                                                <td>13-Sep-2016 11:58:03</td>
                                                <td>13-Sep-2016 11:58:04</td>
                                                <td>Lorem </td>
                                                <td>11919</td>
                                                <td>21825119</td>
                                                <td>13-Sep-2016 11:58:04</td>
                                                <td>13-Sep-2016 11:58:05</td>
                                                <td>Lorem ipsum </td>
                                                <td>110448507</td>
                                                <td>26908987</td>
                                                <td>4</td>
                                                <td>Lorem Ipsum</td>
                                                <td> Lorem </td>
                                                <td>MY LENDLEND SDN. BHD.</td>
                                                <td>WEB SERVICE</td>
                                                <td>2016-09-13</td>
                                                <td>11:57:51</td>
                                                <td>MYLB2B</td>
                                                <td>110448507</td>
                                                <td>13-Sep-2016 11:58:04</td>
                                                <td>chai@gmail.com</td>
                                            </tr>
                                            <tr role="row" class="even">
                                                <td>113.210.190.3</td>
                                                <td> <a href="#">850311-08-6560</a></td>
                                                <td>13-Sep-2016 11:58:05</td>
                                                <td>13-Sep-2016 11:58:17</td>
                                                <td>success</td>
                                                <td>chai ying san</td>
                                                <td>13-Sep-2016 11:58:03</td>
                                                <td>13-Sep-2016 11:58:04</td>
                                                <td>Lorem </td>
                                                <td>11919</td>
                                                <td>21825119</td>
                                                <td>13-Sep-2016 11:58:04</td>
                                                <td>13-Sep-2016 11:58:05</td>
                                                <td>Lorem ipsum </td>
                                                <td>110448507</td>
                                                <td>26908987</td>
                                                <td>4</td>
                                                <td>Lorem Ipsum</td>
                                                <td> Lorem </td>
                                                <td>MY LENDLEND SDN. BHD.</td>
                                                <td>WEB SERVICE</td>
                                                <td>2016-09-13</td>
                                                <td>11:57:51</td>
                                                <td>MYLB2B</td>
                                                <td>110448507</td>
                                                <td>13-Sep-2016 11:58:04</td>
                                                <td>chai@gmail.com</td>
                                            </tr>
                                            <tr role="row" class="odd">
                                                <td>113.210.190.3</td>
                                                <td> <a href="#">850311-08-6560</a></td>
                                                <td>13-Sep-2016 11:58:05</td>
                                                <td>13-Sep-2016 11:58:17</td>
                                                <td>success</td>
                                                <td>chai ying san</td>
                                                <td>13-Sep-2016 11:58:03</td>
                                                <td>13-Sep-2016 11:58:04</td>
                                                <td>Lorem </td>
                                                <td>11919</td>
                                                <td>21825119</td>
                                                <td>13-Sep-2016 11:58:04</td>
                                                <td>13-Sep-2016 11:58:05</td>
                                                <td>Lorem ipsum </td>
                                                <td>110448507</td>
                                                <td>26908987</td>
                                                <td>4</td>
                                                <td>Lorem Ipsum</td>
                                                <td> Lorem </td>
                                                <td>MY LENDLEND SDN. BHD.</td>
                                                <td>WEB SERVICE</td>
                                                <td>2016-09-13</td>
                                                <td>11:57:51</td>
                                                <td>MYLB2B</td>
                                                <td>110448507</td>
                                                <td>13-Sep-2016 11:58:04</td>
                                                <td>chai@gmail.com</td>
                                            </tr>
                                            <tr role="row" class="even">
                                                <td>113.210.190.3</td>
                                                <td> <a href="#">850311-08-6560</a></td>
                                                <td>13-Sep-2016 11:58:05</td>
                                                <td>13-Sep-2016 11:58:17</td>
                                                <td>success</td>
                                                <td>chai ying san</td>
                                                <td>13-Sep-2016 11:58:03</td>
                                                <td>13-Sep-2016 11:58:04</td>
                                                <td>Lorem </td>
                                                <td>11919</td>
                                                <td>21825119</td>
                                                <td>13-Sep-2016 11:58:04</td>
                                                <td>13-Sep-2016 11:58:05</td>
                                                <td>Lorem ipsum </td>
                                                <td>110448507</td>
                                                <td>26908987</td>
                                                <td>4</td>
                                                <td>Lorem Ipsum</td>
                                                <td> Lorem </td>
                                                <td>MY LENDLEND SDN. BHD.</td>
                                                <td>WEB SERVICE</td>
                                                <td>2016-09-13</td>
                                                <td>11:57:51</td>
                                                <td>MYLB2B</td>
                                                <td>110448507</td>
                                                <td>13-Sep-2016 11:58:04</td>
                                                <td>chai@gmail.com</td>
                                            </tr>
                                            <tr role="row" class="odd">
                                                <td>113.210.190.3</td>
                                                <td> <a href="#">850311-08-6560</a></td>
                                                <td>13-Sep-2016 11:58:05</td>
                                                <td>13-Sep-2016 11:58:17</td>
                                                <td>success</td>
                                                <td>chai ying san</td>
                                                <td>13-Sep-2016 11:58:03</td>
                                                <td>13-Sep-2016 11:58:04</td>
                                                <td>Lorem </td>
                                                <td>11919</td>
                                                <td>21825119</td>
                                                <td>13-Sep-2016 11:58:04</td>
                                                <td>13-Sep-2016 11:58:05</td>
                                                <td>Lorem ipsum </td>
                                                <td>110448507</td>
                                                <td>26908987</td>
                                                <td>4</td>
                                                <td>Lorem Ipsum</td>
                                                <td> Lorem </td>
                                                <td>MY LENDLEND SDN. BHD.</td>
                                                <td>WEB SERVICE</td>
                                                <td>2016-09-13</td>
                                                <td>11:57:51</td>
                                                <td>MYLB2B</td>
                                                <td>110448507</td>
                                                <td>13-Sep-2016 11:58:04</td>
                                                <td>chai@gmail.com</td>
                                            </tr>
                                            <tr role="row" class="even">
                                                <td>113.210.190.3</td>
                                                <td> <a href="#">850311-08-6560</a></td>
                                                <td>13-Sep-2016 11:58:05</td>
                                                <td>13-Sep-2016 11:58:17</td>
                                                <td>success</td>
                                                <td>chai ying san</td>
                                                <td>13-Sep-2016 11:58:03</td>
                                                <td>13-Sep-2016 11:58:04</td>
                                                <td>Lorem </td>
                                                <td>11919</td>
                                                <td>21825119</td>
                                                <td>13-Sep-2016 11:58:04</td>
                                                <td>13-Sep-2016 11:58:05</td>
                                                <td>Lorem ipsum </td>
                                                <td>110448507</td>
                                                <td>26908987</td>
                                                <td>4</td>
                                                <td>Lorem Ipsum</td>
                                                <td> Lorem </td>
                                                <td>MY LENDLEND SDN. BHD.</td>
                                                <td>WEB SERVICE</td>
                                                <td>2016-09-13</td>
                                                <td>11:57:51</td>
                                                <td>MYLB2B</td>
                                                <td>110448507</td>
                                                <td>13-Sep-2016 11:58:04</td>
                                                <td>chai@gmail.com</td>
                                            </tr>
                                            <tr role="row" class="odd">
                                                <td>113.210.190.3</td>
                                                <td> <a href="#">850311-08-6560</a></td>
                                                <td>13-Sep-2016 11:58:05</td>
                                                <td>13-Sep-2016 11:58:17</td>
                                                <td>success</td>
                                                <td>chai ying san</td>
                                                <td>13-Sep-2016 11:58:03</td>
                                                <td>13-Sep-2016 11:58:04</td>
                                                <td>Lorem </td>
                                                <td>11919</td>
                                                <td>21825119</td>
                                                <td>13-Sep-2016 11:58:04</td>
                                                <td>13-Sep-2016 11:58:05</td>
                                                <td>Lorem ipsum </td>
                                                <td>110448507</td>
                                                <td>26908987</td>
                                                <td>4</td>
                                                <td>Lorem Ipsum</td>
                                                <td> Lorem </td>
                                                <td>MY LENDLEND SDN. BHD.</td>
                                                <td>WEB SERVICE</td>
                                                <td>2016-09-13</td>
                                                <td>11:57:51</td>
                                                <td>MYLB2B</td>
                                                <td>110448507</td>
                                                <td>13-Sep-2016 11:58:04</td>
                                                <td>chai@gmail.com</td>
                                            </tr>
                                            <tr role="row" class="even">
                                                <td>113.210.190.3</td>
                                                <td> <a href="#">850311-08-6560</a></td>
                                                <td>13-Sep-2016 11:58:05</td>
                                                <td>13-Sep-2016 11:58:17</td>
                                                <td>success</td>
                                                <td>chai ying san</td>
                                                <td>13-Sep-2016 11:58:03</td>
                                                <td>13-Sep-2016 11:58:04</td>
                                                <td>Lorem </td>
                                                <td>11919</td>
                                                <td>21825119</td>
                                                <td>13-Sep-2016 11:58:04</td>
                                                <td>13-Sep-2016 11:58:05</td>
                                                <td>Lorem ipsum </td>
                                                <td>110448507</td>
                                                <td>26908987</td>
                                                <td>4</td>
                                                <td>Lorem Ipsum</td>
                                                <td> Lorem </td>
                                                <td>MY LENDLEND SDN. BHD.</td>
                                                <td>WEB SERVICE</td>
                                                <td>2016-09-13</td>
                                                <td>11:57:51</td>
                                                <td>MYLB2B</td>
                                                <td>110448507</td>
                                                <td>13-Sep-2016 11:58:04</td>
                                                <td>chai@gmail.com</td>
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

    </div>

    <ul id="ddsubmenu3" class="ddsubmenustyle">
        <li><a href="#">info@exampledomin.com</a></li>
        <li><a href="#">Change Password</a></li>
        <li><a href="#">Sign Out</a></li>
    </ul>
    <script type="text/javascript">
        // For demo to fit into DataTables site builder...
        $('#example')
            .removeClass('display')
            .addClass('table table-striped table-bordered');
    </script>




    <script type="text/javascript">
        $(document).ready(function () {

            $('#config-text').keyup(function () {
                eval($(this).val());
            });

            $('.configurator input, .configurator select').change(function () {
                updateConfig();
            });

            $('.demo i').click(function () {
                $(this).parent().find('input').click();
            });

            $('#startDate').daterangepicker({
                singleDatePicker: true,
                startDate: moment().subtract(6, 'days')
            });

            $('#endDate').daterangepicker({
                singleDatePicker: true,
                startDate: moment()
            });

            updateConfig();

            function updateConfig() {
                var options = {};

                if ($('#singleDatePicker').is(':checked'))
                    options.singleDatePicker = true;

                if ($('#showDropdowns').is(':checked'))
                    options.showDropdowns = true;

                if ($('#showWeekNumbers').is(':checked'))
                    options.showWeekNumbers = true;

                if ($('#showISOWeekNumbers').is(':checked'))
                    options.showISOWeekNumbers = true;

                if ($('#timePicker').is(':checked'))
                    options.timePicker = true;

                if ($('#timePicker24Hour').is(':checked'))
                    options.timePicker24Hour = true;

                if ($('#timePickerIncrement').val().length && $('#timePickerIncrement').val() != 1)
                    options.timePickerIncrement = parseInt($('#timePickerIncrement').val(), 10);

                if ($('#timePickerSeconds').is(':checked'))
                    options.timePickerSeconds = true;

                if ($('#autoApply').is(':checked'))
                    options.autoApply = true;

                if ($('#dateLimit').is(':checked'))
                    options.dateLimit = {
                        days: 7
                    };

                if ($('#ranges').is(':checked')) {
                    options.ranges = {
                        'Today': [moment(), moment()],
                        'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                        'Last 7 Days': [moment().subtract(6, 'days'), moment()],
                        'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                        'This Month': [moment().startOf('month'), moment().endOf('month')],
                        'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
                    };
                }

                if ($('#locale').is(':checked')) {
                    $('#rtl-wrap').show();
                    options.locale = {
                        direction: $('#rtl').is(':checked') ? 'rtl' : 'ltr',
                        format: 'MM/DD/YYYY HH:mm',
                        separator: ' - ',
                        applyLabel: 'Apply',
                        cancelLabel: 'Cancel',
                        fromLabel: 'From',
                        toLabel: 'To',
                        customRangeLabel: 'Custom',
                        daysOfWeek: ['Su', 'Mo', 'Tu', 'We', 'Th', 'Fr', 'Sa'],
                        monthNames: ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'],
                        firstDay: 1
                    };
                } else {
                    $('#rtl-wrap').hide();
                }

                if (!$('#linkedCalendars').is(':checked'))
                    options.linkedCalendars = false;

                if (!$('#autoUpdateInput').is(':checked'))
                    options.autoUpdateInput = false;

                if (!$('#showCustomRangeLabel').is(':checked'))
                    options.showCustomRangeLabel = false;

                if ($('#alwaysShowCalendars').is(':checked'))
                    options.alwaysShowCalendars = true;

                if ($('#parentEl').val().length)
                    options.parentEl = $('#parentEl').val();

                if ($('#startDate').val().length)
                    options.startDate = $('#startDate').val();

                if ($('#endDate').val().length)
                    options.endDate = $('#endDate').val();

                if ($('#minDate').val().length)
                    options.minDate = $('#minDate').val();

                if ($('#maxDate').val().length)
                    options.maxDate = $('#maxDate').val();

                if ($('#opens').val().length && $('#opens').val() != 'right')
                    options.opens = $('#opens').val();

                if ($('#drops').val().length && $('#drops').val() != 'down')
                    options.drops = $('#drops').val();

                if ($('#buttonClasses').val().length && $('#buttonClasses').val() != 'btn btn-sm')
                    options.buttonClasses = $('#buttonClasses').val();

                if ($('#applyClass').val().length && $('#applyClass').val() != 'btn-success')
                    options.applyClass = $('#applyClass').val();

                if ($('#cancelClass').val().length && $('#cancelClass').val() != 'btn-default')
                    options.cancelClass = $('#cancelClass').val();

                $('#config-text').val("$('#demo').daterangepicker(" + JSON.stringify(options, null, '    ') + ", function(start, end, label) {\n  console.log(\"New date range selected: ' + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD') + ' (predefined range: ' + label + ')\");\n});");

                $('#config-demo').daterangepicker(options, function (start, end, label) {
                    console.log('New date range selected: ' + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD') + ' (predefined range: ' + label + ')');
                });

            }

        });
    </script>


    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/moment.js"></script>
    <script type="text/javascript" src="js/daterangepicker.js"></script>

</html>
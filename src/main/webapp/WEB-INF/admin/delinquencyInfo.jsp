<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/admin/includes/header1.jsp"%>
    <div class="content_area">
        <div class="content_inner">
            <div class="content_box_wrap">
                <div class="content_heading2_wrap border-none">
                    <div class="content_box">
                        <h1><img src="<c:url value="/resources/adminassets/images/info_icon.png"/>"> &nbsp;Delinquency Info </h1>

                        <small><label for="exporttoexcel" class="btn btn-success btn btn-sm marg-left-20"><i class="fa fa-file-pdf-o" aria-hidden="true"></i>Export</label></small></div>
                </div>
                <div class="cb_mid">
                    <div class="reshudle_wrap">
                        <div id="example_wrapper" class="dataTables_wrapper form-inline dt-bootstrap no-footer">
                            <div class="row marg_top_10">
                                <div class="col-sm-12 table-responsive">
                                    <table id="example" class="table table-striped table-bordered dataTable no-footer" cellspacing="0" width="100%" role="grid" aria-describedby="example_info" style="width: 100%;">
                                        <thead>
                                            <tr role="row">
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 150px;">App Id#</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 150px;">Status</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width:200px;">Outstanding</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width:200px;">Limit</th>

                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 150px;">Tenor</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 100px;">10/16</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width:100px;">9/16</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width:100px;">8/16</th>

                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 100px;">7/16</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 100px;">6/16</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width:100px;">5/16</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width:100px;">4/16</th>

                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 100px;">3/16</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 100px;">2/16</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width:100px;">1/16</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width:100px;">12/15</th>

                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 100px;">11/15</th>

                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr role="row" class="odd">
                                                <td class="">161001615</td>
                                                <td class="sorting_1">Current</td>
                                                <td>RM10,000.00</td>
                                                <td>RM10,000.00</td>
                                                <td>12 months</td>
                                                <td>Lorem ipsum</td>
                                                <td>Lorem ipsum</td>
                                                <td>Lorem ipsum</td>
                                                <td>Lorem ipsum</td>
                                                <td>Lorem ipsum</td>
                                                <td>Lorem ipsum</td>
                                                <td>Lorem ipsum</td>
                                                <td>Lorem ipsum</td>
                                                <td>Lorem ipsum</td>
                                                <td>Lorem ipsum</td>
                                                <td>Lorem ipsum</td>
                                                <td>Lorem ipsum</td>
                                            </tr>
                                            <tr role="row" class="odd">
                                                <td class="">161001615</td>
                                                <td class="sorting_1">Current</td>
                                                <td>RM10,000.00</td>
                                                <td>RM10,000.00</td>
                                                <td>12 months</td>
                                                <td>Lorem ipsum</td>
                                                <td>Lorem ipsum</td>
                                                <td>Lorem ipsum</td>
                                                <td>Lorem ipsum</td>
                                                <td>Lorem ipsum</td>
                                                <td>Lorem ipsum</td>
                                                <td>Lorem ipsum</td>
                                                <td>Lorem ipsum</td>
                                                <td>Lorem ipsum</td>
                                                <td>Lorem ipsum</td>
                                                <td>Lorem ipsum</td>
                                                <td>Lorem ipsum</td>
                                            </tr>
                                            <tr role="row" class="odd">
                                                <td class="">161001615</td>
                                                <td class="sorting_1">Current</td>
                                                <td>RM10,000.00</td>
                                                <td>RM10,000.00</td>
                                                <td>12 months</td>
                                                <td>Lorem ipsum</td>
                                                <td>Lorem ipsum</td>
                                                <td>Lorem ipsum</td>
                                                <td>Lorem ipsum</td>
                                                <td>Lorem ipsum</td>
                                                <td>Lorem ipsum</td>
                                                <td>Lorem ipsum</td>
                                                <td>Lorem ipsum</td>
                                                <td>Lorem ipsum</td>
                                                <td>Lorem ipsum</td>
                                                <td>Lorem ipsum</td>
                                                <td>Lorem ipsum</td>
                                            </tr>
                                            <tr role="row" class="odd">
                                                <td class="">161001615</td>
                                                <td class="sorting_1">Current</td>
                                                <td>RM10,000.00</td>
                                                <td>RM10,000.00</td>
                                                <td>12 months</td>
                                                <td>Lorem ipsum</td>
                                                <td>Lorem ipsum</td>
                                                <td>Lorem ipsum</td>
                                                <td>Lorem ipsum</td>
                                                <td>Lorem ipsum</td>
                                                <td>Lorem ipsum</td>
                                                <td>Lorem ipsum</td>
                                                <td>Lorem ipsum</td>
                                                <td>Lorem ipsum</td>
                                                <td>Lorem ipsum</td>
                                                <td>Lorem ipsum</td>
                                                <td>Lorem ipsum</td>
                                            </tr>
                                            <tr role="row" class="odd">
                                                <td class="">161001615</td>
                                                <td class="sorting_1">Current</td>
                                                <td>RM10,000.00</td>
                                                <td>RM10,000.00</td>
                                                <td>12 months</td>
                                                <td>Lorem ipsum</td>
                                                <td>Lorem ipsum</td>
                                                <td>Lorem ipsum</td>
                                                <td>Lorem ipsum</td>
                                                <td>Lorem ipsum</td>
                                                <td>Lorem ipsum</td>
                                                <td>Lorem ipsum</td>
                                                <td>Lorem ipsum</td>
                                                <td>Lorem ipsum</td>
                                                <td>Lorem ipsum</td>
                                                <td>Lorem ipsum</td>
                                                <td>Lorem ipsum</td>
                                            </tr>
                                            <tr role="row" class="odd">
                                                <td class="">161001615</td>
                                                <td class="sorting_1">Current</td>
                                                <td>RM10,000.00</td>
                                                <td>RM10,000.00</td>
                                                <td>12 months</td>
                                                <td>Lorem ipsum</td>
                                                <td>Lorem ipsum</td>
                                                <td>Lorem ipsum</td>
                                                <td>Lorem ipsum</td>
                                                <td>Lorem ipsum</td>
                                                <td>Lorem ipsum</td>
                                                <td>Lorem ipsum</td>
                                                <td>Lorem ipsum</td>
                                                <td>Lorem ipsum</td>
                                                <td>Lorem ipsum</td>
                                                <td>Lorem ipsum</td>
                                                <td>Lorem ipsum</td>
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
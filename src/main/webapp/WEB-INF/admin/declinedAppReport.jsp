<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/admin/includes/header1.jsp"%>

    <div class="content_area">
        <div class="content_inner">
            <div class="content_box_wrap">
                <div class="content_heading2_wrap border-none">
                    <div class="content_box">
                        <h1><img src="<c:url value="/resources/adminassets/images/Collection_icon.png"/>"> &nbsp;Declined Application Report</h1>
                        <small><label for="exporttoexcel" class="btn btn-success btn btn-sm marg-left-20"><i class="fa fa-file-pdf-o" aria-hidden="true"></i>
Export</label></small>

                        <div class="pull-right time-date-set">
                            <div id="reportrange" class="pull-left dd-daterange set-date-pi">
                                <i class="glyphicon glyphicon-calendar fa fa-calendar"></i>&nbsp;
                                <span>November 1, 2016 - November 30, 2016</span> <b class="caret"></b>
                            </div>
                        </div>



                    </div>

                </div>
                <div class="cb_mid">
                    <div class="reshudle_wrap">
                        <div id="example_wrapper" class="dataTables_wrapper form-inline dt-bootstrap no-footer">
                            <div class="row marg_top_10">
                                <div class="col-sm-12 table-responsive">
                                    <table id="example" class="table table-striped table-bordered dataTable no-footer" cellspacing="0" width="100%" role="grid" aria-describedby="example_info" style="width: 100%;">
                                        <thead>
                                            <tr role="row">
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 150px;">Created On</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 100px;">APP Id#</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width:100px;">Amount</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width:150px;">Tenor</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 150px;">Name</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 100px;">iScore</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width:100px;">DSR</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width:100px;">Income p.a</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 100px;">Age</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 100px;">Emp Type</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width:100px;">OverWrite</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width:100px;">P01</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 100px;">P02</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 100px;">P03</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width:100px;">P04</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width:100px;">P05</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 100px;">P06</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 100px;">P07</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width:100px;">P08</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width:100px;">P09</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 100px;">P10</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 100px;">C01</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width:100px;">C02</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width:100px;">C03</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 100px;">C04</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width:100px;">C05</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width:100px;">C06</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 100px;">C07</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width:100px;">C08</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width:100px;">C09</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr role="row" class="odd">
                                                <td class="">16-Nov-2016</td>
                                                <td class="sorting_1"><a href="#">160000030</a></td>
                                                <td>RM60,000</td>
                                                <td>Lorem</td>
                                                <td>Lorem ipsum</td>
                                                <td>Lorem ipsum123</td>
                                                <td>Lorem ipsum ABC</td>
                                                <td>Lorem ipsum ABC</td>
                                                <td>21 Years</td>
                                                <td>Lorem ipsum ABC</td>
                                                <td>Lorem ipsum ABC</td>
                                                <td>Lorem ipsum P01</td>
                                                <td>Lorem ipsum P02</td>
                                                <td>Lorem ipsum P03</td>
                                                <td>Lorem ipsum P04</td>
                                                <td>Lorem ipsum P05</td>
                                                <td>Lorem ipsum P06</td>
                                                <td>Lorem ipsum P07</td>
                                                <td>Lorem ipsum P08</td>
                                                <td>Lorem ipsum P09</td>
                                                <td>Lorem ipsum P10</td>
                                                <td>Lorem ipsum C01</td>
                                                <td>Lorem ipsum C02</td>
                                                <td>Lorem ipsum C03</td>
                                                <td>Lorem ipsum C04</td>
                                                <td>Lorem ipsum C05</td>
                                                <td>Lorem ipsum C06</td>
                                                <td>Lorem ipsum C07</td>
                                                <td>Lorem ipsum C08</td>
                                                <td>Lorem ipsum C09</td>
                                            </tr>
                                            <tr role="row" class="odd">
                                                <td class="">16-Nov-2016</td>
                                                <td class="sorting_1"><a href="#">160000030</a></td>
                                                <td>RM60,000</td>
                                                <td>Lorem</td>
                                                <td>Lorem ipsum</td>
                                                <td>Lorem ipsum123</td>
                                                <td>Lorem ipsum ABC</td>
                                                <td>Lorem ipsum ABC</td>
                                                <td>21 Years</td>
                                                <td>Lorem ipsum ABC</td>
                                                <td>Lorem ipsum ABC</td>
                                                <td>Lorem ipsum P01</td>
                                                <td>Lorem ipsum P02</td>
                                                <td>Lorem ipsum P03</td>
                                                <td>Lorem ipsum P04</td>
                                                <td>Lorem ipsum P05</td>
                                                <td>Lorem ipsum P06</td>
                                                <td>Lorem ipsum P07</td>
                                                <td>Lorem ipsum P08</td>
                                                <td>Lorem ipsum P09</td>
                                                <td>Lorem ipsum P10</td>
                                                <td>Lorem ipsum C01</td>
                                                <td>Lorem ipsum C02</td>
                                                <td>Lorem ipsum C03</td>
                                                <td>Lorem ipsum C04</td>
                                                <td>Lorem ipsum C05</td>
                                                <td>Lorem ipsum C06</td>
                                                <td>Lorem ipsum C07</td>
                                                <td>Lorem ipsum C08</td>
                                                <td>Lorem ipsum C09</td>
                                            </tr>
                                            <tr role="row" class="odd">
                                                <td class="">16-Nov-2016</td>
                                                <td class="sorting_1"><a href="#">160000030</a></td>
                                                <td>RM60,000</td>
                                                <td>Lorem</td>
                                                <td>Lorem ipsum</td>
                                                <td>Lorem ipsum123</td>
                                                <td>Lorem ipsum ABC</td>
                                                <td>Lorem ipsum ABC</td>
                                                <td>21 Years</td>
                                                <td>Lorem ipsum ABC</td>
                                                <td>Lorem ipsum ABC</td>
                                                <td>Lorem ipsum P01</td>
                                                <td>Lorem ipsum P02</td>
                                                <td>Lorem ipsum P03</td>
                                                <td>Lorem ipsum P04</td>
                                                <td>Lorem ipsum P05</td>
                                                <td>Lorem ipsum P06</td>
                                                <td>Lorem ipsum P07</td>
                                                <td>Lorem ipsum P08</td>
                                                <td>Lorem ipsum P09</td>
                                                <td>Lorem ipsum P10</td>
                                                <td>Lorem ipsum C01</td>
                                                <td>Lorem ipsum C02</td>
                                                <td>Lorem ipsum C03</td>
                                                <td>Lorem ipsum C04</td>
                                                <td>Lorem ipsum C05</td>
                                                <td>Lorem ipsum C06</td>
                                                <td>Lorem ipsum C07</td>
                                                <td>Lorem ipsum C08</td>
                                                <td>Lorem ipsum C09</td>
                                            </tr>
                                            <tr role="row" class="odd">
                                                <td class="">16-Nov-2016</td>
                                                <td class="sorting_1"><a href="#">160000030</a></td>
                                                <td>RM60,000</td>
                                                <td>Lorem</td>
                                                <td>Lorem ipsum</td>
                                                <td>Lorem ipsum123</td>
                                                <td>Lorem ipsum ABC</td>
                                                <td>Lorem ipsum ABC</td>
                                                <td>21 Years</td>
                                                <td>Lorem ipsum ABC</td>
                                                <td>Lorem ipsum ABC</td>
                                                <td>Lorem ipsum P01</td>
                                                <td>Lorem ipsum P02</td>
                                                <td>Lorem ipsum P03</td>
                                                <td>Lorem ipsum P04</td>
                                                <td>Lorem ipsum P05</td>
                                                <td>Lorem ipsum P06</td>
                                                <td>Lorem ipsum P07</td>
                                                <td>Lorem ipsum P08</td>
                                                <td>Lorem ipsum P09</td>
                                                <td>Lorem ipsum P10</td>
                                                <td>Lorem ipsum C01</td>
                                                <td>Lorem ipsum C02</td>
                                                <td>Lorem ipsum C03</td>
                                                <td>Lorem ipsum C04</td>
                                                <td>Lorem ipsum C05</td>
                                                <td>Lorem ipsum C06</td>
                                                <td>Lorem ipsum C07</td>
                                                <td>Lorem ipsum C08</td>
                                                <td>Lorem ipsum C09</td>
                                            </tr>
                                            <tr role="row" class="odd">
                                                <td class="">16-Nov-2016</td>
                                                <td class="sorting_1"><a href="#">160000030</a></td>
                                                <td>RM60,000</td>
                                                <td>Lorem</td>
                                                <td>Lorem ipsum</td>
                                                <td>Lorem ipsum123</td>
                                                <td>Lorem ipsum ABC</td>
                                                <td>Lorem ipsum ABC</td>
                                                <td>21 Years</td>
                                                <td>Lorem ipsum ABC</td>
                                                <td>Lorem ipsum ABC</td>
                                                <td>Lorem ipsum P01</td>
                                                <td>Lorem ipsum P02</td>
                                                <td>Lorem ipsum P03</td>
                                                <td>Lorem ipsum P04</td>
                                                <td>Lorem ipsum P05</td>
                                                <td>Lorem ipsum P06</td>
                                                <td>Lorem ipsum P07</td>
                                                <td>Lorem ipsum P08</td>
                                                <td>Lorem ipsum P09</td>
                                                <td>Lorem ipsum P10</td>
                                                <td>Lorem ipsum C01</td>
                                                <td>Lorem ipsum C02</td>
                                                <td>Lorem ipsum C03</td>
                                                <td>Lorem ipsum C04</td>
                                                <td>Lorem ipsum C05</td>
                                                <td>Lorem ipsum C06</td>
                                                <td>Lorem ipsum C07</td>
                                                <td>Lorem ipsum C08</td>
                                                <td>Lorem ipsum C09</td>
                                            </tr>
                                            <tr role="row" class="odd">
                                                <td class="">16-Nov-2016</td>
                                                <td class="sorting_1"><a href="#">160000030</a></td>
                                                <td>RM60,000</td>
                                                <td>Lorem</td>
                                                <td>Lorem ipsum</td>
                                                <td>Lorem ipsum123</td>
                                                <td>Lorem ipsum ABC</td>
                                                <td>Lorem ipsum ABC</td>
                                                <td>21 Years</td>
                                                <td>Lorem ipsum ABC</td>
                                                <td>Lorem ipsum ABC</td>
                                                <td>Lorem ipsum P01</td>
                                                <td>Lorem ipsum P02</td>
                                                <td>Lorem ipsum P03</td>
                                                <td>Lorem ipsum P04</td>
                                                <td>Lorem ipsum P05</td>
                                                <td>Lorem ipsum P06</td>
                                                <td>Lorem ipsum P07</td>
                                                <td>Lorem ipsum P08</td>
                                                <td>Lorem ipsum P09</td>
                                                <td>Lorem ipsum P10</td>
                                                <td>Lorem ipsum C01</td>
                                                <td>Lorem ipsum C02</td>
                                                <td>Lorem ipsum C03</td>
                                                <td>Lorem ipsum C04</td>
                                                <td>Lorem ipsum C05</td>
                                                <td>Lorem ipsum C06</td>
                                                <td>Lorem ipsum C07</td>
                                                <td>Lorem ipsum C08</td>
                                                <td>Lorem ipsum C09</td>
                                            </tr>
                                            <tr role="row" class="odd">
                                                <td class="">16-Nov-2016</td>
                                                <td class="sorting_1"><a href="#">160000030</a></td>
                                                <td>RM60,000</td>
                                                <td>Lorem</td>
                                                <td>Lorem ipsum</td>
                                                <td>Lorem ipsum123</td>
                                                <td>Lorem ipsum ABC</td>
                                                <td>Lorem ipsum ABC</td>
                                                <td>21 Years</td>
                                                <td>Lorem ipsum ABC</td>
                                                <td>Lorem ipsum ABC</td>
                                                <td>Lorem ipsum P01</td>
                                                <td>Lorem ipsum P02</td>
                                                <td>Lorem ipsum P03</td>
                                                <td>Lorem ipsum P04</td>
                                                <td>Lorem ipsum P05</td>
                                                <td>Lorem ipsum P06</td>
                                                <td>Lorem ipsum P07</td>
                                                <td>Lorem ipsum P08</td>
                                                <td>Lorem ipsum P09</td>
                                                <td>Lorem ipsum P10</td>
                                                <td>Lorem ipsum C01</td>
                                                <td>Lorem ipsum C02</td>
                                                <td>Lorem ipsum C03</td>
                                                <td>Lorem ipsum C04</td>
                                                <td>Lorem ipsum C05</td>
                                                <td>Lorem ipsum C06</td>
                                                <td>Lorem ipsum C07</td>
                                                <td>Lorem ipsum C08</td>
                                                <td>Lorem ipsum C09</td>
                                            </tr>
                                            <tr role="row" class="odd">
                                                <td class="">16-Nov-2016</td>
                                                <td class="sorting_1"><a href="#">160000030</a></td>
                                                <td>RM60,000</td>
                                                <td>Lorem</td>
                                                <td>Lorem ipsum</td>
                                                <td>Lorem ipsum123</td>
                                                <td>Lorem ipsum ABC</td>
                                                <td>Lorem ipsum ABC</td>
                                                <td>21 Years</td>
                                                <td>Lorem ipsum ABC</td>
                                                <td>Lorem ipsum ABC</td>
                                                <td>Lorem ipsum P01</td>
                                                <td>Lorem ipsum P02</td>
                                                <td>Lorem ipsum P03</td>
                                                <td>Lorem ipsum P04</td>
                                                <td>Lorem ipsum P05</td>
                                                <td>Lorem ipsum P06</td>
                                                <td>Lorem ipsum P07</td>
                                                <td>Lorem ipsum P08</td>
                                                <td>Lorem ipsum P09</td>
                                                <td>Lorem ipsum P10</td>
                                                <td>Lorem ipsum C01</td>
                                                <td>Lorem ipsum C02</td>
                                                <td>Lorem ipsum C03</td>
                                                <td>Lorem ipsum C04</td>
                                                <td>Lorem ipsum C05</td>
                                                <td>Lorem ipsum C06</td>
                                                <td>Lorem ipsum C07</td>
                                                <td>Lorem ipsum C08</td>
                                                <td>Lorem ipsum C09</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="cod_info_wrsap">
                        <div class="ciw_heading">
                            <div class="ciw_heading_left">Code</div>
                            <div class="ciw_heading_right">Description</div>
                        </div>
                        <div class="ciw_detail_wrap">
                            <div class="ciw_detail_row1">
                                <div class="ciw_detail_left">P01</div>
                                <div class="ciw_detail_right">Customer Segment - Age Limit</div>
                            </div>
                            <div class="ciw_detail_row2">
                                <div class="ciw_detail_left">P02</div>
                                <div class="ciw_detail_right">Income vs Age Limit</div>
                            </div>
                            <div class="ciw_detail_row1">
                                <div class="ciw_detail_left">P03</div>
                                <div class="ciw_detail_right">Employment Type</div>
                            </div>
                            <div class="ciw_detail_row2">
                                <div class="ciw_detail_left">P04</div>
                                <div class="ciw_detail_right">Customer Segment - Nationality</div>
                            </div>
                            <div class="ciw_detail_row1">
                                <div class="ciw_detail_left">P05</div>
                                <div class="ciw_detail_right">Customer None-Target Segment</div>
                            </div>
                            <div class="ciw_detail_row2">
                                <div class="ciw_detail_left">P06</div>
                                <div class="ciw_detail_right">Customer Segment - Employment Check</div>
                            </div>
                            <div class="ciw_detail_row1">
                                <div class="ciw_detail_left">P07</div>
                                <div class="ciw_detail_right">Customer Segment - Nric Check</div>
                            </div>
                            <div class="ciw_detail_row2">
                                <div class="ciw_detail_left">P08</div>
                                <div class="ciw_detail_right">Customer Segment - Kyc Check</div>
                            </div>
                            <div class="ciw_detail_row1">
                                <div class="ciw_detail_left">P09</div>
                                <div class="ciw_detail_right">Customer Segment - Suspension </div>
                            </div>
                            <div class="ciw_detail_row2">
                                <div class="ciw_detail_left">P10</div>
                                <div class="ciw_detail_right">Customer Segment - Invalid Loan Size </div>
                            </div>
                            <div class="ciw_detail_row1">
                                <div class="ciw_detail_left">C01</div>
                                <div class="ciw_detail_right">Cooling-Off Period</div>
                            </div>
                            <div class="ciw_detail_row2">
                                <div class="ciw_detail_left">C02</div>
                                <div class="ciw_detail_right">RAMCI Risk Score</div>
                            </div>
                            <div class="ciw_detail_row1">
                                <div class="ciw_detail_left">C03</div>
                                <div class="ciw_detail_right">CCRIS - Minimum 12 months of Credit Records</div>
                            </div>
                            <div class="ciw_detail_row2">
                                <div class="ciw_detail_left">C04</div>
                                <div class="ciw_detail_right">CCRIS - Credit Hunge</div>
                            </div>
                            <div class="ciw_detail_row1">
                                <div class="ciw_detail_left">C05</div>
                                <div class="ciw_detail_right">CCRIS - Latest Delinquincy</div>
                            </div>
                            <div class="ciw_detail_row2">
                                <div class="ciw_detail_left">C06</div>
                                <div class="ciw_detail_right">CCRIS - Historical Delinquincy</div>
                            </div>
                            <div class="ciw_detail_row1">
                                <div class="ciw_detail_left">C07</div>
                                <div class="ciw_detail_right">Negative Flags</div>
                            </div>
                            <div class="ciw_detail_row2">
                                <div class="ciw_detail_left">C08</div>
                                <div class="ciw_detail_right">Debt Service Ratio (DSR)</div>
                            </div>
                            <div class="ciw_detail_row2">
                                <div class="ciw_detail_left">C09</div>
                                <div class="ciw_detail_right">Existing Loan is Late > 30 days</div>
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
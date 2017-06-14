<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/admin/includes/header1.jsp"%>
    <div class="content_area">
        <div class="content_inner">
            <div class="content_box_wrap">
                <div class="content_heading"><img src="<c:url value="/resources/adminassets/images/task_icon.png"/>"> &nbsp;Schedule Task</div>
                <div class="panel-body">
                    <form method="post">
                        <div class="form-horizontal">
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3">Task</label>
                                <div class="col-md-5 col-sm-5">
                                    <div class="form-group">
                                        <select class="form-control select_box1" data-val="true" data-val-required="The Purpose field is required." id="Task" name="Task">
                                            <option selected="selected">Process Fully Funded Loans (Daily) - After Loan is fully funded</option>

                                            <option> Loan Create Statement (Monthly) - After Loan is fully funded</option>
                                            <option>Loan Late Charge Update (Daily) - Trigger on Grace/Pay By Date</option>
                                            <option>Loan Borrower Repayment (Daily)</option>

                                            <option>Loan Collection(Daily)</option>
                                            <option>Loan Status Collection BucketDaily (Daily)</option>
                                            <option>Sending Queued Messages</option>
                                            <option>Daily Workflow</option>
                                            <option>Proces Expired Application</option>
                                            <option>Error Notification</option>
                                            <option>Next Due Amount Reminder</option>
                                            <option>Over Due Amount Reminder</option>

                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3">Set Today's Date</label>
                                <div class="col-md-5 col-sm-5">
                                    <div class="form-group">
                                        <div class="input-group date" data-provide="datepicker">
                                            <input type="text" class="form-control" placeholder="DD/MM/YYYY">
                                            <div class="input-group-addon">
                                                <span class="glyphicon glyphicon-calendar"></span>
                                            </div>
                                        </div>
                                    </div>


                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3">Only for Loan Id</label>
                                <div class="col-md-5 col-sm-5">
                                    <div class="form-group">
                                        <input name="" type="text" class="form-control" placeholder="(optional)" data-validation="number">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-offset-3 col-md-9 col-sm-offset-3">
                                    <button class="btn btn-md btn-addntional" type="submit">Submit</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="clear"></div>
        </div>

    </div>

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

    <script>
        $.validate({
            lang: 'en'
        });
    </script>
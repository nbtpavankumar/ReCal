<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/admin/includes/header1.jsp"%>

    <div class="content_area">
        <div class="content_inner">
            <div class="content_box_wrap">
                <div class="content_heading2_wrap border-none">
                    <div class="content_box">
                        <h1><img src="<c:url value="/resources/adminassets/images/repayment.png"/>"> &nbsp;Repayment Schedule</h1>
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
                                                <th style="width: 100px;">Loan #</th>
                                                <th style="width: 120px;">Status</th>
                                                <th style="width:230px;">Due Date Since </th>
                                                <th style="width: 100px;">Stmt No </th>
                                                <th style="width: 150px;">Stmt Date </th>
                                                <th style="width: 150px;">Due Date </th>
                                                <th style="width:250px;">Due + Grace Date </th>
                                                <th style="width: 100px;">Payment</th>
                                                <th style="width:100px;">Principal</th>
                                                <th style="width: 100px;">Interest</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr role="row" class="odd">
                                                <td class=""><a href="#">160000030</a></td>
                                                <td class="sorting_1"><span class="green">In-progress of funding</span></td>
                                                <td>25-Nov-2016</td>
                                                <td>00BCD100</td>
                                                <td class="">16-Nov-2016</td>
                                                <td class="sorting_1">28-Jan-2017</td>
                                                <td>2-March-2017</td>
                                                <td>RM145,000</td>
                                                <td class="">Lorem Ipsum</td>
                                                <td class="sorting_1">0.45%</td>
                                            </tr>
                                            <tr role="row" class="even">
                                                <td class=""><a href="#">160000031</a></td>
                                                <td class="sorting_1"><span class="green">In-progress of funding 1</span></td>
                                                <td>25-Nov-2016</td>
                                                <td>00BCD100</td>
                                                <td class="">16-Nov-2016</td>
                                                <td class="sorting_1">28-Jan-2017</td>
                                                <td>2-March-2017</td>
                                                <td>RM145,000</td>
                                                <td class="">Lorem Ipsum</td>
                                                <td class="sorting_1">0.45%</td>
                                            </tr>
                                            <tr role="row" class="odd">
                                                <td class=""><a href="#">160000032</a></td>
                                                <td class="sorting_1"><span class="green">In-progress of funding 2</span></td>
                                                <td>25-Nov-2016</td>
                                                <td>00BCD100</td>
                                                <td class="">16-Nov-2016</td>
                                                <td class="sorting_1">28-Jan-2017</td>
                                                <td>2-March-2017</td>
                                                <td>RM145,000</td>
                                                <td class="">Lorem Ipsum</td>
                                                <td class="sorting_1">0.45%</td>
                                            </tr>
                                            <tr role="row" class="even">
                                                <td class=""><a href="#">160000033</a></td>
                                                <td class="sorting_1"><span class="green">In-progress of funding 3</span></td>
                                                <td>25-Nov-2016</td>
                                                <td>00BCD100</td>
                                                <td class="">16-Nov-2016</td>
                                                <td class="sorting_1">28-Jan-2017</td>
                                                <td>2-March-2017</td>
                                                <td>RM145,000</td>
                                                <td class="">Lorem Ipsum</td>
                                                <td class="sorting_1">0.45%</td>
                                            </tr>
                                            <tr role="row" class="odd">
                                                <td class=""><a href="#">160000034</a></td>
                                                <td class="sorting_1"><span class="green">In-progress of funding 4</span></td>
                                                <td>25-Nov-2016</td>
                                                <td>00BCD100</td>
                                                <td class="">16-Nov-2016</td>
                                                <td class="sorting_1">28-Jan-2017</td>
                                                <td>2-March-2017</td>
                                                <td>RM145,000</td>
                                                <td class="">Lorem Ipsum</td>
                                                <td class="sorting_1">0.45%</td>
                                            </tr>
                                            <tr role="row" class="even">
                                                <td class=""><a href="#">160000035</a></td>
                                                <td class="sorting_1"><span class="green">In-progress of funding 5</span></td>
                                                <td>25-Nov-2016</td>
                                                <td>00BCD100</td>
                                                <td class="">16-Nov-2016</td>
                                                <td class="sorting_1">28-Jan-2017</td>
                                                <td>2-March-2017</td>
                                                <td>RM145,000</td>
                                                <td class="">Lorem Ipsum</td>
                                                <td class="sorting_1">0.45%</td>
                                            </tr>
                                            <tr role="row" class="even">
                                                <td class=""><a href="#">160000036</a></td>
                                                <td class="sorting_1"><span class="green">In-progress of funding 6</span></td>
                                                <td>25-Nov-2016</td>
                                                <td>00BCD100</td>
                                                <td class="">16-Nov-2016</td>
                                                <td class="sorting_1">28-Jan-2017</td>
                                                <td>2-March-2017</td>
                                                <td>RM145,000</td>
                                                <td class="">Lorem Ipsum</td>
                                                <td class="sorting_1">0.45%</td>
                                            </tr>
                                            <tr role="row" class="even">
                                                <td class=""><a href="#">160000037</a></td>
                                                <td class="sorting_1"><span class="green">In-progress of funding 7</span></td>
                                                <td>25-Nov-2016</td>
                                                <td>00BCD100</td>
                                                <td class="">16-Nov-2016</td>
                                                <td class="sorting_1">28-Jan-2017</td>
                                                <td>2-March-2017</td>
                                                <td>RM145,000</td>
                                                <td class="">Lorem Ipsum</td>
                                                <td class="sorting_1">0.45%</td>
                                            </tr>
                                            <tr role="row" class="even">
                                                <td class=""><a href="#">160000038</a></td>
                                                <td class="sorting_1"><span class="green">In-progress of funding 8</span></td>
                                                <td>25-Nov-2016</td>
                                                <td>00BCD100</td>
                                                <td class="">16-Nov-2016</td>
                                                <td class="sorting_1">28-Jan-2017</td>
                                                <td>2-March-2017</td>
                                                <td>RM145,000</td>
                                                <td class="">Lorem Ipsum</td>
                                                <td class="sorting_1">0.45%</td>
                                            </tr>
                                            <tr role="row" class="even">
                                                <td class=""><a href="#">160000039</a></td>
                                                <td class="sorting_1"><span class="green">In-progress of funding 9</span></td>
                                                <td>25-Nov-2016</td>
                                                <td>00BCD100</td>
                                                <td class="">16-Nov-2016</td>
                                                <td class="sorting_1">28-Jan-2017</td>
                                                <td>2-March-2017</td>
                                                <td>RM145,000</td>
                                                <td class="">Lorem Ipsum</td>
                                                <td class="sorting_1">0.45%</td>
                                            </tr>
                                            <tr role="row" class="even">
                                                <td class=""><a href="#">160000040</a></td>
                                                <td class="sorting_1"><span class="green">In-progress of funding 10</span></td>
                                                <td>25-Nov-2016</td>
                                                <td>00BCD100</td>
                                                <td class="">16-Nov-2016</td>
                                                <td class="sorting_1">28-Jan-2017</td>
                                                <td>2-March-2017</td>
                                                <td>RM145,000</td>
                                                <td class="">Lorem Ipsum</td>
                                                <td class="sorting_1">0.45%</td>
                                            </tr>
                                            <tr role="row" class="even">
                                                <td class=""><a href="#">160000041</a></td>
                                                <td class="sorting_1"><span class="green">In-progress of funding 11</span></td>
                                                <td>25-Nov-2016</td>
                                                <td>00BCD100</td>
                                                <td class="">16-Nov-2016</td>
                                                <td class="sorting_1">28-Jan-2017</td>
                                                <td>2-March-2017</td>
                                                <td>RM145,000</td>
                                                <td class="">Lorem Ipsum</td>
                                                <td class="sorting_1">0.45%</td>
                                            </tr>
                                            <tr role="row" class="even">
                                                <td class=""><a href="#">160000042</a></td>
                                                <td class="sorting_1"><span class="green">In-progress of funding 12</span></td>
                                                <td>25-Nov-2016</td>
                                                <td>00BCD100</td>
                                                <td class="">16-Nov-2016</td>
                                                <td class="sorting_1">28-Jan-2017</td>
                                                <td>2-March-2017</td>
                                                <td>RM145,000</td>
                                                <td class="">Lorem Ipsum</td>
                                                <td class="sorting_1">0.45%</td>
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

    <script type="text/javascript">
        // For demo to fit into DataTables site builder...
        $('#example')
            .removeClass('display')
            .addClass('table table-striped table-bordered');
    </script>

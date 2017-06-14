<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/admin/includes/header1.jsp"%>
    <div class="content_area">
        <div class="content_inner">
            <div class="content_box_wrap">
                <div class="content_box">
                    <div class="row">
                        <div class="col-md-6 col-sm-7 col-xs-12">
                            <h1 class="hea-se"><i class="zmdi zmdi-file-text"></i> &nbsp; Investor Funds </h1>

                            <a class="btn-warning pull-left btn btn-sm marg-left-20 top-up-btn" href="investorTopup">

                                <small> <label>

<i class="fa fa-upload" aria-hidden="true"></i>
Top up</label>

</small>

                            </a>
                        </div>

                        <div class="col-md-6 col-sm-5 col-xs-12">
                            <div class="btn-group btn-group-set">
                                <button type="button" class="btn grey"><i class="fa fa-file" aria-hidden="true"></i> &nbsp;New</button>
                                <button type="button" class="btn blue"><i class="fa fa-check-square-o" aria-hidden="true"></i> &nbsp;Success</button>

                            </div>
                        </div>
                    </div>
                </div>
                <div id="example_wrapper" class="dataTables_wrapper form-inline dt-bootstrap no-footer top-up-table table-responsive">

                    <div class="row">
                        <div class="col-sm-12">
                            <table id="example" class="table table-striped table-bordered dataTable no-footer" cellspacing="0" width="100%" role="grid" aria-describedby="example_info" style="width: 100%;">
                                <thead>
                                    <tr role="row">
                                        <th style="width: 75px;">Id</th>
                                        <th style="width: 200px;">Status</th>
                                        <th style="width: 196px;">Amount</th>
                                        <th style="width: 200px;">Investor Id#</th>

                                        <th style="width: 200px;">Name</th>
                                        <th style="width: 200px;">Bank Acct</th>
                                        <th style="width: 200px;">Bank</th>
                                        <th style="width: 200px;">Ref No #</th>
                                        <th style="width: 300px;">Remarks</th>
                                        <th style="width: 300px;">Created on</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr role="row">
                                        <td>1</td>
                                        <td>Success</td>
                                        <td>
                                            <span class="currency">RM100,000.00</span>
                                        </td>
                                        <td>I159000009 </td>
                                        <td> Master </td>
                                        <td> TEST11111 </td>
                                        <td> TESTDBS </td>
                                        <td> </td>
                                        <td> </td>
                                        <td>
                                            <span>14-Mar-2016 17:23:46</span>
                                        </td>

                                    </tr>
                                    <tr role="row">
                                        <td>2</td>
                                        <td>Success</td>
                                        <td>
                                            <span class="currency">RM100,000.00</span>
                                        </td>
                                        <td>I159000009 </td>
                                        <td> Master </td>
                                        <td> TEST11111 </td>
                                        <td> TESTDBS </td>
                                        <td> </td>
                                        <td> </td>
                                        <td>
                                            <span>14-Mar-2016 17:23:46</span>
                                        </td>
                                    </tr>

                                    <tr role="row">
                                        <td>3</td>
                                        <td>Success</td>
                                        <td>
                                            <span class="currency">RM100,000.00</span>
                                        </td>
                                        <td>I159000009 </td>
                                        <td> Master </td>
                                        <td> TEST11111 </td>
                                        <td> TESTDBS </td>
                                        <td> </td>
                                        <td> </td>
                                        <td>
                                            <span>14-Mar-2016 17:23:46</span>
                                        </td>

                                    </tr>
                                    <tr role="row">
                                        <td>4</td>
                                        <td>Success</td>
                                        <td>
                                            <span class="currency">RM100,000.00</span>
                                        </td>
                                        <td>I159000009 </td>
                                        <td> Master </td>
                                        <td> TEST11111 </td>
                                        <td> TESTDBS </td>
                                        <td> </td>
                                        <td> </td>
                                        <td>
                                            <span>14-Mar-2016 17:23:46</span>
                                        </td>
                                    </tr>
                                    <tr role="row">
                                        <td>5</td>
                                        <td>Success</td>
                                        <td>
                                            <span class="currency">RM100,000.00</span>
                                        </td>
                                        <td>I159000009 </td>
                                        <td> Master </td>
                                        <td> TEST11111 </td>
                                        <td> TESTDBS </td>
                                        <td> </td>
                                        <td> </td>
                                        <td>
                                            <span>14-Mar-2016 17:23:46</span>
                                        </td>

                                    </tr>
                                    <tr role="row">
                                        <td>6</td>
                                        <td>Success</td>
                                        <td>
                                            <span class="currency">RM100,000.00</span>
                                        </td>
                                        <td>I159000009 </td>
                                        <td> Master </td>
                                        <td> TEST11111 </td>
                                        <td> TESTDBS </td>
                                        <td> </td>
                                        <td> </td>
                                        <td>
                                            <span>14-Mar-2016 17:23:46</span>
                                        </td>
                                    </tr>

                                </tbody>
                            </table>
                        </div>
                    </div>

                </div>


            </div>
        </div>

    </div>
    <ul id="ddsubmenu3" class="ddsubmenustyle">
        <li><a href="#">info@exampledomin.com</a></li>
        <li><a href="#">Change Password</a></li>
        <li><a href="#">Sign Out</a></li>
    </ul>
</body>

</html>
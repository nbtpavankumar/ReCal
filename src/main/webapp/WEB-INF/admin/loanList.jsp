<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/admin/includes/header1.jsp"%>

    <div class="content_area">
        <div class="content_inner">
            <div class="content_box_wrap">
                <div class="content_box">
                    <div class="row">
                        <div class="col-md-12">
                            <h1><i class="zmdi zmdi-collection-text"></i> &nbsp;Loan List</h1>
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
                                            <th class="sorting info" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="Name: activate to sort column ascending" style="width: 70px;">Loan #</th>
                                            <th class="sorting_desc info" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="Position: activate to sort column ascending" aria-sort="descending" style="width: 150px;">Status</th>
                                            <th class="sorting info" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="Office: activate to sort column ascending" style="width: 70px;">Due date</th>
                                            <th class="sorting info" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="Salary: activate to sort column ascending" style="width: 110px;">Name</th>
                                            <th class="sorting info" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="Salary: activate to sort column ascending" style="width: 50px;">Amount</th>
                                            <th class="sorting info" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="Salary: activate to sort column ascending" style="width: 40px;">Tenor</th>
                                            <th class="sorting info" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="Salary: activate to sort column ascending" style="width: 35px;">Rate</th>
                                            <th class="sorting info" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="Salary: activate to sort column ascending" style="width: 100px;">Referral Code</th>
                                            <th class="sorting info" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="Salary: activate to sort column ascending" style="width: 120px;">Origination Date</th>
                                            <th class="sorting info" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="Salary: activate to sort column ascending" style="width: 70px;">Request #</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr role="row" class="odd">
                                            <td><a href="Loandetails.html" class="blue-text">160000030</a></td>
                                            <td>In-progress of funding</td>
                                            <td>22-Mar-2016</td>
                                            <td>Wong Yoke Hoe YP</td>
                                            <td>RM20,000</td>
                                            <td>24 months</td>
                                            <td>A/34.50%</td>
                                            <td>A161003330</td>
                                            <td>13-May-2016</td>
                                            <td><a href="#" class="blue-text">A161003330</a></td>
                                        </tr>

                                        <tr role="row" class="odd">
                                            <td><a href="Loandetails.html" class="blue-text">160000030</a></td>
                                            <td class="text-success">Issued</td>
                                            <td>22-Mar-2016</td>
                                            <td>Wong Yoke Hoe YP</td>
                                            <td>RM20,000</td>
                                            <td>24 months</td>
                                            <td>A/34.50%</td>
                                            <td>A161003330</td>
                                            <td>13-May-2016</td>
                                            <td><a href="#" class="blue-text">A161003330</a></td>
                                        </tr>

                                        <tr role="row" class="odd">
                                            <td><a href="Loandetails.html" class="blue-text">160000030</a></td>
                                            <td>In-progress of funding</td>
                                            <td>22-Mar-2016</td>
                                            <td>Wong Yoke Hoe YP</td>
                                            <td>RM20,000</td>
                                            <td>24 months</td>
                                            <td>A/34.50%</td>
                                            <td>A161003330</td>
                                            <td>13-May-2016</td>
                                            <td><a href="#" class="blue-text">A161003330</a></td>
                                        </tr>

                                        <tr role="row" class="odd">
                                            <td><a href="Loandetails.html" class="blue-text">160000030</a></td>
                                            <td>In-progress of funding</td>
                                            <td></td>
                                            <td>Wong Yoke Hoe YP</td>
                                            <td>RM20,000</td>
                                            <td>24 months</td>
                                            <td>A/34.50%</td>
                                            <td></td>
                                            <td>13-May-2016</td>
                                            <td><a href="#" class="blue-text">A161003330</a></td>
                                        </tr>

                                        <tr role="row" class="odd">
                                            <td><a href="Loandetails.html" class="blue-text">160000030</a></td>
                                            <td>In-progress of funding</td>
                                            <td>22-Mar-2016</td>
                                            <td>Wong Yoke Hoe YP</td>
                                            <td>RM20,000</td>
                                            <td>24 months</td>
                                            <td>A/34.50%</td>
                                            <td>A161003330</td>
                                            <td>13-May-2016</td>
                                            <td><a href="#" class="blue-text">A161003330</a></td>
                                        </tr>

                                        <tr role="row" class="odd">
                                            <td><a href="Loandetails.html" class="blue-text">160000030</a></td>
                                            <td>In-progress of funding</td>
                                            <td>22-Mar-2016</td>
                                            <td>Wong Yoke Hoe YP</td>
                                            <td>RM20,000</td>
                                            <td>24 months</td>
                                            <td>A/34.50%</td>
                                            <td>A161003330</td>
                                            <td>13-May-2016</td>
                                            <td><a href="#" class="blue-text">A161003330</a></td>
                                        </tr>

                                        <tr role="row" class="odd">
                                            <td><a href="Loandetails.html" class="blue-text">160000030</a></td>
                                            <td>In-progress of funding</td>
                                            <td>22-Mar-2016</td>
                                            <td>Wong Yoke Hoe YP</td>
                                            <td>RM20,000</td>
                                            <td>24 months</td>
                                            <td>A/34.50%</td>
                                            <td>A161003330</td>
                                            <td>13-May-2016</td>
                                            <td><a href="#" class="blue-text">A161003330</a></td>
                                        </tr>

                                        <tr role="row" class="odd">
                                            <td><a href="Loandetails.html" class="blue-text">160000030</a></td>
                                            <td>In-progress of funding</td>
                                            <td></td>
                                            <td>Wong Yoke Hoe YP</td>
                                            <td>RM20,000</td>
                                            <td>24 months</td>
                                            <td>A/34.50%</td>
                                            <td></td>
                                            <td>13-May-2016</td>
                                            <td><a href="#" class="blue-text">A161003330</a></td>
                                        </tr>

                                        <tr role="row" class="odd">
                                            <td><a href="Loandetails.html" class="blue-text">160000030</a></td>
                                            <td class="text-success">Issued</td>
                                            <td>22-Mar-2016</td>
                                            <td>Wong Yoke Hoe YP</td>
                                            <td>RM20,000</td>
                                            <td>24 months</td>
                                            <td>A/34.50%</td>
                                            <td>A161003330</td>
                                            <td>13-May-2016</td>
                                            <td><a href="#" class="blue-text">A161003330</a></td>
                                        </tr>

                                        <tr role="row" class="odd">
                                            <td><a href="Loandetails.html" class="blue-text">160000030</a></td>
                                            <td>In-progress of funding</td>
                                            <td></td>
                                            <td>Wong Yoke Hoe YP</td>
                                            <td>RM20,000</td>
                                            <td>24 months</td>
                                            <td>A/34.50%</td>
                                            <td></td>
                                            <td>13-May-2016</td>
                                            <td><a href="#" class="blue-text">A161003330</a></td>
                                        </tr>

                                        <tr role="row" class="odd">
                                            <td><a href="Loandetails.html" class="blue-text">160000030</a></td>
                                            <td class="text-success">Issued</td>
                                            <td>22-Mar-2016</td>
                                            <td>Wong Yoke Hoe YP</td>
                                            <td>RM20,000</td>
                                            <td>24 months</td>
                                            <td>A/34.50%</td>
                                            <td>A161003330</td>
                                            <td>13-May-2016</td>
                                            <td><a href="#" class="blue-text">A161003330</a></td>
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




</body>

</html>
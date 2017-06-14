<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/admin/includes/header1.jsp"%>

    <div class="content_area">
        <div class="content_inner">
            <div id="div_top" class="col-md-12 col-xs-12" style="padding:0 !important">

                <a href="repayCollections">
                    <i class="glyphicon glyphicon-menu-left"></i> Back to List
                </a>

            </div>
            <div class="content_box_wrap">
                <div class="content_box">
                    <div class="row">
                        <div class="col-md-12">
                            <h1><i class="zmdi zmdi-card"></i> &nbsp;Create Borrower Repayment</h1>
                        </div>

                    </div>
                </div>

                <div class="panel-body">
                    <form method="post">

                        <div class="form-horizontal">

                            <div class="form-group">
                                <label class="control-label col-md-3  col-sm-3">Payment Amount</label>
                                <div class="col-md-5 col-sm-5">
                                    <div class="form-group">
                                        <input type="text" class="form-control" data-validation="required" />
                                    </div>
                                </div>
                            </div>


                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3">Bill Acct No (Loan Id)</label>
                                <div class="col-md-5 col-sm-5">
                                    <div class="form-group">
                                        <input type="text" class="form-control" placeholder="e.g XXXXXXX" data-validation="number" />
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3">Bill Ref No</label>
                                <div class="col-md-5 col-sm-5">
                                    <div class="form-group">
                                        <input type="text" class="form-control" data-validation="number" />
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3">Bill Ref No</label>
                                <div class="col-md-5 col-sm-5">
                                    <div class="form-group">
                                        <div class="input-group date" data-provide="datepicker">

                                            <input type="text" class="form-control" data-validation="required" />
                                            <div class="input-group-addon">
                                                <span class="glyphicon glyphicon-calendar"></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3">Trn Ref No.</label>
                                <div class="col-md-5 col-sm-5">
                                    <div class="form-group">
                                        <input type="text" class="form-control" data-validation="number" />
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3">Remarks</label>
                                <div class="col-md-5 col-sm-5">
                                    <div class="form-group">
                                        <input type="text" class="form-control" data-validation="required" />
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-offset-3 col-md-9 col-sm-offset-3">
                                    <button class="btn btn-md btn-addntional" type="submit">Create Repayment</button>
                                </div>
                            </div>


                        </div>

                    </form>
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






    <script>
        $.validate({
            lang: 'en'
        });
    </script>


</body>

</html>
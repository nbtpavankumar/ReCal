<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/admin/includes/header1.jsp"%>
    <div class="content_area">
        <div class="content_inner">
            <div id="div_top" class="col-md-12 col-xs-12" style="padding:0 !important">

                <a href="llpMaster">
                    <i class="glyphicon glyphicon-menu-left"></i> Back to List
                </a>

            </div>
            <div class="content_box_wrap">
                <div class="content_box">
                    <h1 class="hea-se"><i class="zmdi zmdi-mail-send"></i> &nbsp; Send Email </h1>

                </div>



                <div class="panel-body">
                    <form method="POST">

                        <div class="form-horizontal">
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3">Email</label>
                                <div class="col-md-5 col-sm-5">
                                    <div class="form-group">
                                        <input type="email" class="form-control" data-validation="email" />
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="control-label col-md-3  col-sm-3">Password</label>
                                <div class="col-md-5 col-sm-5">
                                    <div class="form-group">
                                        <input type="password" class="form-control" data-validation="number" />
                                    </div>
                                </div>
                            </div>


                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3">Confirm Password</label>
                                <div class="col-md-5 col-sm-5">
                                    <div class="form-group">
                                        <input type="password" class="form-control" data-validation="number" />
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3">New I/C No.</label>
                                <div class="col-md-5 col-sm-5">
                                    <div class="form-group">
                                        <input type="text" class="form-control" data-validation="required" />
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3">Name</label>
                                <div class="col-md-5 col-sm-5">
                                    <div class="form-group">
                                        <input type="text" class="form-control" data-validation="required" />
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3">Max Annual Return</label>
                                <div class="col-md-5 col-sm-5">
                                    <div class="form-group">
                                        <input type="text" class="form-control" placeholder="0" data-validation="number" />
                                    </div>
                                </div>
                                <div class="col-md-4 col-sm-4">
                                    <span class="text-muted">
<span class="currency">0.00%</span>
                                    </span>
                                    <span class="text-muted">(0 == No Limit)</span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3">Withdrawal Fee</label>
                                <div class="col-md-5 col-sm-5">
                                    <div class="form-group">
                                        <input type="text" class="form-control" placeholder="0.02" data-validation="number" />
                                    </div>
                                </div>

                                <div class="col-md-4 col-sm-4">
                                    <span class="text-muted">
<span class="currency">2.00%</span>
                                    </span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3">Mobile No</label>
                                <div class="col-md-5 col-sm-5">
                                    <div class="form-group">
                                        <input type="text" class="form-control" data-validation="required" />
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3"> Bank name</label>
                                <div class="col-md-5 col-sm-5">
                                    <div class="form-group">
                                        <input type="text" class="form-control" data-validation="required" />
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3">Account Number</label>
                                <div class="col-md-5 col-sm-5">
                                    <div class="form-group">
                                        <input type="text" class="form-control" data-validation="number" />
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-offset-3 col-md-9 col-sm-offset-3">
                                    <Button class="btn btn-md btn-addntional" type="submit">Create Master</Button>
                                </div>
                            </div>


                        </div>

                    </form>
                </div>
            </div>

        </div>
    </div>
   
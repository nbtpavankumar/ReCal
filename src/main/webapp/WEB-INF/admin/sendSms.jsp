<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/admin/includes/header1.jsp"%>

    <div class="content_area">
        <div class="content_inner">
            <div id="div_top" class="col-md-12 col-xs-12" style="padding:0 !important">

                <a href="smsList">
                    <i class="glyphicon glyphicon-menu-left"></i> Back to List
                </a>

            </div>
            <div class="content_box_wrap">
                <div class="content_box">
                    <div class="row">
                        <div class="col-md-12">
                            <h1><i class="zmdi zmdi-mail-send"></i> &nbsp;Send Sms</h1>
                        </div>

                    </div>
                </div>

                <div class="panel-body">
                    <form method="post">

                        <div class="form-horizontal">

                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3">Mobile</label>
                                <div class="col-md-5 col-sm-5">
                                    <div class="form-group">
                                        <div class="input-group">
                                            <span class="input-group-addon">6</span>
                                            <input class="form-control" placeholder="0126668888" type="text" data-validation="number">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3">Name</label>
                                <div class="col-md-5 col-sm-5">
                                    <div class="form-group">
                                        <textarea class="form-control" data-validation="required"></textarea>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-md-offset-3 col-md-9 col-sm-offset-3">
                                    <button class="btn btn-md btn-addntional" type="submit">Send</button>
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
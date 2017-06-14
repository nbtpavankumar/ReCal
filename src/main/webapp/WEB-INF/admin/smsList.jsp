<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/admin/includes/header1.jsp"%>

    <div class="content_area">
        <div class="content_inner">
            <div class="content_box_wrap">
                <div class="content_box">
                    <div class="row">
                        <div class="col-md-6 col-xs-12 col-sm-6">
                            <h1><i class="zmdi zmdi-comment-list"></i> &nbsp;Sms List</h1>
                            <a class="pull-left btn btn-sm marg-left-20 btn-warning" href="sendSms"><i class="fa fa-pencil-square-o" aria-hidden="true"></i> Compose</a>
                        </div>
                        <div class="col-md-4 col-xs-12 col-sm-4 col-md-offset-2">
                            <div class="time-date-set">
                                <div id="reportrange" class="pull-right dd-daterange set-date-pi">
                                    <i class="glyphicon glyphicon-calendar fa fa-calendar"></i>&nbsp;
                                    <span>November 1, 2016 - November 30, 2016</span> <b class="caret"></b>
                                </div>
                                <br>

                            </div>
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
                                            <th class="sorting info" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="Name: activate to sort column ascending" style="width: 180px;">Destination</th>
                                            <th class="sorting_desc info" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="Position: activate to sort column ascending" aria-sort="descending" style="width: 120px;">Body</th>
                                            <th class="sorting info" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="Office: activate to sort column ascending" style="width: 120px;">Created By</th>
                                            <th class="sorting info" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="Salary: activate to sort column ascending" style="width: 100px;">Created On</th>

                                        </tr>
                                    </thead>
                                    <tbody>
                                        <!--<tr role="row" class="odd">
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>-->

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
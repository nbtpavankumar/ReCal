<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/admin/includes/header1.jsp"%>
    <div class="content_area">
        <div class="content_inner">
            <div class="content_box_wrap">
                <div class="content_box">
                    <h1 class="hea-se"><i class="zmdi zmdi-email"></i> &nbsp;  Email List  </h1>
                    <a class="pull-left btn btn-sm marg-left-20 btn-warning" href="composeEmail"><i class="fa fa-pencil-square-o" aria-hidden="true"></i> Compose</a>
                </div>


                <div class="mid-are">

                    <div class="row">

                        <div class="form-inline">
                            <div class="col-md-3 col-sm-3 col-xs-6">


                                <input type="text" class="form-control" placeholder="To">


                            </div>


                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-6">
                            <div class="input-group date" data-provide="datepicker">
                                <input type="text" class="form-control" placeholder="From Date">
                                <div class="input-group-addon">
                                    <span class="glyphicon glyphicon-calendar"></span>
                                </div>
                            </div>


                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-6">
                            <div class="input-group date" data-provide="datepicker">
                                <input type="text" class="form-control" placeholder="To Date">
                                <div class="input-group-addon">
                                    <span class="glyphicon glyphicon-calendar"></span>
                                </div>
                            </div>


                        </div>
                        <div class="col-md-1 col-sm-1 col-xs-6">
                            <p class="p-check li-32">
                                <input type="checkbox" id="test1" />
                                <label for="test1">Sent</label>
                            </p>
                        </div>

                        <div class="col-md-2 col-sm-2 col-xs-12">
                            <a class="btn btn-addntional btn-md btn-group-set" href="javascript:void(0)" title="Search">Search</a>
                        </div>
                    </div>


                </div>


                <div id="example_wrapper" class="dataTables_wrapper form-inline dt-bootstrap no-footer top-up-table table-responsive">

                    <div class="row">
                        <div class="col-sm-12">
                            <table id="example" class="table table-striped table-bordered dataTable no-footer" cellspacing="0" width="100%" role="grid" aria-describedby="example_info" style="width: 100%;">
                                <thead>
                                    <tr role="row">
                                        <th style="width: 80px;">Subject</th>
                                        <th style="width: 300px;">To</th>
                                        <th style="width: 200px;">Sent On</th>
                                        <th style="width: 200px;">Sent Tries</th>
                                            <th style="width: 200px;">Created On</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr role="row" class="odd">
                                        <td><a href="#">Test</a></td>
                                        <td>mylendlend@lendlend.com.my</td>
                                        <td></td>
                                        <td>3</td>
                                        <td>09-Mar-2016 16:30:48</td>

                                    </tr>

                                </tbody>
                            </table>
                        </div>
                    </div>

                </div>


            </div>
        </div>
    </div>
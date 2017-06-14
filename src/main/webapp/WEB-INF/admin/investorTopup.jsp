<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/admin/includes/header1.jsp"%>
    <div class="content_area">
        <div class="content_inner">
            <div id="div_top" class="col-md-12 col-xs-12" style="padding:0 !important">

                <a href="topupFunds">
                    <i class="glyphicon glyphicon-menu-left"></i> Back to List
                </a>

            </div>
            <div class="content_box_wrap">
                <div class="content_box">
                    <h1 class="hea-se"><i class="zmdi zmdi-file-text"></i> &nbsp; Investor Top Up </h1>

                </div>



                <div class="panel-body">
                    <form method="post">

                        <div class="form-horizontal">
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3">Investor Id#</label>
                                <div class="col-md-5 col-sm-5">
                                    <div class="form-group">
                                        <select class="form-control">
                                            <option>[I158888883] MY Lend Factor PLT </option>
                                            <option>[I159000009] Master</option>
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="control-label col-md-3  col-sm-3">Amount</label>
                                <div class="col-md-5 col-sm-5">
                                    <div class="form-group">
                                        <input type="text" class="form-control" data-validation="number" />
                                    </div>
                                </div>
                            </div>


                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3">Ref No #</label>
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
                                    <button class="btn btn-md btn-addntional" type="submit">Top Up</button>
                                </div>
                            </div>


                        </div>

                    </form>







                </div>
            </div>

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
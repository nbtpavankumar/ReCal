 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ include file="/WEB-INF/admin/includes/header1.jsp" %>
 
 
 <div class="content_area">
        <div class="content_inner">
            <div class="content_box_wrap">
                <div class="content_box">
                    <div class="row">
                        <div class="col-md-12">
                            <h1><i class="zmdi zmdi-file"></i> &nbsp;Application Lists</h1>
                        </div>
                    </div>
                </div>

                <div class="panel-body">
                    <div class="list-content">
                        <div class="search">
                            <div class="input-group">
                                <div class="input-group-addon">
                                 
                                    <li class="dropdown">
                                        <button id="options" aria-expanded="false" aria-haspopup="true" role="button" data-toggle="dropdown" class="dropdown-toggle">All<span class="caret"></span></button>
                                        <ul class="dropdown-menu">
                                            <li><a href="javascript:searchApplications('Submitted');">Submitted</a></li>
                                            <li><a href="javascript:searchApplications('Pending_For_Authorizer');">Pending for authorizer</a></li>
                                            <li><a href="javascript:searchApplications('Pending_For_Borrower');">Pending for borrower</a></li>
                                            <li><a href="javascript:searchApplications('Approved_Pending_verification');">Approved(PV)</a></li>
                                            <li><a href="javascript:searchApplications('Approved');">Approved</a></li>
                                            <li><a href="javascript:searchApplications('Declined');">Declined</a></li>
                                            <li><a href="javascript:searchApplications('Expired');">Expired</a></li>
                                        </ul>
                                    </li>
                                  
                                    
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12 table-responsive">
                                <table id="example" class="table table-striped table-bordered dataTable no-footer" cellspacing="0" width="100%" role="grid" aria-describedby="example_info" style="width: 100%;">
                                    <thead>
                                        <tr role="row">
                                            <th class="sorting info" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="Name: activate to sort column ascending" style="width: 200px;">Created On</th>
                                            <th class="sorting_desc info" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="Position: activate to sort column ascending" aria-sort="descending" style="width: 80px;">App Id #</th>
                                            <th class="sorting info" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="Office: activate to sort column ascending" style="width: 120px;">Name</th>
                                            <th class="sorting info" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="Salary: activate to sort column ascending" style="width: 60px;">Amount</th>
                                            <th class="sorting info" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="Salary: activate to sort column ascending" style="width: 60px;">Tenor</th>
                                            <th class="sorting info" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="Salary: activate to sort column ascending" style="width: 120px;">Status</th>
                                            <th class="sorting info" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="Salary: activate to sort column ascending" style="width: 100px;">Expired Date</th>
                                        </tr>
                                    </thead>
                                    
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
    
    
  
    <script type="text/javascript" src="<c:url value="/adminassets/js/datatables.min.js.download" />"></script>
    <script type="text/javascript" charset="utf-8">
    
       
        $(document).ready(function () {
        	
        	
        	 $(".dropdown-menu li a").click(function () {
        		    
                 $("#options").text($(this).text());
              });
        	
              
        	
        	  var siteurl = document.location.origin;
       	      //var url = siteurl+"/admin/listapplications?searchval=${search}";
       	      var url = siteurl+"/admin/listapplications";
       	      var uid = Cookies.get('uid');
      	      var keyId = Cookies.get('keyId');
       	     
       	 
        	   $('#example').dataTable( {
        		  "ajax": {
        			  "url": url,
        			  "data": { 'searchval': '${search}','uid' : uid,'keyId' :keyId },
            		  "type": "POST",
        		    },
        		   "destroy": true
        		});
        	   
        	   $("#options").text('${search}');
        });
        
        /**
         * Search loan applications
         * @param value
         */
        function searchApplications(value)
        {
        	 var siteurl = document.location.origin;
        	 //var searchurl = siteurl+"/admin/searchapplications?searchval="+value;
        	 var searchurl = siteurl+"/admin/searchapplications";
        	 var uid = Cookies.get('uid');
     	     var keyId = Cookies.get('keyId');
        	
        	    
        	 $('#example').dataTable( {
       		  "ajax": {
       		     "url": searchurl,
       		     "data": { 'searchval': value,'uid' : uid,'keyId' :keyId },
       		     "type": "POST",
               },
       		   "destroy": true
       		});
        	
        	
        }
        
    </script>
    <script type="text/javascript">
        // For demo to fit into DataTables site builder...
        $('#example')
            .removeClass('display')
            .addClass('table table-striped table-bordered');
    </script>
    
    
      <%@ include file="/WEB-INF/admin/includes/footer1.jsp" %>

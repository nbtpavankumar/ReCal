<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/admin/includes/header1.jsp"%>


<div class="content_area">
	<div class="content_inner">
		<div class="content_box_wrap">
			<div class="content_box">
				<div class="row">
					<div class="col-md-6 col-sm-7 col-xs-12">
						<h1>
							<i class="fa fa-money" aria-hidden="true"></i> &nbsp;Borrower
							Repayment List
						</h1>

						<a class="create-btn" href="createBorrowerPayment"> <span
							class="round_circle"> <i class="fa fa-plus"
								aria-hidden="true"></i>

						</span> Create
						</a>

					</div>
					<div class="col-md-6 col-sm-5 col-xs-12">
						<div class="btn-group btn-group-set">
							<button type="button" class="btn grey">
								<i class="fa fa-file" aria-hidden="true"></i> &nbsp;New
							</button>
							<button type="button" class="btn blue">
								<i class="fa fa-check-square-o" aria-hidden="true"></i>
								&nbsp;Success
							</button>
							<button type="button" class="btn yellow">
								<i class="fa fa-clock-o" aria-hidden="true"></i> &nbsp;Pending
							</button>
						</div>
					</div>

				</div>
			</div>

			<div class="panel-body">
				<div class="btn-upload">
					<div class="row">
						<div class="col-md-12 cen-mob">
							<div class="fileUpload btn blue">
								<span><i class="fa fa-upload" aria-hidden="true"></i>
									&nbsp;Upload JomPay Trn</span> <input type="file" class="upload" />
							</div>
						</div>
					</div>
				</div>
				<div class="list-content">
					<div class="row">
						<div class="col-sm-12 table-responsive">
							<table id="example"
								class="table table-striped table-bordered dataTable no-footer"
								cellspacing="0" width="100%" role="grid"
								aria-describedby="example_info" style="width: 100%;">
								<thead>
									<tr role="row">
										<th class="sorting info" tabindex="0" aria-controls="example"
											rowspan="1" colspan="1"
											aria-label="Name: activate to sort column ascending"
											style="width: 15px;">Id</th>
										<th class="sorting_desc info" tabindex="0"
											aria-controls="example" rowspan="1" colspan="1"
											aria-label="Position: activate to sort column ascending"
											aria-sort="descending" style="width: 40px;">Status</th>
										<th class="sorting info" tabindex="0" aria-controls="example"
											rowspan="1" colspan="1"
											aria-label="Office: activate to sort column ascending"
											style="width: 100px;">Payment Amount</th>
										<th class="sorting info" tabindex="0" aria-controls="example"
											rowspan="1" colspan="1"
											aria-label="Salary: activate to sort column ascending"
											style="width: 130px;">Bill Acct No (Loan Id)</th>
										<th class="sorting info" tabindex="0" aria-controls="example"
											rowspan="1" colspan="1"
											aria-label="Salary: activate to sort column ascending"
											style="width: 90px;">Bill Ref No</th>
										<th class="sorting info" tabindex="0" aria-controls="example"
											rowspan="1" colspan="1"
											aria-label="Salary: activate to sort column ascending"
											style="width: 90px;">Trn Ref No.</th>
										<th class="sorting info" tabindex="0" aria-controls="example"
											rowspan="1" colspan="1"
											aria-label="Salary: activate to sort column ascending"
											style="width: 80px;">Trn Date</th>
										<th class="sorting info" tabindex="0" aria-controls="example"
											rowspan="1" colspan="1"
											aria-label="Salary: activate to sort column ascending"
											style="width: 70px;">Remarks</th>
										<th class="sorting info" tabindex="0" aria-controls="example"
											rowspan="1" colspan="1"
											aria-label="Salary: activate to sort column ascending"
											style="width: 80px;">Created On</th>
									</tr>
								</thead>
								<tbody>
									<!-- <tr role="row" class="odd">
                               		<td>5</td>
                                    <td>Success</td>
                                    <td>161002043</td>
                                    <td>RM9,850.00</td>
                                    <td>12345678</td>
                                    <td>Bank Rakyat</td>
                                    <td>Ktestone</td>
                                    <td>800101-99-0006</td>
                                    <td>05-Apr-2016</td>
                                </tr>
                                                                
                                <tr role="row" class="even">
                               		<td>1</td>
                                    <td>Success</td>
                                    <td>161002043</td>
                                    <td>RM9,850.00</td>
                                    <td>12345678</td>
                                    <td>Bank Rakyat</td>
                                    <td>Ktestone</td>
                                    <td>800101-99-0006</td>
                                    <td>05-Apr-2016</td>
                                    <td>28-Mar-2016 12:46:40</td>
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

</div>

<ul id="ddsubmenu3" class="ddsubmenustyle">
	<li><a href="#">info@exampledomin.com</a></li>
	<li><a href="#">Change Password</a></li>
	<li><a href="#">Sign Out</a></li>
</ul>




</body>

</html>
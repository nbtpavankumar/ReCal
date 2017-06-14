
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/admin/includes/header1.jsp"%>

<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>

<div class="content_area">
	<div class="content_inner">
		<div class="content_box_wrap">
			<div class="content_box">
				<div class="row">
					<div class="col-md-12">
						<h1>
							<i class="zmdi zmdi-accounts"></i> &nbsp;Sales Representative
						</h1>
						<a class="create-btn" href="createSalesRep"> <span
							class="round_circle"> <i class="fa fa-plus"
								aria-hidden="true"></i>

						</span> Create
						</a>

					</div>

				</div>
			</div>

			<div class="panel-body">
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
											style="width: 250px;">Email</th>
										<th class="sorting info" tabindex="0" aria-controls="example"
											rowspan="1" colspan="1"
											aria-label="Office: activate to sort column ascending"
											style="width: 250px;">Name</th>
										<th class="sorting info" tabindex="0" aria-controls="example"
											rowspan="1" colspan="1"
											aria-label="Office: activate to sort column ascending"
											style="width: 300px;">Referral Code</th>
									</tr>
								</thead>
								<tbody>
									<tr role="row" class="odd">
										<td class="">example@gmail.com</td>
										<td>Chen Chen Wah</td>
										<td>A161003330</td>

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
<%@page import="com.dao.PackageDao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.bean.PackageBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Package</title>
<jsp:include page="AdminCss.jsp"></jsp:include>

</head>
<body>

	<div class="container-scroller">
		<jsp:include page="AdminHeader.jsp"></jsp:include>


		<div class="container-fluid page-body-wrapper">
			<!-- partial:partials/_settings-panel.html -->
			<div class="theme-setting-wrapper">
				<div id="settings-trigger">
					<i class="ti-settings"></i>
				</div>
				<div id="theme-settings" class="settings-panel">
					<i class="settings-close ti-close"></i>
					<p class="settings-heading">SIDEBAR SKINS</p>
					<div class="sidebar-bg-options selected" id="sidebar-light-theme">
						<div class="img-ss rounded-circle bg-light border me-3"></div>
						Light
					</div>
					<div class="sidebar-bg-options" id="sidebar-dark-theme">
						<div class="img-ss rounded-circle bg-dark border me-3"></div>
						Dark
					</div>
					<p class="settings-heading mt-2">HEADER SKINS</p>
					<div class="color-tiles mx-0 px-4">
						<div class="tiles success"></div>
						<div class="tiles warning"></div>
						<div class="tiles danger"></div>
						<div class="tiles info"></div>
						<div class="tiles dark"></div>
						<div class="tiles default"></div>
					</div>
				</div>
			</div>



			<jsp:include page="AdminSidebar.jsp"></jsp:include>


			<div class="row flex-grow">
				<div class="col-12 grid-margin stretch-card">
					<div class="card card-rounded">
						<div class="card-body">
							<div class="d-sm-flex justify-content-between align-items-start">
								<div>
									<h4 class="card-title card-title-dash">Packages</h4>
									<p class="card-subtitle card-subtitle-dash">You have 50+
										new requests</p>
								</div>
								<div>
									<button class="btn btn-primary btn-lg text-white mb-0"
										type="button">
										<a href="packageform.jsp"
											style="text-decoration: none; color: white;"> Add new
											Package </a>
									</button>
								</div>
							</div>
							<div class="table-responsive  mt-1">


								<%
									PackageDao pd=new PackageDao();
									ArrayList<PackageBean> packages = pd.getAllPackage();
								%>



								<table id="listpackage" class="table select-table">
									<thead>
										<tr>
											
											<th>PackageId</th>
											<th>PackageName</th>
											<th>PackageDestination</th>
											<th>timeduration</th>
											<th>transportationFacility</th>
											<th>charge in Ruppes</th>
											<th>Action</th>
										</tr>
									</thead>



									<%
										for (PackageBean p : packages) {
									%>


									<tbody>
										<tr>
											
											<td>
												<div class="">
													<h6><%=p.getPackageId()%></h6>
												</div>
											</td>
											<td>
												<h6><%=p.getPackageName()%></h6>

											</td>
											<td>
												<div>

													<h6><%=p.getDestination()%></h6>


												</div>
											</td>

											<td>
												<div>

													<h6><%=p.getTimeDuration()%></h6>


												</div>
											</td>

											<td>
												<div>

													<h6><%=p.getTransportationFacility()%></h6>


												</div>
											</td>

											<td>
												<div>

													<h6><%=p.getCharge()%></h6>


												</div>
											</td>


											<td>
												<div>

													<h6>
														<a
															href="DeletePackageServlet?packageId=<%=p.getPackageId()%>">Delete</a>|
														<a
															href="EditPackageServlet?packageId=<%=p.getPackageId()%>">Edit</a>
													</h6>


												</div>
											</td>








										</tr>

									</tbody>

									<%
										}
									%>


								</table>
							</div>
						</div>
					</div>
				</div>
			</div>

















		</div>
	</div>

	<jsp:include page="AdminJs.jsp"></jsp:include>


	<script type="text/javascript">
		$(document).ready(function() {
			$('#listpackage').DataTable();
		});
	</script>
</body>



</html>
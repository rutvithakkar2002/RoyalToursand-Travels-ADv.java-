<%@page import="com.dao.ServiceDao"%>
<%@page import="com.bean.ServiceBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>List Service</title>
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
										<a href="AdminSideServices.jsp"
											style="text-decoration: none; color: white;"> Add new
											service </a>
									</button>
								</div>
							</div>
							<div class="table-responsive  mt-1">

								<%
									ServiceDao servicedao = new ServiceDao();
									ArrayList<ServiceBean> services = servicedao.getAllService();//(ArrayList<ServiceBean>) request.getAttribute("allServices");
								%>


								<table id="listservices" class="table select-table">
									<thead>
										<tr>

											<th>Serviceid</th>
											<th>ServiceName</th>
											<th>Description</th>


											<th>Action</th>
										</tr>
									</thead>


									<%
										for (ServiceBean s : services) {
									%>


									<tbody>
										<tr>

											<td>
												<div class="">
													<h6><%=s.getServiceid()%></h6>
												</div>
											</td>
											<td>
												<h6><%=s.getServicename()%></h6>

											</td>
											<td>
												<div>

													<h6><%=s.getDescription()%></h6>


												</div>
											</td>



											<td>
												<div>

													<h6>
														<a
															href="DeleteServiceServlet?serviceid=<%=s.getServiceid()%>">Delete</a>|
														<a
															href="EditServiceServlet?serviceid=<%=s.getServiceid()%>">Edit</a>
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
			$('#listservices').DataTable();
		});
	</script>



</body>
</html>
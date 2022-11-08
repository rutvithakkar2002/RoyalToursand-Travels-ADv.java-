<%@page import="com.dao.userDao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.bean.UserBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Inquiry</title>
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
									<h4 class="card-title card-title-dash">Pending Requests</h4>
									<p class="card-subtitle card-subtitle-dash">You have 50+
										new requests</p>
								</div>
								<div>
									<button class="btn btn-primary btn-lg text-white mb-0"
										type="button">
										<a href="Inquiryform.jsp"
											style="text-decoration: none; color: white;"> Add new
											member </a>
									</button>
								</div>
							</div>
							<div class="table-responsive  mt-1">


								<%
									userDao ud = new userDao();
									ArrayList<UserBean> users = ud.getAllUsers();
								%>



								<table class="table select-table">
									<thead>
										<tr>
											<th>
												<div class="form-check form-check-flat mt-0">
													<label class="form-check-label"> <input
														type="checkbox" class="form-check-input"
														aria-checked="false"><i class="input-helper"></i><i
														class="input-helper"></i></label>
												</div>
											</th>
											<th>UserId</th>
											<th>FirstName</th>
											<th>LastName</th>
											<th>Email</th>
											<th>MobileNo</th>
											<th>Location</th>
											<th>PlacesToVisit</th>
											<th>Budget</th>
											<th>Action</th>

										</tr>
									</thead>



									<%
										for (UserBean user : users) {
									%>


									<tbody>
										<tr>
											<td>
												<div class="form-check form-check-flat mt-0">
													<label class="form-check-label"> <input
														type="checkbox" class="form-check-input"
														aria-checked="false"><i class="input-helper"></i><i
														class="input-helper"></i></label>
												</div>
											</td>
											<td>
												<div class="">
													<h6><%=user.getUserId()%></h6>
												</div>
											</td>
											<td>
												<h6><%=user.getFirstName()%></h6>

											</td>
											<td>
												<div>

													<h6><%=user.getLastName()%></h6>


												</div>
											</td>

											<td>
												<div>

													<h6><%=user.getEmail()%></h6>


												</div>
											</td>

											<td>
												<div>

													<h6><%=user.getMobileNo()%></h6>


												</div>
											</td>

											<td>
												<div>

													<h6><%=user.getYourLocation()%></h6>


												</div>
											</td>


											<td>
												<div>

													<h6><%=user.getPlacesToVisit()%></h6>


												</div>
											</td>



											<td>
												<div>

													<h6><%=user.getBudget()%></h6>


												</div>
											</td>


											<td>
												<div>

													<h6>
														<a href="DeleteUserServlet?userId=<%=user.getUserId()%>">Delete</a>|
														<a href="EditUserServlet?userId=<%=user.getUserId()%>">Edit</a>
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




</body>
</html>
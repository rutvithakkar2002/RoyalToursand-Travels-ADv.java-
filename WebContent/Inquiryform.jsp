<%@page import="java.util.ArrayList"%>
<%@page import="com.bean.PackageBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Package</title>
<jsp:include page="AdminCss.jsp"></jsp:include>

</head>
<body>

	<div class="container-scroller">
		<jsp:include page="AdminHeader.jsp"></jsp:include>

*
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

		
			<br>	<br>	<br>	<br>	<br>
			
			<div class="card">
			
			
			
	<%
		String firstNameError = (String) request.getAttribute("firstNameError");
		String lastNameError = (String) request.getAttribute("lastNameError");
		String emailError = (String) request.getAttribute("emailError");
		String mobileNoError = (String) request.getAttribute("mobileNoError");
		
		String firstNamevalue = (String) request.getAttribute("firstNameValue");
		String lastNamevalue = (String) request.getAttribute("lastNameValue");
		String emailvalue = (String) request.getAttribute("emailValue");
		String mobileNovalue = (String) request.getAttribute("mobileNoValue");
		
	%>


	<form action="inquiryFormController" method="post">
		<table>
			<tr>
				<td>FirstName:</td>
				<td><input type="text" name="firstName" value="${firstName}"
					placeholder="Enter Your FirstName"<%=firstNameError == null ? "" : firstNamevalue%>>
					<%=firstNameError == null ? "" : firstNameError%></td>
			</tr>

			<tr>
				<td>LastName:</td>
				<td><input type="text" name="lastName"
					placeholder="Enter Your LastName" <%=lastNameError == null ? "" : lastNamevalue%>>
					required<%=lastNameError == null ? "" : lastNameError%></td>
			</tr>
			<tr>
				<td>Email:</td>
				<td><input type="text" name="email"
					placeholder="Enter Your email"<%=emailError == null ? "" : emailvalue%>>
					<%=emailError == null ? "" : emailError%></td>
			</tr>
			<tr>
				<td>MobileNo:</td>
				<td><input type="text" name="mobileNo"
					placeholder="Enter Your MobileNo"<%=mobileNoError == null ? "" : mobileNovalue%>>
					<%=mobileNoError == null ? "" :mobileNoError%></td>
			</tr>
			
			<tr>
				<td>Your Loation:</td>
				<td><input type="text" name="yourLocation"
					placeholder="Enter Your Current Location"></td>
			</tr>
			
			<tr>
				<td>PlacesToVisit:</td>
				<td><input type="text" name="placesToVisit"
					placeholder="Enter your favorite places you wat to visit"></td>
			</tr>

			<tr>
				<td>Your Budget:</td>
				<td><input type="text" name="budget"
					placeholder="Enter Your maximum budget" ></td>
			</tr>


			<tr>
				<td><input type="submit" value="submit"></td>
			</tr>
		</table>

	</form>
			
	
	
	
	
	
			
	</div>		
			
			
			
			
			
			


		</div>
	</div>

	<jsp:include page="AdminJs.jsp"></jsp:include>


	<script type="text/javascript">
		$(document).ready(function() {
			$('#listpg').DataTable();
		});
	</script>
</body>



</html>
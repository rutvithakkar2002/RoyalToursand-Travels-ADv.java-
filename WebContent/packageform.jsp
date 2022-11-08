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

			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			
			<div class="card">
			
			<form action="PackageController" method="post">
		<table>
			<tr>
				<td>PackageName:</td>
				<td><input type="text" name="packageName"
					placeholder="Enter packageName" size="90"></td>
			</tr>

			<tr>
				<td>Destination:</td>
				<td><input type="text" name="destination"
					placeholder="Enter destination" size="90"></td>
			</tr>
			<tr>
				<td>Travel Duration:</td>
				<td><input type="text" name="timeDuration"
					placeholder="Enter time-Duration" size="90"></td>
			</tr>
			<tr>
				<td>Mode Of Transpotation:</td>
				<td><input type="text" name="modeOfTransportation"
					placeholder="Enter Mode Of Transportation" size="90"></td>
			</tr>
			<tr>
				<td>Charge:</td>
				<td><input type="text" name="charge"
					placeholder="Enter charge the above places to visit" size="90"></td>
			</tr>



			<tr>
				<td><input type="submit" value="submit"></td>
			</tr>
		</table>

	</form>
	
	
	${error}
			
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
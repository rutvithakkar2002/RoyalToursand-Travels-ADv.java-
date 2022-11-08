<%@page import="com.bean.PackageBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.dao.PackageDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Packages</title>

<jsp:include page="AboutUscss.jsp"></jsp:include>

</head>
<body>

	<div class="preloader d-flex align-items-center justify-content-center">
		<div class="preloader-circle"></div>
		<div class="preloader-img">
			<img src="UserAssets/img/core-img/leaf.png" alt="">
		</div>
	</div>

	<jsp:include page="UserSideHeader.jsp"></jsp:include>

	<div class="breadcrumb-area">
		<!-- Top Breadcrumb Area -->
		<div
			class="top-breadcrumb-area bg-img bg-overlay d-flex align-items-center justify-content-center"
			style="background-image: url(UserAssets/img/extra/25.jpg); display: block;">
			<h2>ROYAL PACKAGES</h2>
		</div>

		<div class="container">
			<div class="row">
				<div class="col-12">
					<nav aria-label="breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="#"><i
									class="fa fa-home"></i> Home</a></li>
							<li class="breadcrumb-item active" aria-current="page">Packages</li>
						</ol>
					</nav>
				</div>
			</div>
		</div>
	</div>
	<!-- ##### Breadcrumb Area End ##### -->



	<!-- ##### Service Area Start ##### -->
	<section class="our-services-area bg-gray section-padding-100-0">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<!-- Section Heading -->
					<div class="section-heading text-center">
						<h2>OUR PACKAGES</h2>
						<h4>Let us transport you with our highly affordable and reliable holiday packages</h4>
					</div>
				</div>
			</div>

			<div class="container">

				<%
					int packageCounter = 0;
					PackageDao pd = new PackageDao();
					ArrayList<PackageBean> packages = pd.getAllPackage();
					for (int i = 1; i <= Math.ceil(packages.size() / 8.0); i++) {
				%>
				<div class="row">
					<%
						for (PackageBean p : packages) {
					%>

					<div class="col-md-5">
						<div  onMouseOver="this.style.backgroundColor='yellow'"
    onMouseOut="this.style.backgroundColor='white'" class="card">
							<div class="card-body">
								<h4 class="card-title">x<%=p.getPackageName()%></h4>
								<p class="card-text">


									<h6><%=p.getDestination()%></h6>
								<h6><%=p.getTimeDuration()%></h6>
								<h6><%=p.getTransportationFacility()%></h6>
								<h6><%=p.getCharge()%></h6>
							</div>
						</div>
						
						
						<br><br>
					</div>
					<%
						packageCounter++;

							}
					%>

				

				</div>
				<br><br>
				<%
					}
				%>
			</div>

			
		</div>
		</div>
	</section>
	<!-- ##### Service Area End ##### -->

	
	<!-- ##### Cool Facts Area Start ##### -->
	<section class="cool-facts-area bg-img section-padding-100-0"
		style="background-image: url(UserAssets/img/bg-img/cool-facts.png);">
		<div class="container">
			<div class="row">

				<!-- Single Cool Facts Area -->
				<div class="col-12 col-sm-6 col-md-3">
					<div
						class="single-cool-fact d-flex align-items-center justify-content-center mb-100">
						<div class="cf-icon">
							<img src="UserAssets/img/core-img/cf1.png" alt="">
						</div>
						<div class="cf-content">
							<h2>
								<span class="counter">20</span>
							</h2>
							<h6>AWARDS</h6>
						</div>
					</div>
				</div>

				<!-- Single Cool Facts Area -->
				<div class="col-12 col-sm-6 col-md-3">
					<div
						class="single-cool-fact d-flex align-items-center justify-content-center mb-100">
						<div class="cf-icon">
							<img src="UserAssets/img/core-img/cf2.png" alt="">
						</div>
						<div class="cf-content">
							<h2>
								<span class="counter">70</span>
							</h2>
							<h6>PROJECTS</h6>
						</div>
					</div>
				</div>

				<!-- Single Cool Facts Area -->
				<div class="col-12 col-sm-6 col-md-3">
					<div
						class="single-cool-fact d-flex align-items-center justify-content-center mb-100">
						<div class="cf-icon">
							<img src="UserAssets/img/core-img/cf3.png" alt="">
						</div>
						<div class="cf-content">
							<h2>
								<span class="counter">30</span>+
							</h2>
							<h6>HAPPY CLIENTS</h6>
						</div>
					</div>
				</div>

				<!-- Single Cool Facts Area -->
				<div class="col-12 col-sm-6 col-md-3">
					<div
						class="single-cool-fact d-flex align-items-center justify-content-center mb-100">
						<div class="cf-icon">
							<img src="UserAssets/img/core-img/cf4.png" alt="">
						</div>
						<div class="cf-content">
							<h2>
								<span class="counter">80</span>K+
							</h2>
							<h6>REVENUE</h6>
						</div>
					</div>
				</div>

			</div>
		</div>

		<!-- Side Image -->
		<div class="side-img wow fadeInUp" data-wow-delay="500ms">
			<img src="UserAssets/img/core-img/pot.png" alt="">
		</div>
	</section>
	<!-- ##### Cool Facts Area End ##### -->



	<jsp:include page="UserSideFooter.jsp"></jsp:include>
	<jsp:include page="UserSideJs.jsp"></jsp:include>






</body>
</html>
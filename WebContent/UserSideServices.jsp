<%@page import="com.bean.ServiceBean"%>
<%@page import="com.dao.ServiceDao"%>
<%@page import="com.bean.AboutUsBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.dao.AboutUsDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="AboutUscss.jsp"></jsp:include>
<title>About Us</title>
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
			style="background-image: url(UserAssets/img/ex/r16.jpg);">
			<h2>ROYAL SERVICES</h2>
		</div>

		<div class="container">
			<div class="row">
				<div class="col-12">
					<nav aria-label="breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="#"><i
									class="fa fa-home"></i> Home</a></li>
							<li class="breadcrumb-item active" aria-current="page">Services</li>
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
						<center><h1>OUR SERVICES</h1></center>
						<h4>We provide the perfect service for you.</h4>
					</div>
				</div>
			</div>

			<div class="row align-items-center justify-content-between">
				<div class="col-12 col-lg-6
				">
					<div class="alazea-service-area mb-100">

						<%
							ServiceDao sd = new ServiceDao();
							ArrayList<ServiceBean> services = sd.getAllService();
						%>

						<%
							for (ServiceBean s : services) {
						%>

						<!-- Single Service Area -->
						<div class="single-service-area d-flex align-items-center">
							<!-- Icon -->
							<div class="service-icon mr-30">
							
							</div>
							<!-- Content -->
							<div class="service-content">
								<h3><%=s.getServicename() %></h3>
								<h5><%=s.getDescription() %></h5>
							</div>
						</div>
						<%
							}
						%>




					</div>
				</div>

				<div class="col-12 col-lg-6">
					<div class="alazea-video-area bg-overlay mb-100">
						<img src="UserAssets/img/ex/fmly.jpg" alt=""> <a
							href="http://www.youtube.com/watch?v=7HKoqNJtMTQ"
							class="video-icon"> <i class="fa fa-play" aria-hidden="true"></i>
						</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- ##### Service Area End ##### -->

	<!-- ##### Testimonial Area Start ##### -->
	<section class="testimonial-area section-padding-100">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="testimonials-slides owl-carousel">

						<!-- Single Testimonial Slide -->
						<div class="single-testimonial-slide">
							<div class="row align-items-center">
								<div class="col-12 col-md-6">
									<div class="testimonial-thumb">
										<img src="UserAssets/img/bg-img/13.jpg" alt="">
									</div>
								</div>
								<div class="col-12 col-md-6">
									<div class="testimonial-content">
										<!-- Section Heading -->
										<div class="section-heading">
											<h2>TESTIMONIAL</h2>
											<p>Some kind words from clients about Alazea</p>
										</div>
										<p>“Alazea is a pleasure to work with. Their ideas are
											creative, they came up with imaginative solutions to some
											tricky issues, their landscaping and planting contacts are
											equally excellent we have a beautiful but also manageable
											garden as a result. Thank you!”</p>
										<div class="testimonial-author-info">
											<h6>Mr. Nick Jonas</h6>
											<p>CEO of NAVATECH</p>
										</div>
									</div>
								</div>
							</div>
						</div>

						<!-- Single Testimonial Slide -->
						<div class="single-testimonial-slide">
							<div class="row align-items-center">
								<div class="col-12 col-md-6">
									<div class="testimonial-thumb">
										<img src="UserAssets/img/bg-img/14.jpg" alt="">
									</div>
								</div>
								<div class="col-12 col-md-6">
									<div class="testimonial-content">
										<!-- Section Heading -->
										<div class="section-heading">
											<h2>TESTIMONIAL</h2>
											<p>Some kind words from clients about Alazea</p>
										</div>
										<p>“Alazea is a pleasure to work with. Their ideas are
											creative, they came up with imaginative solutions to some
											tricky issues, their landscaping and planting contacts are
											equally excellent we have a beautiful but also manageable
											garden as a result. Thank you!”</p>
										<div class="testimonial-author-info">
											<h6>Mr. Nazrul Islam</h6>
											<p>CEO of NAVATECH</p>
										</div>
									</div>
								</div>
							</div>
						</div>

						<!-- Single Testimonial Slide -->
						<div class="single-testimonial-slide">
							<div class="row align-items-center">
								<div class="col-12 col-md-6">
									<div class="testimonial-thumb">
										<img src="UserAssets/img/bg-img/15.jpg" alt="">
									</div>
								</div>
								<div class="col-12 col-md-6">
									<div class="testimonial-content">
										<!-- Section Heading -->
										<div class="section-heading">
											<h2>TESTIMONIAL</h2>
											<p>Some kind words from clients about Alazea</p>
										</div>
										<p>“Alazea is a pleasure to work with. Their ideas are
											creative, they came up with imaginative solutions to some
											tricky issues, their landscaping and planting contacts are
											equally excellent we have a beautiful but also manageable
											garden as a result. Thank you!”</p>
										<div class="testimonial-author-info">
											<h6>Mr. Jonas Nick</h6>
											<p>CEO of NAVATECH</p>
										</div>
									</div>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- ##### Testimonial Area End ##### -->

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
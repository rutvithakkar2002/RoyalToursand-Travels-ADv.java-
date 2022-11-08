<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact Us</title>
<jsp:include page="UserSideContactUsCss.jsp"></jsp:include>

</head>
<body>

	<!-- Preloader -->
	<div class="preloader d-flex align-items-center justify-content-center">
		<div class="preloader-circle"></div>
		<div class="preloader-img">
			<img src="UserAssets/img/extra/leaf.png" alt="">
		</div>
	</div>

	<jsp:include page="UserSideHeader.jsp"></jsp:include>

	<!-- ##### Breadcrumb Area Start ##### -->
	<div class="breadcrumb-area">
		<!-- Top Breadcrumb Area -->
		<div
			class="top-breadcrumb-area bg-img bg-overlay d-flex align-items-center justify-content-center"
			style="background-image: url(UserAssets/img/bg-img/24.jpg);">
			<h2>Contact US</h2>
		</div>

		<div class="container">
			<div class="row">
				<div class="col-12">
					<nav aria-label="breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="#"><i
									class="fa fa-home"></i> Home</a></li>
							<li class="breadcrumb-item active" aria-current="page">Contact</li>
						</ol>
					</nav>
				</div>
			</div>
		</div>
	</div>
	<!-- ##### Breadcrumb Area End ##### -->

	<!-- ##### Contact Area Info Start ##### -->
	<div class="contact-area-info section-padding-0-100">
		<div class="container">
			<div class="row align-items-center justify-content-between">
				<!-- Contact Thumbnail -->
				<div class="col-12 col-md-6">
					<div class="contact--thumbnail">
						<img src="UserAssets/img/bg-img/25.jpg" alt="">
					</div>
				</div>

				<div class="col-12 col-md-5">
					<!-- Section Heading -->
					<div class="section-heading">
						<h2>CONTACT US</h2>
						<p>We have the answers to your travel needs. Call us now</p>
					</div>
					<!-- Contact Information -->
					<div class="contact-information">
						<p>
							<span>Address:</span>2nd floor,Surbhi Complex,opp.municipal
							market,Navrangpura,Ahmedabad
						</p>
						<p>
							<span>Phone:</span> +91 9879472527
						</p>
						<p>
							<span>Email:</span>info@royaltravel.com
						</p>
						<p>
							<span>Open hours:</span> Mon - Sun: 8 AM to 9 PM
						</p>
						<p>
							<span>Happy hours:</span> Sat: 2 PM to 4 PM
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- ##### Contact Area Info End ##### -->

	<!-- ##### Contact Area Start ##### -->
	<section class="contact-area">
		<div class="container">
			<div class="row align-items-center justify-content-between">
				<div class="col-12 col-lg-5">
					<!-- Section Heading -->
					<div class="section-heading">
						<h2>GET IN TOUCH</h2>
						<p>Send us a message, we will call back later</p>
					</div>
					<!-- Contact Form Area -->
					<div class="contact-form-area mb-100">

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

						<form action="UserSideinquiryFormController" method="post">
							<div class="row">

								<table>
									<tr>
										<td>FirstName:</td>
										<td><input type="text" name="firstName"
											value="${firstName}" placeholder="Enter Your FirstName"
											size="50" <%=firstNameError == null ? "" : firstNamevalue%>>
											<%=firstNameError == null ? "" : firstNameError%></td>
									</tr>
									<tr class="blank_row">
										<td bgcolor="#FFFFFF" colspan="3">&nbsp;</td>
									</tr>
									<tr>
										<td>LastName:</td>
										<td><input type="text" name="lastName"
											placeholder="Enter Your LastName" size="50"
											<%=lastNameError == null ? "" : lastNamevalue%>>
											required<%=lastNameError == null ? "" : lastNameError%></td>
									</tr>

									<tr class="blank_row">
										<td bgcolor="#FFFFFF" colspan="3">&nbsp;</td>
									</tr>

									<tr>
										<td>Email:</td>
										<td><input type="text" name="email"
											placeholder="Enter Your email" size="50"
											<%=emailError == null ? "" : emailvalue%>> <%=emailError == null ? "" : emailError%></td>
									</tr>
									<tr class="blank_row">
										<td bgcolor="#FFFFFF" colspan="3">&nbsp;</td>
									</tr>
									<tr>
										<td>MobileNo:</td>
										<td><input type="text" name="mobileNo"
											placeholder="Enter Your MobileNo" size="50"
											<%=mobileNoError == null ? "" : mobileNovalue%>> <%=mobileNoError == null ? "" : mobileNoError%></td>
									</tr>
									<tr class="blank_row">
										<td bgcolor="#FFFFFF" colspan="3">&nbsp;</td>
									</tr>
									<tr>
										<td>Your Loation:</td>
										<td><input type="text" name="yourLocation" size="50"
											placeholder="Enter Your Current Location"></td>
									</tr>
									<tr class="blank_row">
										<td bgcolor="#FFFFFF" colspan="3">&nbsp;</td>
									</tr>
									<tr>
										<td>PlacesToVisit:</td>
										<td><input type="text" name="placesToVisit" size="50"
											placeholder="Enter your favorite places you wat to visit"></td>
									</tr>
									<tr class="blank_row">
										<td bgcolor="#FFFFFF" colspan="3">&nbsp;</td>
									</tr>
									<tr>
										<td>Your Budget:</td>
										<td><input type="text" name="budget" size="50"
											placeholder="Enter Your maximum budget"></td>
									</tr>
									<tr class="blank_row">
										<td bgcolor="#FFFFFF" colspan="3">&nbsp;</td>
									</tr>

									<tr>
										<td><input type="submit" class="btn btn-primary mb-2" value="submit"></td>
									</tr>
								</table>

				
				

							</div>
						</form>
					</div>
				</div>

				<div class="col-12 col-lg-6">
					<!-- Google Maps -->
					<div class="map-area mb-100">
						<iframe
							src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d22236.40558254599!2d-118.25292394686001!3d34.057682914027104!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80c2c75ddc27da13%3A0xe22fdf6f254608f4!2z4Kay4Ka4IOCmj-CmnuCnjeCmnOCnh-CmsuCnh-CmuCwg4KaV4KeN4Kav4Ka-4Kay4Ka_4Kar4KeL4Kaw4KeN4Kao4Ka_4Kav4Ka84Ka-LCDgpq7gpr7gprDgp43gppXgpr_gpqgg4Kav4KeB4KaV4KeN4Kak4Kaw4Ka-4Ka34KeN4Kaf4KeN4Kaw!5e0!3m2!1sbn!2sbd!4v1532328708137"
							allowfullscreen></iframe>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- ##### Contact Area End ##### -->
	<jsp:include page="UserSideFooter.jsp"></jsp:include>
	<jsp:include page="UserSideJs.jsp"></jsp:include>

</body>
</html>
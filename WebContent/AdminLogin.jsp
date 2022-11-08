<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<jsp:include page="Logincss.jsp"></jsp:include>
</head>
<body>

	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-form-title"
					style="background-image: url(LoginAssets/images/bg-01.jpg);">
					<span class="login100-form-title-1"> Sign In </span>
				</div>

				<form class="login100-form validate-form" action="LoginServlet" method="post">
					<div class="wrap-input100 validate-input m-b-26"
						data-validate="Username is required">
						<span class="label-input100">Email</span> <input
							class="input100" type="text" name="email"
							placeholder="Enter Your EmailId"> <span
							class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-18"
						data-validate="Password is required">
						<span class="label-input100">Password</span> <input
							class="input100" type="password" name="password"
							placeholder="Enter password"> <span
							class="focus-input100"></span>
					</div>

					

					<div class="container-login100-form-btn">
						<button class="login100-form-btn">Login</button>
					</div>
					${error}
				</form>
				
			</div>
		</div>
	</div>


	<jsp:include page="Loginjs.jsp"></jsp:include>
</body>
</html>
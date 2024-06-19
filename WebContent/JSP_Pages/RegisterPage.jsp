<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Sai Mess</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
	crossorigin="anonymous" />
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
	crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css" href="Register.css">
<link
	href="https://fonts.googleapis.com/css2?family=Jost:wght@500&display=swap"
	rel="stylesheet">
</head>

<body>
	<%@include file="NavBarTemp.html"%>
	<div class="abody">
		<div class="main" style="height: 550px">
			<input type="checkbox" id="chk" aria-hidden="true">

			<div class="signup">
				<form action="../Register" method="post">
					<label for="chk" aria-hidden="true">Sign up</label> <input
						type="text" name="userName" placeholder="User name" required="">
						<input type="tel" name="mobileNo" placeholder="Phone No" required="">
					<input type="email" name="email" placeholder="Email" required="">
					<input type="password" name="pswd" placeholder="Password"
						required="">
					<button>Sign up</button>
				</form>
			</div>

			<div class="login">
				<form action="../Login" method="post">
					<label for="chk" aria-hidden="true">Login</label> <input
						type="tel" name="mobile_no" placeholder="Phone No" required="">
					<input type="password" name="pswd" placeholder="Password"
						required="">
					<button>Login</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
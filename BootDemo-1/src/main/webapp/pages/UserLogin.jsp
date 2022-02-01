<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
	<!DOCTYPE html>
	<html lang="en">

	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gudea&display=swap" rel="stylesheet">
		
		<style>
			@import url("UserLogin.css");
			body {
				background-image: url("laptop.jpg");
			}
		</style>
		<link rel="stylesheet" type="text/css"
			href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
			integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
		<title>Login Page</title>
	</head>

	<body>
		<nav id="navbar">
			<div id="nav1">
				<h1>
					<i style="font-size: 50px;" class="fa fa-laptop"></i>&nbsp ProJeM
				</h1>
			</div>
			<div id="list">
				<ul>
					<li><a href="home" class="btn-1"><span><i class="fa fa-home"></i>&nbsp</span>Home</a></li>
					<li><a href="registerForm" class="btn-1"><span><i class="fa fa-users"></i>&nbsp</span>Register</a>
					</li>
					<li><a href="FAQ" class="btn-1"><span><i class="fa fa-question"></i>&nbsp</span>FAQs</a></li>
					<li><a href="about" class="btn-1"><span><i class="fa fa-info"></i>&nbsp</span>About Us</a></li>
					<li><a href="contact" class="btn-1"><span><i class="fa fa-phone"></i>&nbsp</span>Contact Us</a></li>

				</ul>
			</div>

		</nav>

		<div class="container" id="main-body" style="padding-top: 15%;background-repeat: no-repeat;
    background-size: cover;color:white;background-color: rgba(0, 0, 0, 0.616);">

			<div>
				<form style="width:60%" class="form" action="loginForm" method="post" onsubmit="return validatelogin()">

					<h4 align='center'>
						<strong style="color: white">User Login Form</strong>
					</h4>
					<hr>
					<div class="form-group">
						<i class="fa fa-envelope fa-lg me-3 fa-fw"></i>
						<label>Email :</label> <input id="login-email" type="email" name="email"><br>
					</div>
					<div class="form-group">
						<i class="fa fa-lock fa-lg me-3 fa-fw"></i>
						<label>Password :</label> <input id="login-password" type="password" name="password"><br>
						<div id="message"></div>
					</div>
					<div class="form-group">
						<button type="submit" class="btn btn-primary" onclick="validateCred()">Sign In</button>
					</div>
				</form>
			</div>

			<br>
			<div style="margin-left: 20%;">
				<h6 id="registrationSuccessMessage">${message}</h6>
				<h6 id="loginErrMsg">${errorKey}</h6>
			</div>
			
		</div>




	</body>

	</html>
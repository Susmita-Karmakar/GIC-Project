<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
@import url("UploadProject.css");

body {
	background-image: url("laptop.jpg");
}
</style>
<link rel="stylesheet" type="text/css"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<title>Upload Project</title>
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
				<li><a href="home" class="btn-1"><span><i
							class="fa fa-home"></i>&nbsp</span>Home</a></li>
				<li><a href="loginForm" class="btn-1"><span><i
							class="fa fa-user"></i>&nbsp</span>Login</a></li>
				<li><a href="FAQ" class="btn-1"><span><i
							class="fa fa-question"></i>&nbsp</span>FAQs</a></li>
				<li><a href="about" class="btn-1"><span><i
							class="fa fa-info"></i>&nbsp</span>About Us</a></li>
				<li><a href="contact" class="btn-1"><span><i
							class="fa fa-phone"></i>&nbsp</span>Contact Us</a></li>
			</ul>
		</div>
	</nav>

	<div id="main-body"
		style="height: 45vw; padding-top: 10%; background-repeat: no-repeat; background-size: cover; color: white; background-color: rgba(0, 0, 0, 0.616);">

		<form class="form" action="projectUpload" method="post"
			style="width: 60%; padding: 20px 40px; margin-left: 20%;">
			<h4 align='center'>
				<strong style="color: white;">Upload Project here.</strong>
			</h4>
			<hr>
			<div class="form-group">
				<i class="fa fa-tasks fa-lg me-3 fa-fw"></i> <label>Project
					Name :</label> <input type="text" id="projectName" name="projectName"
					minlength="3" maxlength="30" required="required"><br>
			</div>
			<div class="form-group">
				<i class="fa fa-calendar fa-lg me-3 fa-fw"></i> <label>Start
					Date :</label> <input type="date" id="startDate" name="startDate"
					required="required"><br>
			</div>
			<div class="form-group">
				<i class="fa fa-calendar fa-lg me-3 fa-fw"></i> <label>End
					Date :</label> <input type="date" id="endDate" name="endDate"
					required="required"><br>
			</div>


			<div class="form-group">
				<button type="reset" class="btn btn-primary">Reset</button>
				<button type="submit" class="btn btn-success">Submit</button>
			</div>
	</div>

	</form>
	<br>
	<br>

	</div>
</body>

</html>
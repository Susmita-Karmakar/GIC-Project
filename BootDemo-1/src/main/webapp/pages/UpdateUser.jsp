<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
<p>${updatemessage}</p>

<form class="form" action="updateUserData" method="post">

<div class="form-group">
			<label>id :</label> <input type="text" name="id" value="${userKey.id}" readonly="readonly"><br>
		</div>
		<div class="form-group">
			<label>Name :</label> <input type="text" name="name"
				value="${userKey.name}" readonly="readonly"><br>
		</div>
		<div class="form-group">
			<label>Date of Birth :</label> <input type="date" name="dob" value="${userKey.dob}"><br>
		</div>
		<div class="form-group">
			<label>Address :</label>
			<textarea name="address" id="" cols="30" rows="10" value="${userKey.address}"></textarea>
		</div>
		<br> <br>
		<div class="form-group">
			<label>Phone number :</label> <input type="number" name="phoneNumber" value="${userKey.phoneNumber}"><br>
		</div>
		<div class="form-group">
			<label>Email :</label> <input type="email" name="email" value="${userKey.email}" readonly="readonly">><br>
		</div>
		<div class="form-group">
			<label>Password :</label> <input type="password" name="password" value="${userKey.password}" readonly="readonly">><br>
		</div>
		
		<div class="form-group">
			<button type="reset" class="btn btn-primary">Reset</button>
			<button type="submit" class="btn btn-success">Submit</button>
		</div>
	</form>

</body>
</html>
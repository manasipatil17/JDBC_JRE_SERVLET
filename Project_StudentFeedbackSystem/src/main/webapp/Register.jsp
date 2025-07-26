<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register here</title>
</head>
<body>
	<div class="form-container">
		<h2>Student Registration Form</h2>
		<form action="registerForm" method="post" enctype="multipart/form-data">
			<label for="name">Name:</label>
			 <input type="text" id="name" name="name" required /> 
			 <label for="course">Course:</label>
			 <select id="course" name="course" required>
				<option value="">--Select--</option>
				<option value="Java Full Stack">Java Full Stack</option>
				<option value="Python Full Stack">Python Full Stack</option>
				<option value="MERN Stack">MERN Stack</option>
				<option value=".NET Full Stack">.NET Full Stack</option>
				<option value="other">Other</option>
			</select> <label for="gender">Gender:</label> <select id="gender"
				name="gender" required>
				<option value="">--Select--</option>
				<option value="male">Male</option>
				<option value="female">Female</option>
				<option value="other">Other</option>
			</select> <label for="phone">Phone Number:</label> <input type="tel"
				id="phone" name="phone" required /> <label for="email">Email:</label>
			<input type="email" id="email" name="email" required /> 
			<label
				for="pass">Password:</label> <input type="password" id="pass"
				name="pass" required />
<label>Profile Photo: </label>
<input type="file" name="photo" accept="image/*" required/>
			<button type="submit">Register</button>
		</form>
	</div>

</body>
</html>
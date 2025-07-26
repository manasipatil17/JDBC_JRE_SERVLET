<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register here</title>
<link rel="stylesheet" href="Style.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>
	<div class="form-container form-control">
		<h2 class="mb-3 mt-3">Student Registration Form</h2>
		<form action="registerForm" method="post" enctype="multipart/form-data">
		
		<div class="mb-3">
			<label for="name" class="form-label">Name:</label>
			 <input type="text" id="name" name="name" class="form-control" placeholder="Enter Name"required /> 
			 </div>
			 <div class="mb-3">
			 <label for="course" class="form-label">Course:</label>
			 <select id="course" name="course" class="form-control" required>
				<option value="">--Select--</option>
				<option value="Java Full Stack">Java Full Stack</option>
				<option value="Python Full Stack">Python Full Stack</option>
				<option value="MERN Stack">MERN Stack</option>
				<option value=".NET Full Stack">.NET Full Stack</option>
				<option value="other">Other</option>
			</select> 
			</div>
			<div class="mb-3">
			<label for="gender" class="form-label">Gender:</label>
			 <select id="gender" name="gender" class="form-control" required>
				<option value="">--Select--</option>
				<option value="male">Male</option>
				<option value="female">Female</option>
				<option value="other">Other</option>
			</select>
			</div>
			<div class="mb-3">
			 <label for="phone" class="form-label">Phone Number:</label>
			  <input type="tel"	id="phone" name="phone" class="form-control" required />
			  <div class="mb-3">
			   <label for="email" class="form-label">Email:</label>
			<input type="email" id="email" name="email" class="form-control" required /> 
			</div>
			<div class="mb-3" >
			<label for="pass" class="form-label">Password:</label>
			 <input type="password" id="pass" name="pass" class="form-control" required />
             </div>
             <div class="mb-3">
             <label class="form-label">Profile Photo: </label>
             <input type="file" name="photo" accept="image/*" class="form-control" required/>
             <div class="mb-3 d-grid mt-3">
			<button type="submit" class="btn btn-primary w-100">Register</button>
		</form>
	</div>

</body>
</html>
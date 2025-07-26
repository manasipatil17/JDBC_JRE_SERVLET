<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login here</title>
<link rel="stylesheet" href="Style.css">
<link rel="stylesheet" href="css/bootstrap.min.css">

</head>
<body>
<form action="login" method="post" class=" form-container">
<h2>Login Here</h2>
<label class="form-label">Enter Email</label>
<input type="text" placeholder="Email" name="email" class="form-control mb-3">

<label class="form-label">Enter Password</label>
<input type="password" placeholder="password" name="pass" class="form-control mb-3">

<button type="submit" class="d-grid mt-3 btn btn-primary form-control ">Login</button>


</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
    if (session.getAttribute("id") == null) {
        response.sendRedirect("Login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Dashboard</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <style>
        .profile-img {
            width: 100px;
            height: 100px;
            object-fit: cover;
            border-radius: 50%;
            border: 2px solid #007bff;
        }
    </style>
</head>
<body>
<div class="container mt-4">
    <div class="card">
        <div class="card-body text-center">
            <h3>Welcome, ${sessionScope.name}</h3>
            <img src="${sessionScope.photo}" alt="Profile Photo" class="profile-img mb-3" />
            <h4>Student ID :  ${sessionScope.id}</h4>
            <h4>Name :  ${sessionScope.name}</h4>
            <h4>Course :  ${sessionScope.course}</h4>
            <h4>Gender :  ${sessionScope.gender}</h4>
            <h4>Contact No. :  ${sessionScope.phone}</h4>
            <h4>Email :  ${sessionScope.email}</h4>
            
            <div>
                <a href="feedback.jsp" class="btn btn-success me-2">Give Feedback</a>
                <a href="Login.jsp" class="btn btn-danger">Logout</a>
            </div>
        </div>
    </div>
</div>
</body>
</html>

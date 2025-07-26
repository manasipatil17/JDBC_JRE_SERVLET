<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Feedbacks</title>
<link rel="stylesheet" href="css/bootstrap.min.css">

</head>
<body>
<div class="container mt-5">
<h2 class="mb-4">Student Feedback List</h2>
<table class="table table-bordered table-hover">
<thead class="table-dark">
<tr>
<th>Id</th>
<th>Photo</th>
<th>Name</th>
<th>Email</th>
<th>Feedback</th>
<th>Date</th>
</tr>
</thead>

<tbody>
<c:forEach var="fb" items="${feedbackList}">
                <tr>
                   <td><c:out value="${fb.id}" /></td>
                    <td>
                        <img src="${fb.profile_photo}" alt="Profile" width="50" height="50" style="border-radius: 50%;">
                    </td>
                    <td><c:out value="${fb.name}" /></td>
                    <td><c:out value="${fb.email}" /></td>
                    <td><c:out value="${fb.feedback_text}" /></td>
                    <td><c:out value="${fb.date_submitted}" /></td>
                </tr>
            </c:forEach>
        
</tbody>
</table>

</div>
</body>
</html>
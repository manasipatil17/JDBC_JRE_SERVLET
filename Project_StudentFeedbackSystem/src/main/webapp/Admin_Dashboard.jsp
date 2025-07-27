<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ page import="java.util.*" %>
<%
    List<Map<String, Object>> feedbackList = (List<Map<String, Object>>) request.getAttribute("feedbackList");
%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Feedbacks</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="Style.css">
</head>
<body>
<div class="container mt-5">
<h2 class="mb-4">Student Feedback List</h2>
<table class="table table-bordered table-hover">
<thead class="table-dark">
<tr>
<!-- <th>Id</th>  -->
<th>Photo</th>
<th>Name</th>
<th>Email</th>
<th>Feedback</th>
<th>Date</th>
</tr>
</thead>

<tbody>
<%
    if (feedbackList != null && !feedbackList.isEmpty()) {
        for (Map<String, Object> fb : feedbackList) {
%>
    <tr>
       <!-- <td><%= fb.get("id") %></td>  --> 
        <td><img src="<%= request.getContextPath() + "/" + fb.get("profile_photo") %>" width="50" height="50" style="border-radius: 50%;" /></td>
        <td><%= fb.get("name") %></td>
        <td><%= fb.get("email") %></td>
        <td><%= fb.get("feedback_text") %></td>
        <td><%= fb.get("date_submitted") %></td>
    </tr>
<%
        }
    } else {
%>
    <tr><td colspan="6">No feedback available</td></tr>
<%
    }
%></tbody>
</table>
           <div>
                
                <a href="Login.jsp" class="btn btn-danger">Logout</a>
            </div>
</div>
</body>
</html>
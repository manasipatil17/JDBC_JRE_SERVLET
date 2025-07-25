<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<%
for(int i=1;i<=5;i++){
%>	
<h1>Welcome to the kiran academy <%= i %></h1>
<%
}
%>
<!-- Dynamic JSP  -->
<h1>Welcome</h1>
<form action="index.jsp" method="post">
<label>Name : </label>
<input type="text" placeholder="Enter name" name="name"> 
<br><br>
<label>Age : </label>
<input type="number" placeholder="Enter age" name="age"> 
<br><br>
<label>City : </label>
<input type="text" placeholder="Enter city name" name="city"> 
<br><br>
<button>Submit</button>
</form>

<h1>Information</h1>
<%
String name=request.getParameter("name");
String age= request.getParameter("age");
String city=request.getParameter("city");
%>

<%
System.out.println(name);
System.out.println(age);
System.out.println(city);

out.println(name);
out.println(age);
out.println(city);
%>

Name : <%=name%>
Age : <%=age%>
City : <%=city%>
</body>
</html>
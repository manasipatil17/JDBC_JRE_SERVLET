<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
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

//out.println(name);
//out.println(age);
//out.println(city);
%>

 Name : <%=name%><br>
Age : <%=age%><br>
City : <%=city%>  
</body>
</html>
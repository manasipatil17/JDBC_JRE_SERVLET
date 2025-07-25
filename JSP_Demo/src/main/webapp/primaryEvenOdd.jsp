<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Primary Even Odd </title>
<link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>
<h1 class="col-md-6 mx-auto">1 to 50 Primary, Even, Odd Numbers</h1>
<div class="row text-center mt-5">
<div class="col-md-4 mx-auto">
<h3>Prime Numbers</h3>
<%

for(int i=1;i<=50;i++){
	int count=0;
	for(int j=1;j<=i;j++){
		if(i%j==0){
			count++;
		}
	}
	if(count==2){%>
		
		<h4><%= i %></h4>
	<% }
}
%>

</div>
<div class="col-md-4 mx-auto">

<h3>Even Numbers</h3>
<%

for(int i=1;i<=50;i++){
	if(i%2==0){
%>
		<h4><%= i %></h4>
	<% }
}
%>

</div>
<div class="col-md-4 mx-auto">

<h3>Odd Numbers</h3>
<%

for(int i=1;i<=50;i++){
	if(i%2!=0){
%>
		<h4><%= i %></h4>
	<% }
}
%>

</div>
</div>
</body>
</html>
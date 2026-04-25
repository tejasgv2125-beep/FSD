<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Displaying Date | Time | IP Adress of the System</title>
</head>
<body>
<h1 style="color:blue">HEllO SNPSU</h1>
<h2 style="color:orange">IP Adress OF My Machine</h2>
<% out.println("Your IP Address is:"+request.getRemoteAddr());  %>
<p>Todays Date is: <%= new java.util.Date().toLocaleString() %></p>

</body>
</html>
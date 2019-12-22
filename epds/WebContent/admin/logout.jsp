<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Logout</title>
</head>
<body>
<h1 style="text-align: center;color: green;">Successfully Logged Out</h1>
<%
session.invalidate();
response.setHeader("Refresh", "2;url=../homePage/homePage.jsp"); 
%>
</body>
</html>
<%@page import="jspCrud.bean.Login"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Login success</h1>
<% 
	Login log = (Login)request.getAttribute("log");


	out.print("Welcome Ravi"+log.getName());
%>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="jspCrud.bean.RegisterDao" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="obj" class="jspCrud.bean.User" />
<jsp:setProperty property="*" name="obj"/>
<% 
int status=RegisterDao.register(obj);
if(status>0){
	out.print("You hav Succefully registerd");
}
%>

<a href="login.jsp">Click to Login</a>
</body>
</html>
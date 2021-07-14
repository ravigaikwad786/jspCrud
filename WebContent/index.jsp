<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Welcome to jsp crud</h1>



<table>
<form action="process.jsp" method="get">
<tr><td>Name</td><td><input type="text" name="uname"  onclick="this.value=/"> </td></tr>
<tr><td>Last Name</td><td><input type="text" name="lname"  onclick="this.value=/"> </td></tr>
<tr><td>Email</td><td><input type="text" name="email"  onclick="this.value=/"> </td></tr>
<tr><td>Password</td><td><input type="text" name="pass"  onclick="this.value=/"> </td></tr>
<tr><td><input type="submit"></td><td><input type="reset"> </td></tr>
</form>
</table>



</body>
</html>
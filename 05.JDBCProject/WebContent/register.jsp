<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<title> JSP/Servlet </title>
</head>

<body>
<h1>Register</h1>
<hr>

<form action="registerProc.jsp">
	id : <input type="text" name="id"> <br>
	
	password : <input type="password" name="pwd"> <br>
	
	name : <input type="text" name="name"> <br>
	
	age : <input type="text" name="age"> <br>
	
	gender : <input type="radio" name="gender" value = "m"> man
	<input type="radio" name="gender" value = "w"> woman <br>
	
	address : <input type="text" name="address"> <br>
	
	<input type="submit" value="register">
</form>
</body>
</html>
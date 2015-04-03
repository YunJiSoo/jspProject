<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
		<title>application 객체</title>
</head>

<body>
<h1>application 객체</h1>
<hr>
<table border="1">
	<tr>
		<td>getServerInfo()</td>
		<td><%= application.getServerInfo() %>
	</tr>
	<tr>
		<td>getContextPath()</td>
		<td><%= application.getContextPath() %>
	</tr>
	<tr>
		<td>getRealPath()</td>
		<td><%= application.getRealPath(".") %>
	</tr>
</table>	
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
		<title>JSP/Servlet Example</title>
</head>

<body>
<h1>request 객체</h1>
<hr>
<table border="1">
	<tr>
		<td>getContextPath()</td>
		<td><%=request.getContextPath() %></td>
	<tr>
		<td>getMethod()</td>
		<td><%=request.getMethod() %></td>
	<tr>
		<td>getRequestURL()</td>
		<td><%=request.getRequestURL() %></td>
	<tr>
		<td>getRequestURI()</td>
		<td><%=request.getRequestURI() %></td>
	<tr>
		<td>getRemoteHost()</td>
		<td><%=request.getRemoteHost() %></td>
	<tr>
		<td>getRemoteAddr()</td>
		<td><%=request.getRemoteAddr() %></td>
	<tr>
		<td>getServerName()</td>
		<td><%=request.getServerName() %></td>
	<tr>
		<td>getProtocol()</td>
		<td><%=request.getProtocol() %></td>
</table>
</body>
</html>
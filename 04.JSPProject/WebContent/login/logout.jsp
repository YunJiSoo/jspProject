<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	session.removeAttribute("loginID");
	//session의 loginID를 지움

	session.invalidate();
	//session 초기화 (loginID뿐만아니라 session 영역의 초기화)
	
	response.sendRedirect("main.jsp");
%>
<!DOCTYPE html>
<html>
<head>
	<title> JSP/Servlet </title>
</head>

<body>
</body>
</html>
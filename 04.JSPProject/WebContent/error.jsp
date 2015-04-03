<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ page isErrorPage="true" %>	<!-- 이게 없으면 에러페이지로 사용할 수 없다 -->
<!DOCTYPE html>

<html>
<head>
		<title>JSP/Servlet Example</title>
</head>

<body>
	<h1>Error!!!!!!!!!!!!!!!!!!!!!!!!</h1>
	<%=exception.getMessage() %>	<!-- 에러가 난 이유를 알려줌 -->
</body>
</html>
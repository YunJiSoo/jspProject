<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<title> JSP/Servlet </title>
</head>

<body>

</body>

<h1> <font color="hotpink"> 환영합니다. </font> </h1>

<%
	String id = (String) session.getAttribute("loginID");
%>

<%
	if(id != null ) {
%>

<font color="black"> <%=id %>님 환영합니다!! </font>

<form action="logout.jsp">
	<input type="submit" value="로그아웃">
</form>

<a href="logout.jsp">로그아웃</a>
<%
	}
	else {
		out.print("로그인 페이지로 이동합니다.");
		response.sendRedirect("loginForm.jsp");
	}
%>


</html>
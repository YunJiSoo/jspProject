<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%

	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	if(id.equals("test") && pwd.equals("1234")) {
		out.print("로그인 성공");
		
		session.setAttribute("loginID", id);
		//session 영역에 loginID라는 이름으로 id값을 저장한다.
		//이후 main에서 이 값을 받아 "~님 환영합니다" 라는 문구를 출력한다.
		//session 영역에 저장하는것은 로그인시 그 정보를 유지하기위해
		
		response.sendRedirect("main.jsp");
	}else{
		out.print("로그인 실패");
		response.sendRedirect("loginForm.jsp");
	}
%>

<!DOCTYPE html>
<html>
<head>
	<title> JSP/Servlet </title>
</head>

<body>

</body>
</html>
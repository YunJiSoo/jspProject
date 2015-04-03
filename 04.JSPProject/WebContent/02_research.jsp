<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
		<title>설문 조사 결과</title>
</head>

<body>
<h2>설문 조사 결과</h2> 
<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	out.print("이름 : " + name + "<br>");
	String gender = request.getParameter("gender");
	if(gender.equals("man")){
		/* out.print("당신의 성별은 남자<br>"); */
		response.sendRedirect("http://www.naver.com");
	}else{
		/* out.print("당신의 성별은 여자<br>"); */
		response.sendRedirect("http://www.google.com");
	}
	
	String season[]=request.getParameterValues("season");
	out.print("당신이 좋아하는 계절은 ");
	for(String s : season){
		out.print(s);
		out.print(", ");
	}
	




%>
</body>
</html>
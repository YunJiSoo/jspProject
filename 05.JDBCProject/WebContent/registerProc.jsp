<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	//out.print(id);

	//1. JDBC 드라이버 로드
	Class.forName("oracle.jdbc.driver.OracleDriver");
	
	//2. 데이터 베이스와 연결(우클릭후 connect 선택한 것과 같음)
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","jspuserc","jsp1234");
	
	//3. SQL문 실행
	String sql = "insert into member values('" + id +"','" + pwd + "','지수', 22, '2', '부천시', '2015-04-17')";
	Statement stmt = con.createStatement();	//insert문으로써 역할을 할 수 있게 해주는 것
	int result = stmt.executeUpdate(sql);	//executeUpdate = 적용된 행 보여줌
	
	out.print(result);
	
	//4. 데이터베이스와 연결 끊음
%>
<!DOCTYPE html>
<html>
<head>
	<title> JSP/Servlet </title>
</head>

<body>

</body>
</html>
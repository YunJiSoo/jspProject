<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%
	//----------------------------------------------------
	//회원가입
	//----------------------------------------------------
	
	// 0. 요청처리
	String id = request.getParameter("id");
	String pass = request.getParameter("pwd");
	
	/*C:\oraclexe\app\oracle\product\11.2.0\server\jdbc\lib\ojdbc6를
	05.JDBCProject의 WebContent-lib에 드래그래서 복사
	Project탭 - property - build path - 똑같은경로 external로 추가
	05.JDBCProject의 libraries - ojdbc6.jar - oracle.jdbc.driver - OracleDriver.class확인*/
	
	// 1. JDBC 드라이버 로드
	Class.forName("oracle.jdbc.driver.OracleDriver"); //드라이버 로드 명령어
	
	
	// 2. 데이터 베이스 연결
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "jspuserd", "jsp1234");
	
	
	// 3. SQL문 실행
	String sql = "insert into member values('" + id + "', '" + pass + "', '홍길동', 20, 1, '서울시', default)";
	Statement stmt = con.createStatement();

	int result = stmt.executeUpdate(sql);
	//sql의 excute txt와 같은역할을 한다.
	
	if(result==0)
		out.print("회원가입 실패");
	else
		out.print("회원가입 성공");
	
	// 4. 데이터베이스 언커넥션
	stmt.close();
	con.close();

	//실행 후 sql에서 확인하면 데이터가 들어간 것을 볼 수 있다.
%>



<!DOCTYPE html>
<html>
<head>
	<title> JSP/Servlet </title>
</head>

<body>

</body>
</html>
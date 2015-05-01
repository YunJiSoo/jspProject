<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	//요청처리
	// request.setCharacterEncoding("UTF-8"); // POST 방식일때 한글처리
	
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	String gender = request.getParameter("gender");
	String address = request.getParameter("address");
	
	//out.print(id);

	//1. JDBC 드라이버 로드
	Class.forName("oracle.jdbc.driver.OracleDriver");
	
	//2. 데이터 베이스와 연결(우클릭후 connect 선택한 것과 같음)
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","jspuserc","jsp1234");
	
	//3. SQL문 실행
	//1) Statement 객체 이용
	/* String sql = "insert into member values('" + id +"','" + pwd + "','지수', 22, '2', '부천시', '2015-04-17')";
	Statement stmt = con.createStatement();	//insert문으로써 역할을 할 수 있게 해주는 것
	int result = stmt.executeUpdate(sql);	//executeUpdate = 적용된 행 보여줌
	
	out.print(result);
	 */
	 
	 //2) PreparedStatement 객체 이용
	 String sql = "insert into member values(?,?,?,?,?,?,default)";
	 PreparedStatement pstmt = con.prepareStatement(sql);
	 
	 //바인딩(물음표랑 가져온 값을 매칭)
	 pstmt.setString(1,id); //첫번째 물음표, id 매핑
	 pstmt.setString(2,pwd); 
	 pstmt.setString(3,name);
	 pstmt.setInt(4, Integer.parseInt(age));
	 pstmt.setString(5,gender);
	 pstmt.setString(6,address);
	 
	 int result = pstmt.executeUpdate();
	
	 //4. 데이터베이스와 연결 끊음
	 pstmt.close();
	 con.close();
	
%>
<!DOCTYPE html>
<html>
<head>
	<title> JSP/Servlet </title>
</head>

<body>

</body>
</html>
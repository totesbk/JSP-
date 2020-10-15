<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%! 
	Connection conn = null;
	PreparedStatement psmt = null;
	
	String url = "jdbc:oracle:thin:@192.168.0.136:1521:XE";
	String uid = "STU007";
	String upw = "1234";	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");

String name = request.getParameter("name");
String userid = request.getParameter("userid");
String userpwd = request.getParameter("userpwd");
String email = request.getParameter("email");
String phone = request.getParameter("phone");
int admin = Integer.parseInt(request.getParameter("admin"));


String sql = "INSERT INTO member VALUES(?,?,?,?,?,?)";
	try{ //데이터베이스 연걸+ 쿼리전송
		//1.
		Class.forName("oracle.jdbc.driver.OracleDriver");
		//2.
		conn = DriverManager.getConnection(url,uid,upw);
		//3.
		psmt = conn.prepareStatement(sql);
		//3.5
		psmt.setString(1,name);
		psmt.setString(2,userid);
		psmt.setString(3,userpwd);
		psmt.setString(4,email);
		psmt.setString(5,phone);
		psmt.setInt(6,admin);
		
		
		//4.
		int num = psmt.executeUpdate();
		
		System.out.println("데이터 전송 완료");
		
}catch(Exception e){
	e.printStackTrace();
}finally{
	try{
		if(psmt != null)psmt.close();
		if(conn != null)conn.close();
	}catch(Exception e){
		e.printStackTrace();
	}
}
%>
<h3>회원 가입 성공!</h3>
<a href="ex04_select.jsp">회원 목록 페이지</a>
</body>
</html>
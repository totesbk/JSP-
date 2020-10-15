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
String upw= "1234";
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String name = "강길동";
String userid = "kang";
String userpwd = "1234";
String email = "kang@naver.com";
String phone = "010-2339-0104";
int admin=0;

String sql = "INSERT INTO member VALUES (?,?,?,?,?,?)";

	try{
		//1단계
		Class.forName("oracle.jdbc.driver.OracleDriver");
		//2단계
		conn = DriverManager.getConnection(url,uid,upw);
		//3단계
		psmt = conn.prepareStatement(sql);
		//4단계
		psmt.setString(1,name);
		psmt.setString(2,userid);
		psmt.setString(3,userpwd);
		psmt.setString(4,email);
		psmt.setString(5,phone);
		psmt.setInt(6,admin);
		
		psmt.executeUpdate(); //sql문을 넣지 않는다.
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
</body>
</html>
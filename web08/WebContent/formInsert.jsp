<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
Connection conn = null;
PreparedStatement pstm = null;

String url = "jdbc:oracle:thin:@192.168.0.136:1521:XE";
String uid = "STU015";
String upw = "1234";
%>

<%
String name = request.getParameter("name");
String userid = request.getParameter("userid");
String userpwd = request.getParameter("userpwd");
String email = request.getParameter("email");
String phone = request.getParameter("phone");
int admin = Integer.parseInt(request.getParameter("admin"));

String sql = "INSERT INTO member VALUES(?,?,?,?,?,?)";
	
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		conn = DriverManager.getConnection(url, uid, upw);
		
		pstm = conn.prepareStatement(sql);
		
		pstm.setString(1,name);
		pstm.setString(2,userid);
		pstm.setString(3,userpwd);
		pstm.setString(4,email);
		pstm.setString(5,phone);
		pstm.setInt(6,admin);
		
		pstm.executeUpdate();
		
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		try{
			if(pstm != null) pstm.close();
			if(conn != null) conn.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
%>
<jsp:forward page="formSelect.jsp"></jsp:forward>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>
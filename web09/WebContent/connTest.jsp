<%@page import="java.sql.Connection"%>
<%@page import="com.green.vo.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	MemberDAO dao = MemberDAO.getInstance();
	Connection conn = dao.getConnection();
	if(conn != null){
		out.println("DBCP 연동 성공");
	}else{
		out.println("DBCP 연동 실패");
	}
%>
</body>
</html>
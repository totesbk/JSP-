<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
String id = "asdf";
String pwd = "1234";
String name = "김길상";

String userid = request.getParameter("userid");
String userpwd = request.getParameter("userpwd");

if(id.equals(userid)&& pwd.equals(userpwd)){//로그인성공
	response.sendRedirect("ex04_main.jsp?name="+name);
}else{//로그인실패
	response.sendRedirect("ex04_loginFail.html");
}
%>
</body>
</html>
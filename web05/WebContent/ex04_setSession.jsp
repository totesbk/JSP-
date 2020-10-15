<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>세션에 값 설정</h3>
<%
session.setAttribute("id","hong");
session.setAttribute("pwd","test1234");
session.setAttribute("age",25);
%>
<a href="ex04_getSession.jsp">세션 정보확인</a>
</body>
</html>
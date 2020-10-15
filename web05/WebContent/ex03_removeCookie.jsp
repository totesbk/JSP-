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
Cookie c = new Cookie("id","ljsdfj");
c.setMaxAge(0);
response.addCookie(c);
%>
<a href="ex02_getCookie.jsp">쿠키 삭제 확인</a>
</body>
</html>.
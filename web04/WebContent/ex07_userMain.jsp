<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.net.URLDecoder" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="lime">
<h3>고객 화면</h3>
<%=URLDecoder.decode(request.getParameter("name"),"UTF-8") %>님 환영합니다.
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>입력된 값 출력</h3>
1. 표현식<br>
아이디 : <%=request.getParameter("userId") %><br>
비밀번호 : <%=request.getParameter("userPwd") %><br>
<br>
2. EL 표기법
ID : ${param.userId}<br>
PW : ${param.userPwd}<br>
</body>
</html>

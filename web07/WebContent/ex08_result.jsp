<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>request에 저자오딘 자바빈 프로퍼티 꺼내 보기</h2>
<hr>
이름 : ${member["userName"]}<br>
아이디 : ${requestScope.member.userId}<br>
</body>
</html>
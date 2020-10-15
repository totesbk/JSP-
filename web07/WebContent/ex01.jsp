<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- HTML으로 출력하는 방법 -->
<h3> 1번째 스크립트릿을 이용하는 방법 </h3>
<% out.print("안녕하세요."); %>

<h3> 2번째 표현식을 이용하는 방법</h3>
<%="안녕하세요." %>

<h3> 3번째 EL 표기법을 이용하는 방법</h3>
${"안녕하세요."}





</body>
</html>
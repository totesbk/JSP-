<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
표헌식- 이름 : <%=request.getParameter("name") %><br>
표현언어- 이름 : ${param.name}<br>
<hr>
<h3>표현식</h3>
== 연산자 사용결과:<%=request.getParameter("name")=="홍길동" %><br>
== 연산자 사용결과:<%=request.getParameter("name").equals("홍길동") %><br>
<hr>
<h3>표현언어</h3>
== 연산자 사용 결과 : ${param.name=="홍길동"}<br>



</body>
</html>
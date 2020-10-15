<%@page import="web07.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:set var="msg">
	Hello
</c:set>
msg = ${msg} <!-- <c:out value="msg"/>두개같은거 --> 
<br>
<c:set var="num1" value="30"/>
num1 = ${num1}<br>

<c:set var="member" value="<%=new Member() %>"/>
<c:set target="${member}" property="userName" value="서상우"/>
<c:set target="${member}" property="userId">
	Seosangwoo
</c:set>
이름 = ${member["userName"]}<br>
아이디 = ${member.userId}<br>
<hr>
<c:set var="add" value="${10+20}"/>
합계 = ${add }<br>
<c:set var="bool" value="${10>20}"/>
10 > 20 = ${bool }<br>

<c:set var="test" value="테스트"/>
테스트 값1 = ${test }<br>
<c:remove var="test"/>
테스트 값2 = ${test }<br>



</body>
</html>
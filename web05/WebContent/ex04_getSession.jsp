<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>세션에 저장된 값 읽어 오기</h3>
<%
String id = (String)session.getAttribute("id");
String pwd = (String)session.getAttribute("pwd");
Integer age = (Integer)session.getAttribute("age");

%>
아이디 : <%=id %><br>
비밀번호 : <%=pwd %><br>
나이 : <%=age %><br>

<a href="ex04_getSessionAll.jsp">세션의 모든 값 가져오기</a>
</body>
</html>
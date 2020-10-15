<%@page import="com.naved.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--[스크립트릿]자바 빈 생성 session -->
<%
Member m1 = new Member();
m1.setName("고길동");
session.setAttribute("member01",m1);
%>
이름 : <%=m1.getName() %><br>
<hr>
<h2>[액션태그]자바 빈 생성 session</h2>
<jsp:useBean class="com.naved.Member" id="m2" scope="session"/>
<jsp:setProperty property="name" name="m2" value="박정자"/>

이름 : <jsp:getProperty property="name" name="m2"/><br>
</body>
</html>
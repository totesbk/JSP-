<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.naved.Member" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
   com.naved.Member m1 = new com.naved.Member();
//  패캐지명 . 클래스명 참조변수
session.setAttribute("m1",m1);

Member m2 = new Member();

m1.setName("김철수");
m2.setUserid("kim");
%>

이름:<%=m1.getName() %><br>
아이디:<%=m1.getUserid() %><br>


	<jsp:useBean class="com.naved.Member" id="m3" scope="session"></jsp:useBean>
</body>
</html>
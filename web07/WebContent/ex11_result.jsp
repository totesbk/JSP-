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
<jsp:useBean class="web07.Color" id="color" scope="session"/>
${param.color == 1}<br>
${param.color == 2}<br>
${param.color == 3}<br>
<c:if test="${param.color == 1}">
	<span style="color:red;"><strong>빨강</strong></span>
</c:if>
<c:if test="${param.color == 2}">
	<span style="color:yellow;"><strong>노랑</strong></span>
</c:if>
<c:if test="${param.color == 3}">
	<span style="color:green;"><strong>초록</strong></span>
</c:if>
<%
String color1 = request.getParameter("1");
String color2 = request.getParameter("2");
String color3 = request.getParameter("3");

%>
색1 : <jsp:getProperty name="color" property="color1" /><br>
색2 : <jsp:getProperty name="color" property="color2" /><br>
색3 : <jsp:getProperty name="color" property="color3" /><br>
</body>
</html>
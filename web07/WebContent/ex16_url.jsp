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
<c:url value="PIC/ssw.jpg" var="pic"></c:url>
<h3>${pic}</h3>
<hr>
<img alt="산" src="${pic}" width="150" height="150">
</body>
</html>
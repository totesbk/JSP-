<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="red">
<h3>포워드 방식으로 이동된 페이지</h3>
이름 : <%=request.getParameter("name") %>
나이 : <%=request.getParameter("age") %>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>Post 방식에서 한글 깨짐 방지</h3>
<%
request.setCharacterEncoding("UTF-8");
%>
이름 : <%=request.getParameter("name") %>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%=session.getAttribute("userName") %>
(<%=session.getAttribute("userId") %>)님 안녕하세요<br>
저희 홈페이지에 방문해 주셔셔 감사합니다.<br>
오늘도 즐거운 하루 되세요.<br>

<form action="logout.jsp" method="POST">
	<input type="submit" value="로그아웃">
	
</form>
</body>
</html>
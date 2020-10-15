<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="ex03_result.jsp" method="POST">
	<label for="userId">아이디 : </label>
	<input type="text" name="userId" ud="userId"><br>
	<label for="userPwd">비밀번호 : </label>
	<input type="password" name="userPwd" ud="userPwd">
	
	<input type="submit" value="로그인">
</form>
</body>
</html>
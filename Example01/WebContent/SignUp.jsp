<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>회원가입 페이지</h2>
<hr>
<form action="SaveInfo.jsp" method="POST">
	<label for="savedid">아이디 : </label>
	<input type="text" name="savedid" id="savedid"><br>
	<label for="savedpwd">비밀번호 : </label>
	<input type="password" name="savedpwd" id="savedpwd"><br>
	<label for="savedname">이름 : </label>
	<input type="text" name="savedname" id="savedname"><br>
	<input type="submit" value="회원가입">
	<input type="reset" value="재입력">
</form>
</body>
</html>
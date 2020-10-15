<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="ex04_addMemberResult.jsp" method="POST">
	<label for="name">이름 : </label>
	<input type="text" name="name" id="name"><br>

	<label for="id">아이디 : </label>
	<input type="text" name="id" id="id"><br>

	<label for="nickname">닉네임 : </label>
	<input type="text" name="nickname" id="nickname"><br>

	<label for="pw">비밀번호 : </label>
	<input type="password" name="pw" id="pw"><br>

	<label for="email">이메일 : </label>
	<input type="email" name="email" id="email"><br>

	<label for="phone">전화번호 : </label>
	<input type="tel" name="phone" id="phone"><br>
	
	<input type="submit" value="전송">
	<input type="reset" value="취소">

	
</form>
</body>
</html>
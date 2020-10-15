<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>로그인 페이지</h2>
<hr>
<form action="ChkLogin.jsp" method="POST">
	<label for="userid">ID : </label>
	<input type="text" name="userid" id="userid"><br>
	<label for="userpwd">PW : </label>
	<input type="password" name="userpwd" id="userpwd"><br>
	<input type="submit" value="로그인">
	<input type="button" value="회원가입" onclick="signUp()">
</form>
<script>
	function signUp(){
		location.href="SignUp.jsp";
	}
	
</script>
</body>
</html>
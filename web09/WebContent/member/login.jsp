<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 관리</title>
<script type="text/javascript" src="script/member.js"></script>
</head>
<body>
<h2>로그인 페이지</h2>
<hr>
<form action="login.do" method="POST" name="frm">
	<table>
		<tr>
			<td>아이디</td>
			<td><input type="text" name="userid" value="${userid}"></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type="password" name="userpwd" value="${userpwd}"></td>
		</tr>	
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="로그인" onclick="return loginCheck()">&nbsp;&nbsp;
				<input type="reset" value="취소">&nbsp;&nbsp;
				<input type="button" value="회원가입" onclick="location.href='join.do'">&nbsp;&nbsp;
			</td>
		</tr>
		<tr>
			<td colspan="2">${message}</td>
		</tr>
	</table>
</form>

</body>
</html>
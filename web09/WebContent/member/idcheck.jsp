<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 중복 체크</title>
</head>
<body>
<h2>아이디 중복 체크</h2>
<script type="text/javascript" src="script/member.js"></script>
<form action="idCheck.do" method="GET" name="frm">
	아이디<input type="text" name="userid" value="${userid}">
	<input type="submit" value="중복 체크"><br>
	<c:if test="${result==1}"><!-- 중복된 아이디가 있다. -->	
		<script type="text/javascript">
			opener.document.frm.userid.value="";
		</script>
		${userid}는 중복된 아이디입니다.
	</c:if>
	<c:if test="${result==-1}"><!-- 중복된 아이디가 없다. -->	
		${userid}는 사용가능한 아이디 입니다.
		<input type="button" value="사용" class="cancel" onclick="idok('${userid}')">
	</c:if>
</form>
<br>
</body>
</html>

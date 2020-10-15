<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>702 homepage!</title>
</head>
<body>
<%
if(session.getAttribute("loginId")==null){
	//로그인아직안함
%>
	저희 홈페이지에 오신것을 환영합니다.
	<form action="LoginForm.jsp" method="GET">
	<input type="submit" value="로그인">
	</form>
<% 
}else{
	//로그인성공상태
%>
<%=session.getAttribute("loginName") %>님 환영하세요!<br>
저희 홈페이지에 방문해 주셔셔 감사합니다.
<form action="LoginOut.jsp" method="GET">
	<input type="submit" value="로그아웃">
</form>
		
<%
} 
%>




</body>
</html>
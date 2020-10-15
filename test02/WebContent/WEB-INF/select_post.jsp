<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String job = request.getParameter("job");
	String[] interests = request.getParameterValues("interest");
%>
당신이 선택한 직업 : <strong><%=job %></strong><br>
<hr>
당신이 선택한 관심 분야 : <strong>
<%
	if(interests == null){
%>
	<%="선택한 내용이 없습니다." %>
<%		
	}else{
		for(String interest:interests){  //out.print(interest+" ");
%>
		<br><%=interest %>
<%
		}
	}
%>
</strong>
<br>
<a href='javascript:history.go(-1)'>다시</a>
</body>
</html>
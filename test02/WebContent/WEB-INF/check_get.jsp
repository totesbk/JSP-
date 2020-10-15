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
	String[] items = request.getParameterValues("item");
%>
<h3>당신이 선택한 항목입니다.</h3>
<hr>
<%
	if(items == null){
%>
	<%="선택한 내용이 없습니다." %>
<%		
	}else{
		for(String item:items){  
			out.print(item+" ");
		}
	}
%>
<br>
<a href='javascript:history.go(-1)'>다시</a>
</body>
</html>
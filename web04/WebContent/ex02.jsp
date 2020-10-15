<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>설문 조사 결과</h2>
	
<%
String name = request.getParameter("name");
out.print("이름 : <strong>"+name+"</strong><br>");

String gender = request.getParameter("gender");

out.print("성별 : ");
if(gender.equals("male")){
	out.print("<strong>남성</strong><br>");
}else if(gender.equals("female")){
	out.print("<strong>여성</strong><br>");
}

String[] seasons = request.getParameterValues("season");
out.print("당신이 좋아하는 계절 : ");
for(String s:seasons){
	switch(s){
	case "1":out.print("<b>봄</b>입니다.<br>");
		break;
	case "2":out.print("<b>여름</b>입니다.<br>");
		break;
	case "3":out.print("<b>가을</b>입니다.<br>");
		break;
	case "4":out.print("<b>겨울</b>입니다.<br>");
		break;
	}
}
%>	
</body>
</html>
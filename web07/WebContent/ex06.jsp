	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%	//request 내장객체; 사용 범위가 요청과 응답이 될때 까지
request.setAttribute("num1",10);
request.setAttribute("num2",20);
%>

<h3>표현식 합계</h3>
<%=(Integer)request.getAttribute("num1") %>+<%=(Integer)request.getAttribute("num1") %>=
<%=(Integer)request.getAttribute("num1")+(Integer)request.getAttribute("num2")  %>
<hr>
<h3>표현식 합계2</h3>
<%
int num1 = (Integer)request.getAttribute("num1");
int num2 = (Integer)request.getAttribute("num2");
%>
<%=num1%>+<%=num2%>=<%=num1+num2%>
<hr>
<h3>표현언어로 합계</h3>
${num1}+${num2}=${num1+num2}



</body>
</html>
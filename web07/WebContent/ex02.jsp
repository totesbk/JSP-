<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
5+2 : ${5+2}<br>
5-2 : ${5-2 }<br>
5*2 : ${5*2}<br>
5%2 : ${5%2}<br>
<br>
5 div 2 : ${5 div 2 }<br>
5 mod 2 : ${5 mod 2 }<br>
<br>
5 > 2 : ${5>2 }<br>
5 > 2 : ${5 gt 2 }<br>
<br>
(5 > 2)? 5: 2 =>${(5 >2)? 5: 2 }<br>
<br>
(5 > 2) || (7 lt 2) =>${(5>2)||(2 lt 7)}<br>
<br>
<% 
String data = null;
%>
data =>${data}<br>


</body>
</html>
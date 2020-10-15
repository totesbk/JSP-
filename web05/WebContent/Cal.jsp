<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계산기</title>
</head>

<body>
<%
double result=0.0;
if(session.getAttribute("result")==null){
	result=0.0;
}else{
	result = (double)session.getAttribute("result");
}

%>
<h1>계산기</h1>
<hr>
<form action="operation.jsp">
	<input type="text" name="num1">
	<select name="operation" size="1">
		<option value="+">+</option>
		<option value="-">-</option>
		<option value="*">*</option>
		<option value="/">/</option>
	</select>
	<input type="text" name="num2">
	<input type="submit" value="=">
	<input type="text" readonly="readonly" value="<%=result %>">
</form>
</body>
</html>
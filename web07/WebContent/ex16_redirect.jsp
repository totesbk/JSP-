<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:redirect url="ex13_forEach.jsp"></c:redirect>
	
<%
response.sendRedirect("ex13_forEach.jsp");
String greeting="안녕하세요";
request.setAttribute("greeting",greeting);
%>
<%=greeting%><br>
${greeting}<br>
<c:out value="${greeting }"/>;

<%
try{
	
}catch(Exception e){
	e.getMessage();
	e.printStackTrace();
}
%>
</body>
</html>
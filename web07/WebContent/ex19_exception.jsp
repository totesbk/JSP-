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
<c:catch var="err">
예외 발생 전<br>
<%=1 / 0 %>
예외 발생 후<br>
</c:catch>

예외 코드:
${err}<br>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean class="com.naved.Member" id="member" scope="session"/>
=>데이터를 저장하기전<br>
<%=member.getName() %><br>

=>데이터를 저장<br>
<%member.setName("홍길동"); %>

=>데이터를 저장한 후 출력<br>
이름:<%=member.getName() %>
</body>
</html>
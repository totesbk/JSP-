<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<fmt:formatNumber value="1234567.89"/><br>
<fmt:formatNumber value="1234567.89" groupingUsed="false"/><br>
<fmt:formatNumber value="0.6" type="percent"/><br>
<fmt:formatNumber value="10000" type="currency"/><br>
<hr>
<fmt:formatNumber value="1234567.8912345" pattern="#,#00.0#"/><br>
<fmt:formatNumber value="1234567.8" pattern="#,#00.0#"/><br>
<fmt:formatNumber value="1234567.8" pattern="#,#00.000#"/><br>
<hr>
<c:set var="now" value="<%=new java.util.Date() %>"/>
<fmt:formatDate value="${now }"/><br>

<fmt:formatDate value="${now}" type="time"/><br>
<fmt:formatDate value="${now}" type="both"/><br>
<fmt:formatDate value="${now}" pattern="yyyy년MM월dd일hh시mm분ss초"/><br>

<hr>
default : ${now}<br>
Korea KST : <fmt:formatDate value="${now}" type="both"/><br>
<fmt:timeZone value="GMT">
GMT : <fmt:formatDate value="${now}" type="both"/><br>
</fmt:timeZone>

<fmt:timeZone value="GMT-8">
GMT-8 : <fmt:formatDate value="${now}" type="both"/><br>
</fmt:timeZone>

<hr>
톰캣 서버의 기본 로케일 : <%=response.getLocale() %>
<fmt:setLocale value="ko_kr"/>
로케일을 한국어로 설정한 후 로케일 확인 : <%=response.getLocale() %><br>
통화 : <fmt:formatNumber value="10000" type="currency"/><br>
날짜 : <fmt:formatDate value="${now}"/>

<fmt:setLocale value="en_US"/>
로케일을 한국어로 설정한 후 로케일 확인 : <%=response.getLocale() %><br>
통화 : <fmt:formatNumber value="10000" type="currency"/><br>
날짜 : <fmt:formatDate value="${now}"/>

<fmt:setLocale value="ja_JP"/>
로케일을 한국어로 설정한 후 로케일 확인 : <%=response.getLocale() %><br>
통화 : <fmt:formatNumber value="10000" type="currency"/><br>
날짜 : <fmt:formatDate value="${now}"/>



</body>
</html>
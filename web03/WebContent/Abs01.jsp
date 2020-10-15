<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>    
<% 
List<String> list = new ArrayList<>();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% //선언문

String str = "만일 내게 물어보면 나는 왈도!";
int a = 5;

int b = -5;

public int abs(int n){
	if(n<0){
		n=-n;
	}
	return n;
}

%>

<% //스크립트릿
	int c = -10;
	out.println(str+"<br>");
	out.println(a+"의 절대값 : "+abs(a)+"<br>");
	out.println(b+"의 절대값 : "+abs(b)+"<br>");
	out.println(c+"의 절대값 : "+abs(c)+"<br>");

	abs(-2);
	
	out.print(abs(-20));
%>

<%=" 출력문 " %><br>
<%=str %><br>
<%=10+20 %><br>
<%=abs(-20) %>


<!-- HTML 주석문 -->
<%-- JSP 주석문 --%>


















</body>
</html>
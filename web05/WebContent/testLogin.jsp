<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//저장된 데이터
String id = "pinkpong";
String password = "kongsuni";
String name = "콩콩이";

//입력된 데이터
String userid = request.getParameter("userid");
String userpwd = request.getParameter("userpwd");

//로그인 처리
if(userid.equals(id) && userpwd.equals(password)){ //로그인성공
	session.setAttribute("userName",name);
	session.setAttribute("userId",userid);
	response.sendRedirect("Main.jsp");
	
}else{//로그인 실패
	response.sendRedirect("LoginForm.html");
}
%>

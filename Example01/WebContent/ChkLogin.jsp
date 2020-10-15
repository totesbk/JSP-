<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
String userid = request.getParameter("userid");
String userpwd = request.getParameter("userpwd");


String savedid = (String)application.getAttribute("savedid");
String savedpwd = (String)application.getAttribute("savedpwd");
String savedname = (String)application.getAttribute("savedname");

if(userid.equals(savedid) && userpwd.equals(savedpwd)){
	session.setAttribute("loginId", savedid);
	session.setAttribute("loginName", savedname);
	response.sendRedirect("Main.jsp");
}else{
	response.sendRedirect("LoginFail.jsp");
}
%>
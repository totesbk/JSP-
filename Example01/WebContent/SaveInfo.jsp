<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");

String savedid = request.getParameter("savedid");
String savedpwd = request.getParameter("savedpwd");
String savedname = request.getParameter("savedname");

application.setAttribute("savedid",savedid);
application.setAttribute("savedpwd",savedpwd);
application.setAttribute("savedname",savedname);

response.sendRedirect("Complete.jsp");

%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.net.URLEncoder" %>
<% 
String[] admin = {"admin","1234"};
String[] user = {"user","5678"};

String inputId = request.getParameter("userid");
String inputPwd = request.getParameter("userpwd");

if(admin[0].equals(inputId)&&admin[1].equals(inputPwd)){//관리자로그인
%>
	<jsp:forward page="ex07_adminMain.jsp">
		<jsp:param value='<%=URLEncoder.encode("관리자","UTF-8") %>' name="name"/>
	</jsp:forward>	
<% 	
}else if(user[0].equals(inputId)&& user[1].equals(inputPwd)){//고객 로그인
%>
	<jsp:forward page="ex07_userMain.jsp">
		<jsp:param value='<%=URLEncoder.encode("고객","UTF-8") %>' name="name"/>
	</jsp:forward>	

<% 	
}else{

%>
<script type="text/javascript">
	alert("로그인 실패:아이디 비밀번호 확인해주세요.");
	history.go(-1);
</script>
<%


}
%>
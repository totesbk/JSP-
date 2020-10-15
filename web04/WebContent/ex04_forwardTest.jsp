<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
int age = Integer.parseInt(request.getParameter("age"));

if(age<=19){
	%>	
	<script type="text/javascript">
		alert("19세 이하는 ㅇ비장 하실수 없습니다.");
		history.go(-1);
	</script>
<%	
}else{//forward
	RequestDispatcher dispatcher = request.getRequestDispatcher("ex04_forwardResult.jsp");
	dispatcher.forward(request,response);
}
 %>
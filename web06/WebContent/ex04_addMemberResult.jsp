<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
%>
<%--자바빈 객체 --%>
<%-- 1단계 --%>
<%
//com.naved.Member member = new com.naved.Member();
//session.setAttribute("member", member);
%>

<%-- 2단계 --%>
<jsp:useBean class="com.naved.Member" id="member" scope="session"/>


<%--데이터 입력부분 --%>
<%
//com.naved.Member member = new com.naved.Member();

// ---------------------------------------------1단계
//String name = request.getParameter("name");
//String nickname = request.getParameter("nickname");
//String userId = request.getParameter("userId");
//String userPw = request.getParameter("userPw");
//String email = request.getParameter("email");
//String tel = request.getParameter("tel");

//member.setName(name);
//member.setNickname(nickname);
//member.setUserId(userId);
//member.setUserPw(userPw);
//member.setEmail(email);
//member.setTel(tel);

// --------------------------------------------2단계
//member.setName(request.getParameter("name"));
//member.setNickname(request.getParameter("nickname"));
//member.setUserId(request.getParameter("userId"));
//member.setUserPw(request.getParameter("userPw"));
//member.setEmail(request.getParameter("email"));
//member.setTel(request.getParameter("tel"));
%>

<!-- ------------------------------------------3단계 -->
<%--  
<jsp:setProperty property="name" name="member" value="<%=request.getParameter("name") %>"/>
<jsp:setProperty property="nickname" name="member" value="<%=request.getParameter("nickname") %>"/>
<jsp:setProperty property="userId" name="member" value="<%=request.getParameter("userId") %>"/>
<jsp:setProperty property="userPw" name="member" value="<%=request.getParameter("userPw") %>"/>
<jsp:setProperty property="email" name="member" value="<%=request.getParameter("email") %>"/>
<jsp:setProperty property="tel" name="member" value="<%=request.getParameter("tel") %>"/>
--%>


<!-------------------------------------------- 4단계 (이름이 같기때문에 value값 생략 가능)-->
<%-- 
<jsp:setProperty property="name" name="member" />
<jsp:setProperty property="nickname" name="member" />
<jsp:setProperty property="userId" name="member"/>
<jsp:setProperty property="userPw" name="member" />
<jsp:setProperty property="email" name="member" />
<jsp:setProperty property="tel" name="member" />
--%>


<!-- ------------------------------------------5단계 -->
<jsp:setProperty name="member" property="*"/>


<%--데이터 출력부분 --%>
<h2>입력 완료된 회원 정보</h2>
<%-- 1단계 --%>
<%-- 
이름 : <%=member.getName() %><br>
닉네임 : <%=member.getNickname() %><br>
아이디 : <%=member.getUserId() %><br>
비밀번호 : <%=member.getUserPw() %><br>
이메일 : <%=member.getEmail() %><br>
전화번호 : <%=member.getTel() %><br>
--%>


<%-- 2단계 --%>
이름 : <jsp:getProperty name="member" property="name" /><br>
닉네임 : <jsp:getProperty name="member" property="nickname" /><br>
아이디 : <jsp:getProperty name="member" property="userId" /><br>
비밀번호 : <jsp:getProperty name="member" property="userPw" /><br>
이메일 : <jsp:getProperty name="member" property="email" /><br>
전화번호 : <jsp:getProperty name="member" property="tel" /><br>

</body>
</html>



<<%--********************************************************************************* %>
<h2>입력이 완료된 회원 정보</h2>
이름 : <jsp:getProperty name="member" property="name"/><br>
닉네임 : <jsp:getProperty name="member" property="nickname"/><br><br>
아이디 : <jsp:getProperty name="member" property="id"/><br><br>
비밀번호 : <jsp:getProperty name="member" property="pw"/><br><br>
이메일 :<jsp:getProperty name="member" property="email"/><br> <br>
전화번호 : <jsp:getProperty name="member" property="phone"/><br><br>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
  </head>
  <body>
  <h1>회원가입페이지</h1>
    <form method="get" action="formInsert.jsp">
      <label for="name">이름 :</label>
      <input type="text" name="name" id="name" />
      
      <label for="userid">아이디 :</label>
      <input type="text" name="userid" id="userid" />
      
      <label for="userpwd">비밀번호 :</label>
      <input type="password" name="userpwd" id="userpwd" />
      
      <label for="email">이메일 :</label>
      <input type="email" name="email" id="email" />
      
      <label for="phone">전화번호 :</label>
      <input type="text" name="phone" id="phone" />
      
      <label for="admin">권한 :</label>
      <input type="radio" name="admin" id="admin" value="0">유저 
      <input type="radio" name="admin" id="admin" value="1">관리자
      
      <input type="submit" value="전송" />
      <input type="reset" value="취소" />
    </form>
  </body>
</html>

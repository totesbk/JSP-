<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="get" action="Q01" >
      <label for="gender">성별 :</label>
      <input type="radio" name="gender" value="남자">남자
      <input type="radio" name="gender" value="여자">여자
      <br>
      <br>
      <label for="email">메일 정보 수신 여부 :</label>
      <input type="radio" name="email" value="yes">수신
      <input type="radio" name="email" value="no">거부
      <br>
      <br>
      <p>가입인사를 적어주세요</p>
      <textarea name="content" rows="5" cols="30" placeholder="내용을 입력하세여"></textarea>
      <br>
      <input type="submit" value="전송"> 
   </form>
</body>
</html>
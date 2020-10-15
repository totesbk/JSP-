<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="get" action="Q02">

직업 <select name="job">
          <option value="학생" selected>학생</option>
          <option value="군인">군인</option>
          <option value="자바개발자">JAVA 개발자</option>
          <option value="사업가">사업가</option>
          <option value="서비스업">서비스업</option>
      </select>

관심분야 <select name="hobby">
          <option value="에스프레소" selected>에스프레소</option>
          <option value="로스팅">로스팅</option>
          <option value="생두">생두</option>
          <option value="원두">원두</option>
          <option value="핸드드립">핸드드립</option>
      </select>      

      <input type="submit" value="전송">
</form>
</body>
</html>
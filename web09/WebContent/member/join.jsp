<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="script/member.js"></script>
</head>
<body>
<h2>회원 가입 페이지</h2>
'*' 표시 항목은 필수 입력 항목 입니다.
<hr>
   <form action="join.do" method="post" name="frm">
   		 <table>
   		<tr>
   			<td>이름</td>
   			<td><input type="text" name="name" size="20">*</td>	
   		</tr>
   		<tr>
   			<td>아이디</td>
   			<td>
   			<input type="text" name="userid" size="20">*
   			<input type="hidden" name="reid" size="20">
   			<input type="button" value="중복 체크" onclick="idCheck()">
   			</td>		
   		</tr>
   		<tr>
   			<td>비밀번호</td>
   			<td><input type="password" name="userpwd" size="20">*</td> 		
   		</tr>
   		<tr>
   			<td>비밀번호 확인</td>
   			<td><input type="password" name="pwd_check" size="20">*</td> 		
   		</tr>
   		<tr>
   			<td>이메일</td>
   			<td><input type="text" name="email" size="20">*</td>		
   		</tr>
   
   		<tr>
   			<td>전화번호</td>
   			<td><input type="text" name="phone" size="15"></td> 		
   		</tr>
   
   		<tr>
   			<td>등급</td>
   			<td>
   			<input type="radio" name="admin" value="0" checked="checked">일반회원
   			<input type="radio" name="admin" value="1">관리자
   			</td>  		
   		</tr>
   		 
   		<tr>
   			<td colspan="2">
   			<input type="submit" value="전송" onclick="return joinCheck()">
   			<input type="reset" value="취소">
   			</td> 			
   		</tr>
   		<tr>
   			<td colspan="2">${message}</td> 		
   		</tr>
 
   </table>
    </form>

</body>
</html>
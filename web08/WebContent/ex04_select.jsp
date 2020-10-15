<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//선언부는 첫 방문자에 의해서 단 한번 수행
Connection conn = null;
Statement stmt = null;
ResultSet rs = null;

String url = "jdbc:oracle:thin:@192.168.0.136:1521:XE";
String uid = "STU007";
String upw = "1234";

String sql = "SELECT * FROM member";
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1">
	<tr>
		<th>이름</th>
		<th>아이디</th>
		<th>암호</th>
		<th>이메일</th>
		<th>전화번호</th>
		<th>권한(1:관리자,0:일반 회원)</th>
	</tr>
	
	<%
		try{
			//1단계: 드라이버 로드
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			//2단계 : 데이터베이스 연결
			conn = DriverManager.getConnection(url,uid,upw);
	
			//3단계 쿼리문을 실행할 객체 생성
			stmt = conn.createStatement();
			
			//4단계 쿼리문 실행
			rs = stmt.executeQuery(sql);

			//5단계 데이터 꺼내보기
			while(rs.next()){
				out.print("<tr>");
				out.print("<td>"+rs.getString("name")+"</td>");
				out.print("<td>"+rs.getString("userid")+"</td>");
				out.print("<td>"+rs.getString("userpwd")+"</td>");
				out.print("<td>"+rs.getString("email")+"</td>");
				out.print("<td>"+rs.getString("phone")+"</td>");
				out.print("<td>"+rs.getInt("admin")+"</td>");
				out.print("/<tr>");
			}
		
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				if(rs !=null){
					rs.close();
				}
				if(stmt != null){
					stmt.close();
				}
				if(conn !=null){
					conn.close();
				}
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		
	%>

</table>
</body>
</html>
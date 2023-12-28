<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>/member/memberUpdate</h1>
	
	<h2> 회원정보 수정 페이지 </h2>
	
	<fieldset>
		<!-- action=""인 경우 자기자신의 경로 호출 -->
		<form action="" method="post">
			아이디 : <input type="text" name="userid" value="${vo.userid }"><br>
			비밀번호 : <input type="password" name="userpw"><br>
			이름 : <input type="text" name="username" value="${vo.username }"><br>
			이메일 : <input type="text" name="useremail" value="${vo.useremail }"><br>
			
		<input type="submit" value="회 원 수 정"	>
			
		</form>
	</fieldset>
</body>
</html>
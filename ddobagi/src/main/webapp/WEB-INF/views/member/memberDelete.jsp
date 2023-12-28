<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>memberDelete.jsp</h1>
	
	<h2> 회원정보 탈퇴 </h2>
	
	<fieldset>
		<form action="" method="post">
		<input type="hidden" name="userid" value="${id }">
		비밀번호 : <input type="password" name="userpw">
		<input type="submit" value="탈퇴하기">
		</form>
	</fieldset>
	
</body>
</html>
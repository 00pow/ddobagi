<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>accessErr.jsp</h1>
	
	<h2> 잘못된 접근 입니다. 돌아가세요. </h2>
	
	${auth }
	
	<a href="/sec/all">메인페이지(all)로 이동</a>
	
	
</body>
</html>
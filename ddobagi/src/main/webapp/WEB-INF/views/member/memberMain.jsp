<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>/member/memberMain.jsp</h1>
	
	<h2> 메인페이지 </h2>
	<!-- 로그인 정보가 없으면 로그인 페이지로 이동 -->
	
	<%-- <c:if test="${id == null}"> --%>
	<%-- <c:if test="${sessionScope.id == null }"> --%>
	<c:if test="${empty id}">
		<c:redirect url="/member/login"/>
	</c:if>
	
	사용자 아이디 : ${id }<hr>
	사용자 아이디 : ${sessionScope.id }<hr>
	
	<input type="button" value="로그아웃" onclick="location.href='/member/logout';">
	<hr>
	<a href="javascript:location.href='/member/logout';">로그아웃</a>
	
	<hr><hr>
	
	<h3><a href="/member/info"> 회원정보 조회 </a></h3>
	
	<hr><hr>
	
	<h3><a href="/member/update"> 회원정보 수정 </a></h3>
	
	<hr><hr>
	
	<h3><a href="/member/delete"> 회원정보 탈퇴 </a></h3>
	
	
	<%-- <c:if test="${!empty id && id eq 'admin'} "> 문자열 비교가 정상적으로 안될수있음 --%>
	<c:if test="${!empty id && id.equals('admin')}">
	<!-- 관리자일 때만 확인 가능한 메뉴 -->
	<hr><hr>
	
	<h3><a href="/member/list"> 회원정보 목록 </a></h3>
	</c:if>
	
	
</body>
</html>
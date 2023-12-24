<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

	<h1>/board/listAll.jsp</h1>

		<h2>결과(result) : ${result }</h2>
	<h2>결과(result) : ${param.result }</h2>

<%-- ${boardListAll } --%>

<div class="box">
	<div class="box-header with-border">
		<h3 class="box-title">아이티윌 게시판 목록</h3>
	</div>
	<!-- 여기서 아래까지 추가 -->
	<form method="post" action="/logout">

		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" /> <input
			class="flex mr-auto mb-3 text-white text-sm sm:text-base bg-rose-500 border-0 py-1 px-3 

            sm:py-2 sm:px-6 focus:outline-none hover:bg-rose-600 rounded cursor-pointer"
			type="submit" value="로그아웃" />

	</form>
	<!-- 여기서 아래까지 추가 -->
	<div class="box-body">
		<table class="table table-bordered">
			<tbody>
				<tr>
					<th style="width: 10px">번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>작성일</th>
					<th>조회수</th>
					
				</tr>
				
				<c:forEach var="vo" items="${boardListAll }">
				<tr>
					<td>${vo.bno }</td>
					<td>
						<a href="/board/read?bno=${vo.bno }">${vo.title} </a>
					</td>
					<td>${vo.writer }</td>
					<td>
						<fmt:formatDate value=	"${vo.regdate }" pattern="yy-MM-dd"/>
					</td>
					<td><span class="badge bg-yellow">${vo.viewcnt }</span></td>
				</tr>
				</c:forEach>
				
				
						
				
			</tbody>
		</table>
	</div>

	<div class="box-footer clearfix">
		<ul class="pagination pagination-sm no-margin pull-right">
			<li><a href="#">«</a></li>
			<li><a href="#">1</a></li>
			<li><a href="#">2</a></li>
			<li><a href="#">3</a></li>
			<li><a href="#">»</a></li>
		</ul>
	</div>
</div>





<!-- result값이 createOK일때 alert 사용 '글쓰기완료'  -->
<!-- 밑에꺼는 parameter. 주소줄에 있어야만 쓸 수 있다. 즉 createOK를 계속달고 다니는 model일때는 param.result값만 출력됨 -->
<!-- ${result} 를 씀으로써 새로고침하면 값이 사라지게 만든다. -->

<script>
		var result = '${result}';
		console.log(result);
		
		if(result == 'createOK'){
			alert("글쓰기 완료!!!!!!");
		}	
		</script>




<%@ include file="../include/footer.jsp"%>
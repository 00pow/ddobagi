<%@ page pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>



<h1>/views/board/modify.jsp</h1>
<div class="box box-primary">
	<div class="box-header with-border">
		<h3 class="box-title">게시판 수정하기</h3>
	</div>


	<form method="post" role="form" id="fr">
	

	<!-- 폼태그에 action이 없는 건 자기자신의 주소를 호출 -->
		<div class="box-body">
			<div class="form-group">
				<label for="exampleInputEmail1">글번호</label> 
				<input type="text" name="bno" class="form-control"
				 id="exampleInputEmail1" value="${boardVO.bno }" readonly>
			</div>
			<div class="form-group">
				<label for="exampleInputEmail1">글쓴이</label> 
				<input type="text" name="writer" class="form-control"
				 id="exampleInputEmail1" value="${boardVO.writer }"  >
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">제 목</label> 
				<input type="text" name="title" class="form-control" 
				id="exampleInputPassword1" value="${boardVO.title }" >
			</div>

			<div class="form-group"><label>내 용</label>
				<textarea class="form-control" rows="3" name="content"
				placeholder="내용을 입력하시오">${boardVO.content }</textarea>
			</div>


		</div>
		<!-- <input type="button" value="버튼" class="btn btn-success"-->
		</form>
		
		<div class="box-footer">
			<button type="submit" class="btn btn-success ">수정하기</button>
			<button type="submit" class="btn btn-info ">수정취소</button>	
		</div>
	
</div>

<!-- Jquery 사용 준비 -->   	
 <script type="text/javascript">
	$(document).ready(function(){
		// 데이터 submit하려면 폼태그에 대한 정보들이 필요-role이라는 속성통해 접근 또는 폼태그에 id줘도됨
		// var formObj = $("form[role='form']"); 속성탐색
		var frObj = $('#fr'); //아이디
		
		// 수정하기 버튼클릭
		$('.btn-success').click(function(){
			// /board/modify 주소로 POST 방식으로 정보를 전달하겠다
			frObj.submit();
		});
		
		// 취소하기 버튼클릭
		$('.btn-info').click(function(){
			
			location.href='/board/listAll';
			
		});
		
	});
 
 
 </script>	
<%@ include file="../include/footer.jsp"%>

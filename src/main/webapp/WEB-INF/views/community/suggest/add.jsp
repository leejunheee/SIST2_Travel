<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TP</title>

 <%@ include file="/inc/asset.jsp"%> 

<style>

.main-section {
	width: 1100px;
	margin: 35px auto;
	padding-bottom: 300px;
}
</style>

</head>
<body>
	<!-- board/add.jsp -->
	<%@ include file="/inc/header.jsp"%>

	<section class="main-section">

		<h1>
			건의게시판 <small>게시글 작성</small>
		</h1>

		<form method="POST" action="/SIST2_Travel/community/suggest/addok.do">
			<table class="table table-bordered">
				<tr>
					<th>제목</th>
					<td><input type="text" name="subject" id="subject"
						class="form-control" required /></td>
				</tr>
				<tr style="height: 300px;">
					<th>내용</th>
					<td ><textarea style="height: 290px;"  name="content"  
					class="form-control" required></textarea></td>
				</tr>
				

			</table>

			<div class="btns">
				<button type="submit" class="btn btn-primary">글쓰기</button>
				<button type="button" class="btn btn-default"
					onclick="location.href='/SIST2_Travel/community/suggest/list.do';">돌아가기</button>
			</div>
		
			<input type="hidden" name="reply" value="${reply}" />
			<input type="hidden" name="thread" value="${thread}" />
			<input type="hidden" name="depth" value="${depth}" />
		</form>

	</section>

	<%@ include file="/inc/init.jsp"%>
   <%@ include file="/inc/footer.jsp"%> 
	<script>
		
	</script>
</body>
</html>
















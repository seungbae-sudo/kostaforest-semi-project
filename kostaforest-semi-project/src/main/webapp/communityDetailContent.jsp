<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<h3 class="title-detail">${cvo.title}</h3>
<hr>
<ul class="info">
	<li>작성자 회사 : ${cvo.mvo.comName }</li>
	<li>작성일 : ${cvo.timePosted }</li>
	<li>조회수 : ${cvo.hits }</li>
</ul>
<div class="content">
	<pre>${cvo.content }</pre>
</div>



<c:if test="${sessionScope.mvo.id eq cvo.mvo.id}">
	<form action="CommunityDeleteController.do?carNo=${carNo }"
		method="post" id="DeleteForm">
		<input type="hidden" name="no" value="${cvo.boardNo}">

	</form>
	<form action="CommunityUpdateFormController.do" method="post"
		id="UpdateForm">
		<input type="hidden" name="no" value="${cvo.boardNo}">

	</form>

	<button type="button" onclick="updatepost()">수정</button>
	<button type="button" onclick="deletepost()">삭제</button>
</c:if>
<script type="text/javascript">
	function deletepost() {
		if (confirm("삭제 하시겠습니까?")) {
			document.getElementById("DeleteForm").submit();
		}

	}
	function updatepost() {
		if (confirm("수정 하시겠습니까?")) {
			document.getElementById("UpdateForm").submit();
		}

	}
</script>

<div class="comment">
	<table class="table table-comment">
		<h4 class="title">
			<i class="fas fa-cloud"></i>댓글<span class="more">
			<a href ="LikeUpController.do?no=${cvo.boardNo }&carNo=${carNo}"><i class='far fa-heart icon'></i></a> ${cvo.likeNo }
		</h4>

		<form action="CommentWriteController.do" method="post"
			class="comment-form">
			<input type="hidden" name="boardNo" value="${cvo.boardNo }">
			<input type="hidden" name="comName" value="${cvo.mvo.comName }">
			<input type="text" name="com_content" class="comment-write"
				placeholder="댓글을 입력하세요">
			<button class="comment-write-ok" type="submit">작성</button>
		</form>

		<tbody class="up-space">
			<c:forEach items="${commentList}" var="list">
				<tr>
					<td class="col-sm-8">${list.commentContent }</td>
					<td class="col-sm-2">${list.timePosted }</td>
					
					<td class="col-sm-2">
					<c:if test="${sessionScope.mvo.id eq list.mvo.id }">
					<form action="CommentDeleteController.do?commentNo=${list.commentNO}&carNo=${carNo}&no=${cvo.boardNo}" method="post" >
					<button>삭제</button>
					</form>
					</c:if>
					</td>
					
				</tr>
			</c:forEach>
		</tbody>

	</table>
</div>

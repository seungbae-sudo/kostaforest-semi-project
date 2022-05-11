<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<h3 class="title-detail">${cvo.title}</h3>
<hr>
<ul class="info">
	<li>작성자 회사 : ${cvo.mvo.comName }</li>
	<li>작성일 : ${cvo.timePosted }</li>
	<li>조회수 : ${cvo.hits }</li>
	<li><a
		href="CommunityPostListController.do?carNo=${carNo}&pageNo=${pageNo}"><i
			class='fas fa-list'></i>목록</a></li>
</ul>
<div class="content">
	<pre>${cvo.content }</pre>
</div>



<c:if test="${sessionScope.mvo.id eq cvo.mvo.id}">
	<form action="CommunityDeleteController.do" method="post"
		id="DeleteForm">
		<input type="hidden" name="no" value="${cvo.boardNo}"> <input
			type="hidden" name="carNo" value="${carNo }"> <input
			type="hidden" name="pageNo" value="${pageNo}">

	</form>
	<form action="CommunityUpdateFormController.do" method="post"
		id="UpdateForm">

		<input type="hidden" name="no" value="${cvo.boardNo}">
		<input type="hidden" name="carNo" value="${carNo}">
		<input type="hidden" name="pageNo" value="${pageNo}">

	</form>
	<div class="text-center space-top">
		<button type="button" class="btn btn-success" onclick="updatepost()">수정</button>
		<button type="button" class="btn btn-success" onclick="deletepost()">삭제</button>
	</div>

</c:if>


<div class="comment">
	<h4 class="title">
		<i class="fas fa-cloud"></i>댓글<span class="more"> <c:choose>
				<c:when test="${fn:contains(sessionScope.LikeNoList, cvo.boardNo)}">
					<c:choose>
						<c:when
							test="${fn:contains(sessionScope.LikeDownList,cvo.boardNo) }">
							<a
								href="LikeUpController.do?no=${cvo.boardNo }&carNo=${carNo}&pageNo=${pageNo}"><i
								class='far fa-heart icon'></i></a> ${cvo.likeNo }
							</c:when>
						<c:otherwise>
							<a
								href="LikeDownController.do?no=${cvo.boardNo }&carNo=${carNo}&pageNo=${pageNo}"><i
								class="fa fa-heart" style="font-size: 24px; color: red"></i></a>${cvo.likeNo }
							</c:otherwise>
					</c:choose>
				</c:when>
				<c:otherwise>
					<a
						href="LikeUpController.do?no=${cvo.boardNo }&carNo=${carNo}&pageNo=${pageNo}"><i
						class='far fa-heart icon'></i></a> ${cvo.likeNo }
				
					</c:otherwise>

			</c:choose>
		</span>
	</h4>

	<form action="CommentWriteController.do" method="post"
		class="comment-form" id="ComPostForm">
		<div>
			<input type="hidden" name="carNo" value="${carNo}"> <input
				type="hidden" name="boardNo" value="${cvo.boardNo }"> <input
				type="hidden" name="comName" value="${cvo.mvo.comName }"> <input
				type="hidden" name="pageNo" value="${pageNo}"> <input
				type="text" id="com_content" name="com_content"
				class="comment-write" placeholder="댓글을 입력하세요">
			<button class="comment-write-ok" type="button" onclick="compost()">작성</button>
		</div>
	</form>



	<table class="table table-comment">
		<tbody class="up-space">


			<c:forEach items="${commentList}" var="list">
				<tr>
					<td class="col-sm-8">${list.commentContent }</td>
					<td class="col-sm-2">${list.timePosted }</td>

					<td class="col-sm-2"><c:if
							test="${sessionScope.mvo.id eq list.mvo.id }">
							<form action="CommentDeleteController.do" method="post"
								id="ComDeleteForm">
								<input type="hidden" name="commentNo" value="${list.commentNO}">
								<input type="hidden" name="carNo" value="${carNo}"> <input
									type="hidden" name="no" value="${cvo.boardNo}"> <input
									type="hidden" name="pageNo" value="${pageNo}">
								<button type="button" onclick="comdeletepost()">삭제</button>
							</form>
						</c:if></td>

				</tr>
			</c:forEach>
		</tbody>

	</table>
</div>


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
	function comdeletepost() {
		if (confirm("삭제 하시겠습니까?")) {
			document.getElementById("ComDeleteForm").submit();
		}
	}
	function compost() {
		if (document.getElementById("com_content").value == "") {
			alert("댓글을 입력하세요");
			return;
		} else {
			document.getElementById("ComPostForm").submit();
		}
	}
</script>

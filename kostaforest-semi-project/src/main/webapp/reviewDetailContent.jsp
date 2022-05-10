<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

		<h3 class="title-detail">${rvo.title}</h3>
		<hr>
		<ul class="info">
			<li>작성자 회사 : ${rvo.mvo.comName}</li>
			<li>작성일 : ${rvo.timePosted}</li>
			<li>조회수 : ${rvo.hits}</li>
			<li><i class='fas fa-list'></i><a href="ReviewPostListController.do?pageNo=${nowPage}">목록</a></li>
		</ul>
		
		
		<div class="rating">
			<h2>회사 평가점수  <span class="badge badge-secondary">${rvo.rating}</span> 점</h2>
		</div>
		
		
		<div class="content">
			<pre><font size="4">${rvo.content}</pre>
		</div>
	
		<c:if test="${sessionScope.mvo.id eq rvo.mvo.id }">
		<tr>
			<td colspan="5" class="text-center">
				 <form id="deleteForm" action="ReviewPostDeleteController.do" method="post">			<%--삭제를 위한 form  : post방식--%>
					<input type="hidden" name="no" value="${rvo.reNo}">
				</form>
				<form id="updateForm" action="ReviewPostUpdateFormController.do" method="post">			<%--삭제를 위한 form  : post방식--%>
					<input type="hidden" name="no" value="${rvo.reNo}">
				</form>
				
				 <button type="button"onclick="updatePost()" >수정</button>
				<button type="button" onclick="deletePost()">삭제</button>
				
			</td>
		</tr>
		</c:if>
				
		<script>
			function deletePost(){
				//confirm 함수는 확인 누를때 true를 반환 
				if(confirm("삭제하시겠습니까?")){
					document.getElementById("deleteForm").submit();
				}
			}
			
			function updatePost(){
				//confirm 함수는 확인 누를때 true를 반환 
				if(confirm("수정하시겠습니까?")){
					document.getElementById("updateForm").submit();
				}
			}
		</script>

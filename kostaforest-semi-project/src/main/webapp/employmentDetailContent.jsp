<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
		<h3 class="title-detail">[${empPostVO.empGroup}] ${empPostVO.title}</h3>
		<hr>
		<ul class="info">
			<li>작성자 회사 : ${empPostVO.mvo.comName }</li>
			<li>작성일 : ${empPostVO.timePosted }</li>
			<li>조회수 : ${empPostVO.hits }</li>
		</ul>
		<div class="content">
			<pre>${empPostVO.content }</pre>
		</div>
		
		<c:if test="${sessionScope.mvo.id eq empPostVO.mvo.id}">
			<div class="updateANDdelete">
					<form  id="updateForm" action="EmploymentUpdateFormController.do" method="post">
						<input  type="hidden" name="no" value="${empPostVO.boardNo}">
					</form>
					<form  id="deleteForm" action="EmploymentDeletePostController.do" method="post">
						<input type="hidden" name="no" value="${empPostVO.boardNo}">
					</form>
					<button type="button" onclick="updatePostFrom()">수정</button> 	
					<button type="button" onclick="deletePost()">삭제</button> 
			</div>
		</c:if>	
		
		<script>
				function updatePostFrom(){
					//confirm 함수는 확인 누를 때 true를 반환
					if(confirm("수정 하시겠습니까?")){
						document.getElementById("updateForm").submit();
					}
				}
				function deletePost(){
					//confirm 함수는 확인 누를 때 true를 반환
					if(confirm("삭제하시겠습니까?")){
						document.getElementById("deleteForm").submit();
					}
				}
							
			</script>

		
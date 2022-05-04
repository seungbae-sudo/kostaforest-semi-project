<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
		<h3 class="title-detail">${empPostVO.title}</h3>
		<hr>
		<ul class="info">
			<li>작성자 회사 : ${empPostVO.mvo.comName }</li>
			<li>작성일 : ${empPostVO.timePosted }</li>
			<li>조회수 : ${empPostVO.hits }</li>
		</ul>
		<div class="content">
			<pre>${empPostVO.content }</pre>
		</div>

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

		<div class="comment">
			<table class="table table-comment">
				<h4 class="title">
					<i class="fas fa-cloud"></i>댓글<span class="more">
				</h4>
				
				<form class="comment-form">
					<input type="text" class="comment-write" placeholder="댓글을 입력하세요">
					<button class="comment-write-ok">작성</button>
				</form>
				
				
					
				
				
				<tbody class="up-space">
					<tr>
						<td class="col-sm-8">여기가 글내용</td>
						<td class="col-sm-2">2022.05.02</td>
					</tr>
					<tr>
						<td>여기가 글내용</td>
						<td>3</td>
					</tr>
					<tr>
						<td>여기가 글내용</td>
						<td>3</td>
					</tr>
					<tr>
						<td>여기가 글내용</td>
						<td>3</td>
					</tr>
				</tbody>
			</table>
		</div>

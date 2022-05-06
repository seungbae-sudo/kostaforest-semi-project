<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
		<h3><i class='fas fa-eraser' style='font-size:24px'></i>채용공고 수정</h3>
		<form method="post" action="EmploymentUpdatePostController.do">
			<input type="hidden" name="no" value="${empPostVO.boardNo }">
			<table class="table">
			<tr>
				<td id="grade-td">
					<span> 회사명 : 카카오(임시)</span>
					<select name="empGroup" class="title_line grade" > <!-- onchange이벤트 : select option value가 변경될 떄 발생되는 이벤트  -->
					<option value="">조건 </option>
					<option value="정규직">정규직</option>
					<option value="계약직">계약직</option>
				</td>
				</select>
			</tr>
				<tr>
					<td><input class="title_line" type="text" name="title" placeholder="글제목"
						required="required" value="${empPostVO.title }">
						
 						</td>
				</tr>
				<tr>
					<td><textarea rows="10" class="form-control" name="content"
							placeholder="본문내용" required="required">${empPostVO.content }</textarea></td>
				</tr>
			</table>
			
			<%-- <c:if test="${sessionScope.mvo.id eq empPostVO.id}"> --%>
				<div class="text-center">
					<button type="submit" class="btn btn-success">수정</button>
					<button type="reset" class="btn btn-success">취소</button>
				</div>
<%-- 			</c:if> --%>
		</form>

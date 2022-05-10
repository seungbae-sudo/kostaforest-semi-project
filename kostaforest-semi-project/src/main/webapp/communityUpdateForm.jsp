<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


		<h3><i class='fas fa-eraser' style='font-size:24px'></i>커뮤니티 수정</h3>
		<form method="post" action="CommunityUpdateController.do" id="Update">
			<input type="hidden" name = "pageNo" value="${pageNo }">
			<table class="table">
				<tr>
					<td>
					<select id = "carNo" name="carNo" class="title_line">
							<!-- onchange이벤트 : select option value가 변경될 떄 발생되는 이벤트  -->
							<option value="">게시판을 선택해주세요.</option>
							<option value="1"  <c:if test="${carNo==1}"> selected </c:if> >회사 이야기</option>
						    <option value="2" <c:if test="${carNo==2}"> selected </c:if>>취미 생활 이야기</option>
						    <option value="3" <c:if test="${carNo==3}"> selected </c:if>>주식 이야기</option>

					</select> 
					</td>

				</tr>
				<tr>
					<td>
					<input type="hidden" name="boardNo" value="${cvo.boardNo}">
					<input class="title_line" type="text" name="title"
						placeholder="글제목" required="required" value="${cvo.title}"></td>
				</tr>
				<tr>
					<td><textarea rows="10" class="form-control" name="content"
							placeholder="본문" required="required">${cvo.content}</textarea></td>
				</tr>
			</table>

			<div class="text-center">
				<button type="button" class="btn btn-success" onclick="check()">수정</button>
				<button type="reset" class="btn btn-success">취소</button>				
			</div>
		</form>
		
		<script type="text/javascript">	
			function check() {
				if(document.getElementById("carNo").value ==""){
					alert("게시판을 선택해 주세요");		
					return;
				}else{
					document.getElementById("Update").submit();
				}
			}	
		</script>

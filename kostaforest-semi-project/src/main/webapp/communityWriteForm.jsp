<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<h3>
	<i class='fas fa-user-edit' style='font-size: 24px'></i>커뮤니티 작성
</h3>
<form method="post" action="CommunityWriteController.do" id="Write">
	<input type="hidden" name = "pageNo" value="${pageNo }">
	<table class="table">
		<tr>
			<td><select id="carNo" name="carNo" class="title_line">
								
							<option value="1"  <c:if test="${carNo==1}"> selected </c:if> >회사 이야기</option>
						    <option value="2" <c:if test="${carNo==2}"> selected </c:if>>취미 생활 이야기</option>
						    <option value="3" <c:if test="${carNo==3}"> selected </c:if>>주식 이야기</option>						

			</select></td>
	
		</tr>
		<tr>
			<td>
				<input class="title_line" type="text" name="title"
				placeholder="글제목" required="required"></td>
		</tr>
		<tr>
			<td><textarea rows="10" class="form-control" name="content"
					placeholder="본문내용" required="required"></textarea></td>
		</tr>
	</table>

</form>

<div class="text-center">
	<button type="button" class="btn btn-success" onclick="check()">확인</button>
	<button type="reset" class="btn btn-success">취소</button>
</div>
<script type="text/javascript">
	function check() {
		if (document.getElementById("carNo").value == "") {
			alert("게시판을 선택해 주세요");
			return;
		} else {
			document.getElementById("Write").submit();
		}
	}
</script>


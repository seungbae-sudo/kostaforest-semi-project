<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<h3>
	<i class='fas fa-eraser' style='font-size: 24px'></i>리뷰 수정
</h3>
<form method="post" action="ReviewPostUpdateController.do" id="Update">
	<table class="table">
		<tr>
			<td id="grade-td"><span> 회사명 :
					${sessionScope.mvo.comName}</span> <select id="ratingNo" name="rating"
				class="title_line grade all_star">
					<option value="" class='fas fa-star'>평점 선택하기</option>
					<option value="1" class="star_1 fa">&#xf005</option>
					<option value="2" class="star_2">&#xf005 &#xf005</option>
					<option value="3" class="star_3">&#xf005 &#xf005 &#xf005</option>
					<option value="4" class="star_4">&#xf005 &#xf005 &#xf005
						&#xf005</option>
					<option value="5" class="star_5">&#xf005 &#xf005 &#xf005
						&#xf005 &#xf005</option>
			</select></td>
		</tr>
		<tr>
			<td><input type="hidden" name="no" value="${rvo.reNo}">
				<input class="title_line" type="text" name="title"
				value="${rvo.title}" required="required"></td>
		</tr>
		<tr>
			<td><textarea rows="10" class="form-control" name="content"
					required="required">${rvo.content}</textarea></td>
		</tr>
	</table>

	<div class="text-center">
		<button type="button" class="btn btn-success" onclick="check()">수정</button>
		<button type="reset" class="btn btn-success">취소</button>
	</div>
</form>



<script type="text/javascript">
	function check() {
		if (document.getElementById("ratingNo").value == "") {
			alert("평점을 선택해 주세요");
			return;
		} else {
			document.getElementById("Update").submit();
		}
	}
</script>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<h3>
	<i class='fas fa-eraser' style='font-size: 24px'></i>채용공고 수정
</h3>
<form method="post" action="EmploymentUpdatePostController.do"
	id="Update">
	<input type="hidden" name="no" value="${empPostVO.boardNo }">
	<table class="table">
		<tr>
			<td id="grade-td"><span> ${empPostVO.empGroup}</span> <select
				id="UpdateEmpGroup" name="empGroup" class="title_line_update grade">
					<!-- onchange이벤트 : select option value가 변경될 떄 발생되는 이벤트  -->
					<option value="">조건</option>
					<option value="정규직">정규직</option>
					<option value="계약직">계약직</option>
			</select></td>

		</tr>
		<tr>
			<td><input class="title_line" type="text" name="title"
				placeholder="글제목" required="required" value="${empPostVO.title }">

			</td>
		</tr>
		<tr>
			<td><textarea rows="10" class="form-control" name="content"
					placeholder="본문내용" required="required">${empPostVO.content }</textarea></td>
		</tr>
		<tr>
			<td><input type="text" class="emp-email" name="employmentEmail"
				value="${empPostVO.empMail}" placeholder="지원받을 이메일 주소를 입력해주세요 "></td>
		</tr>
	</table>
	<div class="text-center">
		<button type="button" onclick="updateCheck()" class="btn btn-success">수정</button>
		<button type="reset" class="btn btn-success">취소</button>
	</div>
</form>



<script type="text/javascript">
	function updateCheck() {
		if (document.getElementById("UpdateEmpGroup").value == "") {
			alert("조건을 선택해주세요");
			return;
		} else {
			document.getElementById("Update").submit();
		}
	}
</script>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
		<h3>
			<i class='fas fa-user-edit' style='font-size: 24px'></i>채용공고 작성
		</h3>
		<form method="post" action="EmploymentWriteController.do" id="Write">
			<table class="table">
				<tr>
					<td id="grade-td"><span> 회사명 : ${sessionScope.mvo.comName}</span> 
					<select id="WriteEmpGroup" name="empGroup" onchange="" class="title_line grade">
							<!-- onchange이벤트 : select option value가 변경될 떄 발생되는 이벤트  -->
							<option value="">조건</option>
							<option value="정규직">정규직</option>
							<option value="계약직">계약직</option>
						</select>
					</td>
				</tr>
				<tr>
					<td><input class="title_line" type="text" name="title"
						placeholder="글제목" required="required"></td>
				</tr>
				<tr>
					<td><textarea rows="10" class="form-control" name="content"
							placeholder="본문내용" required="required"></textarea></td>
				</tr>
				<tr>
					<td class="emp-mail-form">
						<input type="text"  class="emp-email" id="employmentEmail" name="employmentEmail" placeholder="지원받을 이메일 주소를 입력해주세요 " required="required">
					</td>
				</tr>
			</table>
			
			<div class="text-center">
				<button type="button" class="btn btn-success" onclick="WriteCheck()">확인</button>
				<button type="reset" class="btn btn-success">취소</button>
			</div>
		</form>
	<script type="text/javascript">
		function WriteCheck(){
			if(document.getElementById("WriteEmpGroup").value==""){
				alert("조건을 선택해주세요");
				return;
			}else{
				if(document.getElementById("employmentEmail").value==""){
					alert("지원 받을 이메일을 입력해 주세요")
				}else{
					document.getElementById("Write").submit();
				}
				
			}
			
			
		}
		
	</script>
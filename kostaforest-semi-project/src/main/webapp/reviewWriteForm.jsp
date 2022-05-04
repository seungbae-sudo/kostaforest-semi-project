<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

		<h3>
			<i class='fas fa-user-edit' style='font-size: 24px'></i>리뷰 작성
		</h3>
		<form method="post" action="ReviewWriteController.do">
			<table class="table">
				<tr>
					<td id="grade-td"><span> 회사명 : 카카오(임시)</span> <select id="rating"
						onchange="findRating()" class="title_line grade">
							<!-- onchange이벤트 : select option value가 변경될 떄 발생되는 이벤트  -->
							<option value="">평점</option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option></td>
					</select>
				</tr>
				<tr>
					<td><input class="title_line" type="text" name="title"
						placeholder="글제목" required="required"></td>
				</tr>
				<tr>
					<td><textarea rows="10" class="form-control" name="content"
							placeholder="본문내용" required="required"></textarea></td>
				</tr>
			</table>

			<div class="text-center">
				<button type="submit" class="btn btn-success">확인</button>
				<button type="reset" class="btn btn-success">취소</button>
			</div>
	
		</form>

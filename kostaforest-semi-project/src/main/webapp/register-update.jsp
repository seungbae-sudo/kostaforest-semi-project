<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="kostaforest.semiproject.model.MemberDAO" %>
<%@ page import="kostaforest.semiproject.model.MemberVO" %>

		<form method="post" action="UpdateMemberController.do" style="max-width: 500px; margin: auto">
			<h2>회원정보 수정</h2>
			<br> 
			<div class="input-container">
				<i class="fa fa-user icon icon-reg"></i> <input class="input-field"
					type="text" placeholder="아이디" name="id" value="${sessionScope.mvo.id }" readonly="readonly">
			</div>

			<div class="input-container">
				<i class="fa fa-key icon icon-reg"></i> <input class="input-field"
					type="password" placeholder="패스워드" name="password" value="${sessionScope.mvo.password }">
			</div>

			<div class="input-container">
				<i class="fa fa-envelope icon icon-reg"></i> <input
					class="input-field" type="text" placeholder="회사명" name="comName" value="${sessionScope.mvo.comName}">
			</div>

			<button class="btn register-update-ok"type="submit">수정 완료</button>
		</form>

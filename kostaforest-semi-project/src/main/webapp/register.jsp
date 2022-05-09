<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

		<form method="post" id="register" action="MemberRagisterController.do" style="max-width: 500px; margin: auto">
			<h2>회원가입</h2>

			<br> <select id="group" name="memberGroup" onchange="">
				<!-- onchange이벤트 : select option value가 변경될 떄 발생되는 이벤트  -->
				<option value="">회원가입 분류</option>
				<option value="직장인">직장인</option>
				<option value="기업">기업</option>
			</select> <br>
			<br>

			<div class="input-container">
				<i class="fa fa-user icon icon-reg"></i> 
				<input class="input-field" type="text" placeholder="아이디" name="id" id="id" autofocus/>
					<input type="button" value="ID 중복확인" onclick="idCheck()">
			</div>

			<div class="input-container">
				<i class="fa fa-key icon icon-reg"></i> <input class="input-field"
					type="password" placeholder="패스워드" name="password">
					<input type="button" value="비밀번호 체크" onclick="chkPW">
			</div>

			<div class="input-container">
				<i class="fa fa-key icon icon-reg"></i> <input class="input-field"
					type="password" placeholder="패스워드 확인">
			</div>

			<div class="input-container">
				<i class="fa fa-envelope icon icon-reg"></i> <input
					class="input-field" type="text" placeholder="회사명" name="comName">
			</div>

			<button type="submit" class="btn">Register</button>
		</form>
			<script>
				function idCheck(){
			window.open("idCheckForm.jsp","idwin","width=400 height=350")
		}
				function chkPW(){
					var pattern1 = /[0-9]/; // 숫자
					var pattern2 = /[a-zA-Z]/; // 문자
					var pattern3 = /[~!@#$%^&*()_+|<>?:{}]/; // 특수문자
					if(!pattern1.test(str) || !pattern2.test(str) || !pattern3.test(str) || str.length < 8) {
						alert("비밀번호는 8자리 이상 문자, 숫자, 특수문자로 구성하여야 합니다.");
						return false;
					} else {
						return true;
					}
					}

				</script>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<form method="post" id="register" action="MemberRagisterController.do"
	onsubmit="return checkRegForm()">
	<h2>회원가입</h2>

	<br> <select id="group" name="memberGroup">
		<!-- onchange이벤트 : select option value가 변경될 떄 발생되는 이벤트  -->
		<option value="">회원가입 분류</option>
		<option value="직장인">직장인</option>
		<option value="기업">기업</option>
	</select> <br> <br>

	<div class="input-container">
		<i class="fa fa-user icon icon-reg"></i> <input class="input-field"
			type="text" placeholder="아이디" name="id" id="memberId"
			onkeyup="checkId()"> <span id="checkResult"></span>
	</div>

	<div class="input-container">
		<i class="fa fa-key icon icon-reg"></i> <input class="input-field"
			type="password" placeholder="패스워드" name="password" id="pw"
			onkeyup="checkpw()"> <span id="checkPw"></span>
	</div>

	<div class="input-container">
		<i class="fa fa-key icon icon-reg"></i> <input class="input-field"
			type="password" placeholder="패스워드 확인" name="password" id="pw2"
			onkeyup="checkpw()"> <span id="checkPwResult"></span>
	</div>

	<div class="input-container">
		<i class="fa fa-building icon icon-reg"></i> <input
			class="input-field" type="text" placeholder="회사명" name="comName">
	</div>

	<button type="button" class="btn register-btn" onclick="registerCheck()">Register</button>
</form>


<script type="text/javascript">
	let checkIdFlag = false;

	function checkRegForm() {
		if (checkIdFlag == false) {
			alert("아이디를 확인하세요");
			return false;// onsubmit 에 return false를 하면 전송되지 않는다 
		}
	}

	function checkpw() {
		let pw = document.getElementById("pw").value;
		let pw2 = document.getElementById("pw2").value;
		let checkPwResult = document.getElementById("checkPwResult");
		let checkPw = document.getElementById("checkPw");
		if (pw.length < 8) {
			checkPw.innerHTML = "<font color=red>비밀번호를 8자이상 입력하세요</font>";
			checkPwResult.innerHTML = "<font color=red>비밀번호를 일치시켜 주세요 </font>";
		}  else {// 입력한 비밀번호가 8자 이상이 될 때 ajax 방식으로 서버에 요청 
			checkPw.innerHTML = "<font color=green>비밀번호가 8자리 이상입니다</font>";		
		 if(pw==pw2) {
				checkPwResult.innerHTML = "<font color=green>동일한 비밀번호 입니다.</font>";
			}//else 
		}//else 
	}//function

	function checkId() {
		checkIdFlag = false;
		let memberId = document.getElementById("memberId").value;
		let checkResult = document.getElementById("checkResult");
		if (memberId.length < 4) {
			checkResult.innerHTML = "<font color=red>아이디를 4자이상 입력하세요</font>";
		} else {// 입력한 아이디가 4자 이상이 될 때 ajax 방식으로 서버에 요청 
			let xhr = new XMLHttpRequest();
			xhr.onload = function() {
				//alert(xhr.responseText);
				if (xhr.responseText == "ok") {
					checkResult.innerHTML = "<font color=green>아이디 사용가능</font>";
					checkIdFlag = true;
				} else {
					checkResult.innerHTML = "<font color=red>아이디 중복이므로 사용불가</font>";
				}
			}//callback
			xhr.open("get", "CheckIdController.do?id=" + memberId);
			xhr.send();
		}//else
	}//function

	function registerCheck() {
		let password = document.getElementById("pw").value;
		let conpassword = document.getElementById("pw2").value;
		if (document.getElementById("group").value == "") {
			alert("회원분류를 선택해주세요");
			return;
		} else if (password != conpassword) {
			alert("비밀번호가 일치하지 않습니다");
			return;
		} else {
			alert("회원가입을 축하합니다!\n로그인 페이지로 이동합니다");
			document.getElementById("register").submit();
		}
	}
</script>

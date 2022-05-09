<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<form method="post" id="register" action="MemberRagisterController.do"
	style="max-width: 500px; margin: auto" onsubmit="return checkRegForm()">
	<h2>회원가입</h2>

	<br> <select id="group" name="memberGroup">
		<!-- onchange이벤트 : select option value가 변경될 떄 발생되는 이벤트  -->
		<option value="">회원가입 분류</option>
		<option value="직장인">직장인</option>
		<option value="기업">기업</option>
	</select> <br> <br>

	<div class="input-container">
		<i class="fa fa-user icon icon-reg"></i> 
		<input class="input-field" type="text" placeholder="아이디" name="id" id="memberId" onkeyup="checkId()">
	</div>
	<span id="checkResult"></span> <br>

	<div class="input-container">
		<i class="fa fa-key icon icon-reg"></i> <input class="input-field"
			type="password" placeholder="패스워드" name="password" id="pw">
	</div>
	<br>

	<div class="input-container">
		<i class="fa fa-key icon icon-reg"></i> <input class="input-field"
			type="password" placeholder="패스워드 확인" name = "password" id="pw2">
	</div>
	<br>

	<div class="input-container">
		<i class="fa fa-envelope icon icon-reg"></i> <input
			class="input-field" type="text" placeholder="회사명" name="comName">
	</div>

</form>
<button type="button" class="btn" onclick="registerCheck()">Register</button>
<script type="text/javascript">
	let checkIdFlag = false;
	let password = document.getElementById("pw").value;
	let conpassword = document.getElementById("pw2").value;
	function checkRegForm() {
		if (password!=conpassword){
			alert("비밀번호가 일치하지 않습니다");
			return false;
		}else if (checkIdFlag == false) {
			alert("아이디를 확인하세요");
			return false;// onsubmit 에 return false를 하면 전송되지 않는다 
		}
	}
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
	
 	 function registerCheck(){
		if(document.getElementById("group").value ==""){
			alert("회원분류를 선택해주세요");
		return;
	}else{
	document.getElementById("register").submit();
		}
	}	  
	
	/* $(function() {
		//비밀번호 확인
		$('#pw2').blur(function() {
			if ($('#pw').val() != $('#pw2').val()) {
				if ($('#pw2').val() != '') {
					alert("비밀번호가 일치하지 않습니다.");
					$('#pw2').val('');
					$('#pw2').focus();
				}
			}
		})
	}); */


</script>

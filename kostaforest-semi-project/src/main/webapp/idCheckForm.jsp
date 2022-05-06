<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>  

<div class="row">
<div class="col-sm-8 offset-sm-2">
<form action="RegisterMemberController.do" method="post" id="registerForm" onsubmit="return checkRegForm()">
<input type="text" name="id" id="memberId" required="required" placeholder="아이디" onkeyup="checkId()">
<span id="checkResult"></span><br>
<input type="password" name="password" required="required" placeholder="패스워드"><br>
<input type="text" name="name" required="required" placeholder="이름"><br>
<input type="text" name="address" required="required" placeholder="주소"><br>
<input type="submit" value="회원가입">
</form>
<%-- memberId id text 입력양식에 keyup 이벤트를 이용해서 
아이디 중복확인을 ajax 방식으로 처리할 수 있다  --%>
<script type="text/javascript">
	/* 
		아이디 사용가능 상태일때만 가입시키도록 한다 
		아이디는 4자 이상 또는 사용불가시에는 alert()으로 아이디 중복확인하세요 보여주고
		서버에 전송시키지 않는다 
	*/
	let checkIdFlag=false;
	function checkRegForm() {
		if(checkIdFlag==false){
			alert("아이디 중복확인하세요");
			return false;// onsubmit 에 return false를 하면 전송되지 않는다 
		}
	}
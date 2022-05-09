<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>  

<div class="row">
<div class="col-sm-8 offset-sm-2">
<form  method="post" id="registerForm1" name="registerForm1" onsubmit="return checkRegForm()">
<input type="text" name="id" id="memberId" required="required" placeholder="아이디" onkeyup="checkId()">
<span id="checkResult"></span><br>
<input type="button" value="확인"  onclick="setid()"/>
<input type="button" value="닫기" onclick="wClose()"/>
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
	function checkId() {
		checkIdFlag=false;
		let memberId=document.getElementById("memberId").value;
		let checkResult=document.getElementById("checkResult");
		if(memberId.length<4){
			checkResult.innerHTML="<font color=pink>아이디는 4자이상</font>";
		}else{// 입력한 아이디가 4자 이상이 될 때 ajax 방식으로 서버에 요청 
			let xhr=new XMLHttpRequest();
			xhr.onload=function(){
				//alert(xhr.responseText);
				if(xhr.responseText=="ok"){
					checkResult.innerHTML="<font color=green>사용가능</font>";
					checkIdFlag=true;
				}else{
					checkResult.innerHTML="<font color=red>사용불가</font>";
				}					
			}//callback
			xhr.open("get", "CheckIdController.do?id="+memberId);
			xhr.send();
		}//else
	}//function
    function setid() {
	opener.document.getElementById("id").value = document.getElementById("memberId").value;
	window.close();
	}
    function wClose() {
        window.close();
    }
</script>
</div>
</div>

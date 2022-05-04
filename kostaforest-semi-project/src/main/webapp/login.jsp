<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
	<div class="wrap">
		<div class="form-wrap">
			<div class="button-wrap">
				<div id="btn"></div>
			</div>
			<div class="social-icons"></div>
			<form id="login" action="LoginController.do" class="input-group" method="post">
				<input type="text" name="id" class="input-field" placeholder="ID" required>
				<div class="social-icons"></div>
				<input type="password" name="password" class="input-field2" placeholder="PASSWORD" required >
				<div class="social-icons"></div>
				<button type="submit" class="submit"><font color="white">SIGN IN</font></button>
				<div class="social-icons"></div>
				<button id="test" type="button" onclick="moveRegiter();">SIGN UP</button>
				<div class="social-icons"></div>
			</form>

			 
			<!--  ajax 호출 tag
			<form id="login" action="#" class="input-group" method="post">
				<input type="text" name="id" class="input-field" placeholder="ID" required>
				<div class="social-icons"></div>
				<input type="password" name="password" class="input-field2" placeholder="PASSWORD" required >
				<div class="social-icons"></div>
				<button onclick="loginSubmit();"><font color="white">SIGN IN</font></button>
				<div class="social-icons"></div>
			</form>
			 -->
		</div>
	</div>
	<script>
		var x = document.getElementById("login");
		var y = document.getElementById("register");
		var z = document.getElementById("btn");

		function login() {
			x.style.left = "50px";
			y.style.left = "450px";
			z.style.left = "0";
		}

		function register() {
			x.style.left = "-400px";
			y.style.left = "50px";
			z.style.left = "110px";
		}
		
		function moveRegiter(){
			console.log('moveRegiter');
			window.location.href = 'register.jsp';
		}
		
		
		
		
		/* ajax example
		function loginSubmit(){
			console.log('loginSubmit');
			console.log($('input[name=id]').val());
			console.log($('input[name=password]').val());
				
			var prams = {
					"id":$('input[name=id]').val(),
					"password":$('input[name=password]').val()
			}
			
			console.log('prams'); 
			console.log(prams); 
			console.log(JSON.stringify(prams));
			
            $.ajax({
                type : "POST",            // HTTP method type(GET, POST) 형식이다.
                url : "LoginController.do",      // 컨트롤러에서 대기중인 URL 주소이다.
                data : JSON.stringify(prams),            // Json 형식의 데이터이다.
                success : function(result){ // 비동기통신의 성공일경우 success콜백으로 들어옵니다. 'res'는 응답받은 데이터이다.
                	alert("12");
                },
                error : function(XMLHttpRequest, textStatus, errorThrown){ // 비동기 통신이 실패할경우 error 콜백으로 들어옵니다.
                    alert("통신 실패.")
                }
            });
		}
		*/
		
		
	</script>

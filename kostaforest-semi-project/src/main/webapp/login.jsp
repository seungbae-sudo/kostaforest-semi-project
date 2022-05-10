<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  

		<div class="form-wrap">
			
			<form id="login" action="LoginController.do" class="input-group" method="post">
				<input type="text" name="id" class="input-field" placeholder="ID" required>
				<div class="social-icons"></div>
				<input type="password" name="password" class="input-field" placeholder="PASSWORD" required >
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
			window.location.href = 'MemberRagisterFormController.do';
		}
	</script>

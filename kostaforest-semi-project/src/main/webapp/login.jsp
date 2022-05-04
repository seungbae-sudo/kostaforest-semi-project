<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Add icon library -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
   href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script
   src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
<script
   src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
   src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

<script src="https://code.jquery.com/jquery-3.4.1.js"></script>

<style>
.fakeimg {
   height: 200px;
   background: #aaa;
}

.navbar{
   padding: 0.5rem 6rem;
}

* {box-sizing: border-box;}

.input-container {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  width: 100%;
  margin-bottom: 15px;
}

.icon {
  padding: 10px;
  background: #343A40;
  color: white;
  min-width: 50px;
  text-align: center;
  opacity: 0.8;
}

.input-field {
  width: 100%;
  padding: 10px;
  outline: none;
}

.input-field:focus {
  border: 2px solid dodgerblue;
}

/*회원가입 폼 CSS 조작*/

.btn {
  background-color: #343A40;
  color: #fff;
  padding: 15px 20px;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.8;
}

.btn:hover {
  opacity: 1;
 }
  
#group{
	width: 100%;
	height: 45px;
}

.icon-reg{
	line-height: 2;
}

/*여기서부터 css 조작*/
a {
	color: #343a40;
}

i {
	color: #343a40;
	font-size: 25px;
	padding-right: 10px;
}

.container {
	position: relative;
	margin-top: 90px;
}

.navbar {
	padding: 0.5rem 14rem;
}

.nav-link {
	margin-left: 20px;
}

.reg-form{
	flex: auto;
    display: flex;
    flex-direction: row-reverse;
}

.reg-form button{
	width: 100px;
    height: 35px;
    background: #fff;
    border-radius: 11px;
    border: 0;
    margin-right: 5px;
}
.search-form button{
    background-color:#343a40;
    position: absolute;
    top: -60px;
    right: 250px;
    border-radius: 18px;
    width: 50px;
    height: 40px;
}

.search {
	position: absolute;
	top: -60px;
	left: 50%;
	margin-left: -250px;
	width: 500px;
	height: 40px;
	line-height: 40px;
	text-align: center;
	border: 1px solid #343a40;
	border-radius: 30px;
}

.title {
	position: relative;
	margin-bottom: 20px;
}

.more {
	color: green; position : absolute;
	float: right;
	line-height: 1.5px;
	font-size: 16px;
	bottom: 11px;
	right: 20px;
	position: absolute;
}

.icon{
	font-size: 14px;
}
/*여기서부터 회원가입 css 조작*/
* {
    margin: 0;
    padding: 0;
}
.wrap {
    height: 100%;
    width: 100%;
    background-image: url(img/background.jpg);
    background-position: center;
    background-size: cover;
    position: absolute;
}
.form-wrap {
    width: 380px;
    height: 480px;
    position: relative;
    margin: 6% auto;
    background-color: white;
    padding: 5px;
    overflow: hidden;
}
.button-wrap {
    width: 220px;
    margin: 35px auto;
    position: relative;
    background-color: #f7f7f7;
    border-radius: 30px;
}
.togglebtn {
    padding: 10px 30px;
    cursor: pointer;
    background: transparent;
    border: 0;
    outline: none;
    position: relative;
}
#btn {
    top: 0;
    left: 0;
    position: absolute;
    width: 110px;
    height: 100%;
    background-color : #e9e9e9;
    border-radius: 30px;
    transition: .5s;
}
.social-icons {
    margin: 5px auto;
    text-align: center;
}
.social-icons img {
    width: 20px ;
    cursor: pointer;
}
.input-group {
    top: 120px;
    position: absolute;
    width: 280px;
    transition: .3s;
}
.input-field {
width: 1000px;
height: 70px;
background: #f7f7f7;
border-radius: 10px 10px 10px 10px;
border-top: none;
border-bottom: none;
border-left: none;
border-right: none; 
}

.input-field2 {
width: 1000px;
height: 70px;
background: #f7f7f7;
padding: 10px;
border-radius: 10px 10px 10px 10px;
border-top: none;
border-bottom: none;
border-left: none;
border-right: none; 

}

.submit {
width: 1000px;
height: 70px;
    background: #454545;
    border-radius: 10px;
    border: 0;
    margin-right: 5px;
}

#test{
width: 1000px;
height: 70px;
    background: white;
    border-radius: 10px;
    border-line: 1px;
    margin-right: 5px;
}
.checkbox {
    margin: 30px 10px 30px 0;
}
span {
    color: #777;
    font-size: 12px;
    bottom: 68px;
    position: absolute;
}
#login {
    left: 50px;
}
#register {
    left: 450px;
} 
</style>
</head>
<body>
   <div class="text-center" style="margin-bottom: 0">
		<h1>
			<img alt="logo" src="images/코스타1.png">
		</h1>
	</div>
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark ">
		<a class="navbar-brand" href="#">홈</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#collapsibleNavbar">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="collapsibleNavbar">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" href="#">회사 리뷰</a></li>
				<li class="nav-item"><a class="nav-link" href="#">채용 공고</a></li>
				<li class="nav-item"><a class="nav-link" href="#">문의 게시판</a></li>
			</ul>
			<div class="reg-form">
				<button>로그인</button>
				<button>회원가입</button>
			</div>
		</div>
	</nav>
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
</body>
</html>
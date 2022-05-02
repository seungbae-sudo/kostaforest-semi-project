<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>Bootstrap 4 Website Example</title>
<meta charset="utf-8">
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

   <div class="container" style="margin-top: 30px">
	
			<form action="/action_page.php" style="max-width:500px;margin:auto">
		  <h2>회원가입</h2>
		  
		  <br>
		  <select id="group" onchange=""> <!-- onchange이벤트 : select option value가 변경될 떄 발생되는 이벤트  -->
		<option value="">회원가입 분류 </option>
		<option value="employee">직장인</option>
		<option value="company">기업</option>
		</select>
		 <br><br>
		  
		  <div class="input-container">
		    <i class="fa fa-user icon icon-reg"></i>
		    <input class="input-field" type="text" placeholder="Username" name="usrnm">
		  </div>
		  
		  <div class="input-container">
		    <i class="fa fa-key icon icon-reg"></i>
		    <input class="input-field" type="password" placeholder="Password" name="psw">
		  </div>
		
		<div class="input-container">
		     <i class="fa fa-key icon icon-reg"></i>
		    <input class="input-field" type="password" placeholder="Password 확인" name="email">
		  </div>
		  
		  <div class="input-container">
		    <i class="fa fa-envelope icon icon-reg"></i>
		    <input class="input-field" type="text" placeholder="회사명" name="company">
		  </div>
		  
		  <button type="submit" class="btn">Register</button>
		</form>
     
	</div>
   <div class="jumbotron text-center" style="margin-bottom: 0">
      <p>Footer</p>
   </div>

</body>
</html>
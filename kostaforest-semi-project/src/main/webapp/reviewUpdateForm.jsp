<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>Bootstrap 4 Website Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Add icon library -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	

<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
	
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<style>

/*글제목, 유형선택 css*/

.container h3{
	text-indent: 7px;
}
.title_line{
width: 80%;
height: 35px;
}

.btn{
	background-color: #343a40;
	color:#fff;
}


.btn-success {
	border-color: #343a40;
}

.btn-success:hover{
	background-color: #343a40 !important; 
	border-line: none;
	opacity: 0.7;
}

#grade-td{
	position: relative;;
}

.grade {
	width: 20%;
	position: absolute;
	right: 21%;
	height: 30px;
}
.header {
	padding-top: 20px;
	padding-bottom: 30px;
}

.title {
	width: 50%;
}

.boardlist th, .boardlist td {
	text-align: center;
}

.fakeimg {
	height: 200px;
	background: #aaa;
}

.navbar {
	padding: 0.5rem 6rem;
}

* {
	box-sizing: border-box;
}

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

/*여기서부터 css 조작*/

.container {
	position: relative;
	margin-top: 90px;
}

a {
	color: #343a40;
}

i {
	color: #343a40;
	font-size: 25px;
	padding-right: 10px;
}

.navbar {
	padding: 0.5rem 14rem;
}

.nav-link {
	margin-left: 20px;
}

.reg-form {
	flex: auto;
	display: flex;
	flex-direction: row-reverse;
}

.reg-form button {
	width: 100px;
	height: 35px;
	background: #fff;
	border-radius: 11px;
	border: 0;
	margin-right: 5px;
}

.search-form button {
	background-color: #343a40;
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
	color: green;
	position: absolute;
	float: right;
	line-height: 1.5px;
	font-size: 16px;
	bottom: 11px;
	right: 20px;
	position: absolute;
}

.icon {
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
	<div class="container">
		<h3><i class='fas fa-eraser' style='font-size:24px'></i></i>리뷰 수정</h3>
		<form method="" action="">
			<table class="table">
			<tr>
				<td id="grade-td">
					<span> 회사명 : 카카오(임시)</span>
					<select id="" onchange="" class="title_line grade" > <!-- onchange이벤트 : select option value가 변경될 떄 발생되는 이벤트  -->
					<option value="">평점 </option>
					<option value="">1</option>
					<option value="">2</option>
					<option value="">3</option>
					<option value="">4</option>
					<option value="">5</option>
				</td>
				</select>
			</tr>
				<tr>
					<td><input class="title_line" type="text" name="title" placeholder="글제목"
						required="required"></td>
				</tr>
				<tr>
					<td><textarea rows="10" class="form-control" name="content"
							placeholder="본문내용" required="required"></textarea></td>
				</tr>
			</table>
			
			<div class="text-center">
				<button type="submit" class="btn btn-success">수정</button>
				<button type="reset" class="btn btn-success">취소</button>
			</div>
			
			</div>
			
			<div class="jumbotron text-center" style="margin-bottom: 0">
				<p>Footer</p>
			</div>
</body>
</html>
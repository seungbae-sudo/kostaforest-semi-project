<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>코스트 숲</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
	integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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

.reg-form-before{
	flex: auto;
    display: flex;
    flex-direction: row-reverse;
}


.reg-form-before button{
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

.reg-form-after{
	flex: auto;
    display: flex;
    flex-direction: row-reverse;
}

.reg-form-after span{
    color: #fff;
     line-height: 2.5;
}
.reg-form-after span b{
	font-size: 20px;
}

.reg-form-after button{
	background-color: #fff;
    border-radius: 18px;
    width: 117px;
    height: 40px;
    margin-left: 10px;
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
				<li class="nav-item"><a class="nav-link" href="EmploymentListController.do">채용 공고</a></li>
				<li class="nav-item"><a class="nav-link" href="#">문의 게시판</a></li>
			</ul>
<!-- 			<div class="reg-form-before">
				<button>로그인</button>
				<button>회원가입</button>
			</div> -->
			<div class="reg-form-after">
				<button>로그아웃</button>
				<button>회원정보 수정</button>
				<span><b>삼성기업</b> 님</span>
			</div>
		</div>
	</nav>

	<div class="container">
		<form action="" class="search-form">
			<input type="search" class="search" placeholder="검색어를 입력하세요">
			<button><img src="images/search.png"></button>
		</form>
		<table class="table">
			<h2 class="title">
				<i class="fas fa-coffee"></i>회사 생활 <span class="more"><a
					href="CommunityListDetailController.do?carNo=1">더보기</a></span>
			</h2>

			<tbody>
						<tr>
							<td class="col-sm-10"><a href="">여기가 글내용</a></td>
							<td class="col-sm-1"><i class='far fa-eye icon'></i>3</td>
							<td class="col-sm-1"><i class='far fa-heart icon'></i>4</td>
							
						</tr>
						<tr>
							<td ><a href="">여기가 글내용</a></td>
							<td ><i class='far fa-eye icon'></i>3</td>
							<td ><i class='far fa-heart icon'></i>4</td>
						</tr>
						<tr>
							<td ><a href="">여기가 글내용</a></td>
							<td ><i class='far fa-eye icon'></i>3</td>
							<td ><i class='far fa-heart icon'></i>4</td>
						</tr>
						<tr>
							<td ><a href="">여기가 글내용</a></td>
							<td ><i class='far fa-eye icon'></i>3</td>
							<td ><i class='far fa-heart icon'></i>4</td>
						</tr>
					</tbody>
		</table>


		<div class="row" style="margin-top: 70px">
			<div class="col-sm-6">
				<table class="table">
					<h2 class="title">
						<i class="fas fa-car"></i>취미생활 이야기 <span class="more"><a
							href="CommunityPostListController.do?carNo=2">더보기</a></span>
					</h2>

					<tbody>
						<tr>
							<td class="col-sm-8"><a href="">여기가 글내용</a></td>
							<td class="col-sm-2"><i class='far fa-eye icon'></i>3</td>
							<td class="col-sm-2"><i class='far fa-heart icon'></i>4</td>
						</tr>
						<tr>
							<td ><a href="">여기가 글내용</a></td>
							<td ><i class='far fa-eye icon'></i>3</td>
							<td ><i class='far fa-heart icon'></i>4</td>
						</tr>
						<tr>
							<td ><a href="">여기가 글내용</a></td>
							<td ><i class='far fa-eye icon'></i>3</td>
							<td ><i class='far fa-heart icon'></i>4</td>
						</tr>
						<tr>
							<td ><a href="">여기가 글내용</a></td>
							<td ><i class='far fa-eye icon'></i>3</td>
							<td ><i class='far fa-heart icon'></i>4</td>
						</tr>
					</tbody>
				</table>
				<hr class="d-sm-none">
			</div>



			<div class="col-sm-6">
				<table class="table">
					<h2 class="title">
						<i class="fas fa-cloud"></i>주식 이야기<span class="more"><a
							href="CommunityPostListController.do?carNo=3">더보기</a></span>
					</h2>

					<tbody>
						<tr>
							<td class="col-sm-8"><a href="">여기가 글내용</a></td>
							<td class="col-sm-2"><i class='far fa-eye icon'></i>3</td>
							<td class="col-sm-2"><i class='far fa-heart icon'></i>4</td>
						</tr>
						<tr>
							<td ><a href="">여기가 글내용</a></td>
							<td ><i class='far fa-eye icon'></i>3</td>
							<td ><i class='far fa-heart icon'></i>4</td>
						</tr>
						<tr>
							<td ><a href="">여기가 글내용</a></td>
							<td ><i class='far fa-eye icon'></i>3</td>
							<td ><i class='far fa-heart icon'></i>4</td>
						</tr>
						<tr>
							<td ><a href="">여기가 글내용</a></td>
							<td ><i class='far fa-eye icon'></i>3</td>
							<td ><i class='far fa-heart icon'></i>4</td>
						</tr>
					</tbody>
				</table>
			</div>

		</div>
	</div>

	<div class="jumbotron text-center" style="margin-bottom: 0">
		<p>Footer</p>
	</div>



</body>
</html>

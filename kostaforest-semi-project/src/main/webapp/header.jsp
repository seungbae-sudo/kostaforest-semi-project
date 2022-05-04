<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
				<li class="nav-item"><a class="nav-link"
					href="EmploymentListController.do">채용 공고</a></li>
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
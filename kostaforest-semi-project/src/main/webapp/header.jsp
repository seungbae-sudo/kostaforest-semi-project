<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="text-center" style="margin-bottom: 0">
		<h1>
			<a href="MainHomtListController.do"><img alt="logo" src="images/코스타1.png"></a>
		</h1>

	</div>

	<nav class="navbar navbar-expand-sm bg-dark navbar-dark ">
		<a class="navbar-brand" href="MainHomtListController.do">홈</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#collapsibleNavbar">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="collapsibleNavbar">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" href="ReviewPostListController.do" onclick="checkLogin()">회사 리뷰</a></li>
				<li class="nav-item"><a class="nav-link"
					href="EmploymentPostListController.do">채용 공고</a></li>
				<li class="nav-item"><a class="nav-link" href="FAQController.do" >문의 게시판</a></li>
			</ul>
			<c:choose>
			<c:when test="${sessionScope.mvo==null }">  
				<div class="reg-form-before">
				<form method="post" action="LoginFormController.do" >
				<button type="submit">로그인</button>
				</form>
				<form method="post" action="MemberRagisterFormController.do">
				<button type="submit">회원가입</button>
				</form>
				</div>
			</c:when>  
			<c:otherwise>
			<div class="reg-form-after">
				<form method="post" action="LogoutController.do">
				<button>로그아웃</button>
				</form>
				<form method="post" action="UpdateMemberFormController.do">
				<button>회원정보 수정</button>
				</form>
				<span><b>${sessionScope.mvo.comName}</b> 님</span>
			</div>
			</c:otherwise>
			</c:choose>
		</div>
	</nav>
	
	<script type="text/javascript">
	function checkLogin() {
		if(${sessionScope.mvo==null})
			alert("로그인이 필요한 서비스 입니다");
	}
</script>
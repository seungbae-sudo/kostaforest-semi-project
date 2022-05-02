<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FAQ Form</title>
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
/* FAQ */
.faq {
	border-bottom: 0px solid #ddd;
	margin: 1em 0;
	text-align: center;

}

.faq .faqHeader {
	position: relative;
	zoom: 1;
	}

.faq .faqHeader .showAll {
	position: absolute;
	bottom: 0;
	right: 0;
	border: 0;
	padding: 0;
	overflow: visible;
	background: none;
	cursor: pointer;
}

.faq .faqBody {
	margin: 0;
	padding: 0
}

.faq .faqBody .article {
	list-style: none
}

.faq .q {
	margin:
}

.faq .q a {
	display: block;
	text-align: left;
	background: url("faq1_icon_q.png") no-repeat 0 0;
	padding: 0 0 0 35px;
	font-size: 18px;
	color: #5e5e5e;
	font-weight: bold;
	line-height: 27px;
	cursor: pointer;
	padding-left: 500px;
	padding-bottom: 10px;
	margin: 10px 0;
	!
	important
}

.faq .q a:hover, .faq .q a:active, .faq .q a:focus {
	
}

.faq .a {
	background: #f7f7f7 url("faq1_icon_a.png") no-repeat 40px 10px;
	padding: 10px 75px 10px 75px;
	font-size: 14px;
	font-color: 6b6b6b;
	color: #444444;
	line-height: 22px;
	border-top: 1px solid #bdbdbd;
	margin: 5px 0 0 0;
}
</style>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-latest.js"></script>
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
	<div class="faq">
		<div class="faqHeader">
			<!--button type="button" class="showAll">답변 모두 여닫기</button-->
		</div>
		<h3>F A Q</h3>
		<ul class="faqBody">
			<li class="article" id="a1">
				<p class="q">
					<a href="#a1">Q.자주 묻는 질문 1번</a>
				</p>
				<p class="a">A.답변하는곳 답변하는곳<br>답변하는곳 답변하는곳</p>
			</li>
			<li class="article" id="a2">
				<p class="q">
					<a href="#a2">Q.자주 묻는 질문 2번</a>
				</p>
				<p class="a">A.답변하는곳 답변하는곳<br>답변하는곳 답변하는곳</p>
			</li>
			<li class="article" id="a3">
				<p class="q">
					<a href="#a3">Q.자주 묻는 질문 3번</a>
				</p>
				<p class="a">A.답변하는곳 답변하는곳<br>답변하는곳 답변하는곳</p>
			</li>
			<li class="article" id="a4">
				<p class="q">
					<a href="#a4">Q.자주 묻는 질문 4번</a>
				</p>
				<p class="a">A.답변하는곳 답변하는곳<br>답변하는곳 답변하는곳</p>
			</li>
		</ul>
	</div>

	<script>
		jQuery(function($) {
			// Frequently Asked Question
			var article = $('.faq>.faqBody>.article');
			article.addClass('hide');
			article.find('.a').hide();
			article.eq(0).removeClass('hide');
			article.eq(0).find('.a').show();
			$('.faq>.faqBody>.article>.q>a').click(function() {
				var myArticle = $(this).parents('.article:first');
				if (myArticle.hasClass('hide')) {
					article.addClass('hide').removeClass('show');
					article.find('.a').slideUp(100);
					myArticle.removeClass('hide').addClass('show');
					myArticle.find('.a').slideDown(100);
				} else {
					myArticle.removeClass('show').addClass('hide');
					myArticle.find('.a').slideUp(100);
				}
				return false;
			});
			$('.faq>.faqHeader>.showAll').click(function() {
				var hidden = $('.faq>.faqBody>.article.hide').length;
				if (hidden > 0) {
					article.removeClass('hide').addClass('show');
					article.find('.a').slideDown(100);
				} else {
					article.removeClass('show').addClass('hide');
					article.find('.a').slideUp(100);
				}
			});
		});
	</script>

</body>
</html>
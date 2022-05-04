<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<form action="CommunitySearchController.do" method="get" class="search-form">

	<input type="hidden" name="pageNo" value="1">
	<input type="search" name="title" class="search" placeholder="검색어를 입력하세요">
	<button type="submit">
		<img src="images/search.png">
	</button>
</form>
<table class="table">
	<h2 class="title">
		<i class="fas fa-coffee"></i>회사 이야기 <span class="more"><a
			href="CommunityPostListController.do?carNo=1">더보기</a></span>
	</h2>

	<tbody>
		<c:forEach items="${List1 }" var="list">
		<tr>
			<td class="col-sm-10"><a href="CommunityPostDetailController.do?no=${list.boardNo}&carNo=1&pageNo=1">${list.title }</a></td>
			<td class="col-sm-1"><i class='far fa-eye icon'></i>${list.hits }</td>
			<td class="col-sm-1"><i class='far fa-heart icon'></i>${list.likeNo }</td>
		</tr>
		</c:forEach>
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
				<c:forEach items="${List2 }" var="list">
		<tr>
			<td class="col-sm-10"><a href=" CommunityPostDetailController.do?no=${list.boardNo}&carNo=2&pageNo=1">${list.title }</a></td>
			<td class="col-sm-1"><i class='far fa-eye icon'></i>${list.hits }</td>
			<td class="col-sm-1"><i class='far fa-heart icon'></i>${list.likeNo }</td>
		</tr>
		</c:forEach>
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
					<c:forEach items="${List3 }" var="list">
		<tr>
			<td class="col-sm-10"><a href=" CommunityPostDetailController.do?no=${list.boardNo}&carNo=3&pageNo=1 ">${list.title }</a></td>
			<td class="col-sm-1"><i class='far fa-eye icon'></i>${list.hits }</td>
			<td class="col-sm-1"><i class='far fa-heart icon'></i>${list.likeNo }</td>
		</tr>
		</c:forEach>			</tbody>
		</table>
	</div>

</div>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<form action="CommunitySearchController.do" method="get" class="search-form" id="Search">

	<input type="hidden" name="pageNo" value="1">
	<input type="text" id ="title" name="title" class="search" placeholder="검색어를 입력하세요">
	<button type="button" onclick="checkLogin2()">
		<img src="images/search.png">
	</button>
</form>
<c:choose>
	<c:when test="${sessionScope.mvo.memberGroup eq '직장인' }">
	<h2 class="title">
		<i class="fas fa-coffee"></i>회사 이야기 <span class="more"><a
			href="CommunityPostListController.do?carNo=1">더보기</a></span>
	</h2>
	
<table class="table">
	
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
	<h2 class="title">
		<i class="fas fa-car"></i>취미생활 이야기 <span class="more"><a
		href="CommunityPostListController.do?carNo=2">더보기</a></span>
	</h2>
		<table class="table">
			

			<tbody>
				<c:forEach items="${List2 }" var="list">
		<tr>
			<td class="col-sm-8"><a href=" CommunityPostDetailController.do?no=${list.boardNo}&carNo=2&pageNo=1">${list.title }</a></td>
			<td class="col-sm-2"><i class='far fa-eye icon'></i>${list.hits }</td>
			<td class="col-sm-2"><i class='far fa-heart icon'></i>${list.likeNo }</td>
		</tr>
		</c:forEach>
			</tbody>
		</table>
		<hr class="d-sm-none">
	</div>


	<div class="col-sm-6">
			<h2 class="title">
			<i class="fas fa-cloud"></i>주식 이야기<span class="more"><a
			href="CommunityPostListController.do?carNo=3">더보기</a></span>
			</h2>

		<table class="table">

			<tbody>
					<c:forEach items="${List3 }" var="list">
		<tr>
			<td class="col-sm-8"><a href=" CommunityPostDetailController.do?no=${list.boardNo}&carNo=3&pageNo=1 ">${list.title }</a></td>
			<td class="col-sm-2"><i class='far fa-eye icon'></i>${list.hits }</td>
			<td class="col-sm-2"><i class='far fa-heart icon'></i>${list.likeNo }</td>
		</tr>
		</c:forEach>			
		</tbody>
		</table>
		
	</div>

</div>
</c:when>
<c:otherwise>

	<h2 class="title">
		<i class="fas fa-coffee"></i>회사 이야기 <span class="more">더보기</span>
	</h2>

<table class="table">
	<tbody>
		<c:forEach items="${List1 }" var="list">
		<tr>
			<td class="col-sm-10">${list.title }</td>
			<td class="col-sm-1"><i class='far fa-eye icon'></i>${list.hits }</td>
			<td class="col-sm-1"><i class='far fa-heart icon'></i>${list.likeNo }</td>
		</tr>
		</c:forEach>
	</tbody>
</table>

<div class="row" style="margin-top: 70px">
	<div class="col-sm-6">
	<h2 class="title">
		<i class="fas fa-car"></i>취미생활 이야기 <span class="more">더보기</span>
	</h2>
		<table class="table">
			

			<tbody>
				<c:forEach items="${List2 }" var="list">
		<tr>
			<td class="col-sm-8">${list.title }</td>
			<td class="col-sm-2"><i class='far fa-eye icon'></i>${list.hits }</td>
			<td class="col-sm-2"><i class='far fa-heart icon'></i>${list.likeNo }</td>
		</tr>
		</c:forEach>
			</tbody>
		</table>
		<hr class="d-sm-none">
	</div>


		
	<div class="col-sm-6">
		<h2 class="title">
			<i class="fas fa-cloud"></i>주식 이야기<span class="more">더보기</span>
			</h2>
		<table class="table">

			<tbody>
					<c:forEach items="${List3 }" var="list">
		<tr>
			<td class="col-sm-8">${list.title }</td>
			<td class="col-sm-2"><i class='far fa-eye icon'></i>${list.hits }</td>
			<td class="col-sm-2"><i class='far fa-heart icon'></i>${list.likeNo }</td>
		</tr>
		</c:forEach>			
		</tbody>
		</table>		
	</div>
</div>
</c:otherwise>
</c:choose>
<script type="text/javascript">
	function checkLogin2() {
		if(${sessionScope.mvo==null}){
			alert("로그인이 필요한 서비스 입니다.");
			document.getElementById("title").value ="";
		}else if(${sessionScope.mvo.memberGroup eq '기업'}){
			alert("기업은 검색할 수 없습니다.");
			document.getElementById("title").value ="";
		}else{
			document.getElementById("Search").submit();
		}
	}
</script>
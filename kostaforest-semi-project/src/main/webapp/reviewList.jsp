<%-- 리뷰 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<h2 class="title">
	<i class="fas fa-coffee"></i>리뷰 리스트
	<c:if test="${sessionScope.mvo.memberGroup eq '직장인' }">
		<form action="ReviewWriteFormController.do" method="get">
			<button class="write">글쓰기</button>
		</form>
	</c:if>
</h2>
<hr>
<div class="ranking-wrap">
	<h3 class="ranking-title">
		<i class="fa fa-trophy" style="font-size: 24px"></i>기업별 리뷰 평균 평점
	</h3>
	<br>
	<div class="ranking-box">
		<c:forEach items="${ratingList}" var="ratingList">
			<div class="ranking">
				<h3>${ratingList.mvo.comName}</h3>
				<span>평균 평점 : ${ratingList.rating}</span>
			</div>
		</c:forEach>
	</div>
</div>
<table class="table">

	<tbody>
		<c:forEach items="${revList}" var="list">
			<tr>
				<%-- <td class="col-sm-1"></i>${list.reNo}</td> --%>
				<td class="col-sm-8"><a
					href="ReviewPostDetailController.do?no=${list.reNo}&nowPage=${pagination.nowPage}">[ <b>${list.mvo.comName} </b> ] ${list.title}</a></td>
				<td class="col-sm-1"><i class='far fa-eye icon'></i>${list.hits}</td>
			</tr>
		</c:forEach>
	</tbody>
</table>

<ul class="pagination justify-content-center">
	<c:if test="${pagination.previousPageGroup}">
		<li class="page-item"><a class="page-link"
			href="ReviewPostListController.do?pageNo=${pagination.startPageOfPageGroup-1}">Previous</a></li>
	</c:if>
	<c:forEach begin="${pagination.startPageOfPageGroup}"
		end="${pagination.endPageOfPageGroup}" var="page">
		<c:choose>
			<c:when test="${page==pagination.nowPage}">
				<li class="page-item active"><a class="page-link"
					href="ReviewPostListController.do?pageNo=${page}">${page}</a></li>
			</c:when>
			<c:otherwise>
				<li class="page-item"><a class="page-link"
					href="ReviewPostListController.do?pageNo=${page}">${page}</a></li>
			</c:otherwise>
		</c:choose>
	</c:forEach>
	<c:if test="${pagination.nextPageGroup}">
		<li class="page-item"><a class="page-link"
			href="ReviewPostListController.do?pageNo=${pagination.endPageOfPageGroup+1}">Next</a></li>
	</c:if>
</ul>


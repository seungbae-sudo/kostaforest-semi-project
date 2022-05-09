<%-- 리뷰 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
		
		<table class="table">
			<h2 class="title">
				<i class="fas fa-coffee"></i>리뷰 리스트
				<c:if test="${sessionScope.mvo.memberGroup eq '직장인' }" >
					<form action="ReviewWriteFormController.do" method="get">
					<button class="write">글쓰기</button>
				</form>
				</c:if>
			</h2>
			
			<hr> <hr>
			<div style='margin-left:30%';>
				<h3><i class="fa fa-trophy" style="font-size:24px"></i>기업별 리뷰 평균 평점</h3><br>
				<c:forEach items="${ratingList}" var="ratingList">
					<h3><p href="ReviewPostDetailController.do?no=${ratingList.reNo}"></p>${ratingList.mvo.comName}
					
					</h3>
					
					<span>평균 평점 : ${ratingList.rating}</span>
				</c:forEach>
			</div>
			
			<br><br>

			<tbody>
						<c:forEach items="${revList}" var="list">
						<tr>
							<%-- <td class="col-sm-1"></i>${list.reNo}</td> --%>
							<td class="col-sm-8"><a href="ReviewPostDetailController.do?no=${list.reNo}">${list.title}</a></td>
							<td class="col-sm-1"><i class='far fa-eye icon'></i>${list.hits}</td>
						</tr>
						</c:forEach>
					</tbody>
		</table>
		
		  <ul class="pagination justify-content-center">
		    <li class="page-item"><a class="page-link" href="javascript:void(0);">Previous</a></li>
		    <li class="page-item"><a class="page-link" href="javascript:void(0);">1</a></li>
		    <li class="page-item"><a class="page-link" href="javascript:void(0);">2</a></li>
		    <li class="page-item"><a class="page-link" href="javascript:void(0);">3</a></li>
		    <li class="page-item"><a class="page-link" href="javascript:void(0);">4</a></li>
		    <li class="page-item"><a class="page-link" href="javascript:void(0);">5</a></li>
		    <li class="page-item"><a class="page-link" href="javascript:void(0);">Next</a></li>
		  </ul>
		

<%-- 커뮤니티 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
		<h2 class="title">				
			'${requestScope.title }'검색결과
		</h2>
		<table class="table">

				<c:if test="${sessionScope.mvo.memberGroup eq '직장인' }">
					<form action="CommunityWriteFormController.do" method="get">
					<button class="write">글쓰기</button>
					</form>
				</c:if>
			
				
			<tbody>
			<c:choose>
			<c:when test="${sessionScope.mvo.memberGroup eq '직장인' }">
			
					<c:forEach items="${cmuList}" var="list">
						<tr>
							<td class="col-sm-10"><a href="CommunityPostDetailController.do?no=${list.boardNo }&carNo=${list.cvo.carNo}&pageNo=${pageNo}">${list.title }</a></td>
							<td class="col-sm-1"><i class='far fa-eye icon'></i> ${list.hits } </td>
							<td class="col-sm-1"><a href ="LikeUpController.do?no=${list.boardNo }&carNo=${list.cvo.carNo}"><i class='far fa-heart icon'></i></a>${list.likeNo } </td>
							
						</tr>
					</c:forEach>		
					</c:when>
					<c:otherwise>
						<c:forEach items="${cmuList}" var="list">
						<tr>
							<td class="col-sm-10">${list.title }</td>
							<td class="col-sm-1"><i class='far fa-eye icon'></i> ${list.hits } </td>
							<td class="col-sm-1"><i class='far fa-heart icon'></i>${list.likeNo } </td>
							
						</tr>
					</c:forEach>		
					
					</c:otherwise>
				</c:choose>					
				</tbody>
				
		</table>


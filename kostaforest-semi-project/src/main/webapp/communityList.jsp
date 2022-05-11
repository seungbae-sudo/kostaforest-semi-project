<%-- 커뮤니티 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
		
		<h2 class="title">		
					<c:if test="${carNo==1}">
					<i class="fas fa-coffee"></i> 회사 이야기 
					</c:if>
					<c:if test="${carNo==2 }">
					<i class="fas fa-car"></i>취미생활 이야기 
					</c:if>
					<c:if test="${carNo==3 }">
					<i class="fas fa-cloud"></i>주식 이야기 
					</c:if>
		</h2>
					
		<table class="table">		
					<c:choose>
						<c:when test="${sessionScope.mvo.memberGroup eq '직장인' }">
							<form action="CommunityWriteFormController.do" method="get">
								<input type="hidden" name="no" value="${carNo}">
								<input type="hidden" name="pageNo" value="${pagination.nowPage}">
								<button type="submit" class="write">글쓰기</button>
							</form>
						</c:when>
					</c:choose>
			
			<tbody>
			<c:choose>
			<c:when test="${sessionScope.mvo.memberGroup eq '직장인' }">
			
					<c:forEach items="${cmuList}" var="list">
						<tr>
							<td class="col-sm-9"><a href="CommunityPostDetailController.do?no=${list.boardNo }&carNo=${carNo}&pageNo=${pagination.nowPage}">${list.title }</a></td>
							<td class="col-sm-1"><i class='far fa-eye icon'></i> ${list.hits } </td>
							<td class="col-sm-1"><i class='far fa-heart icon'></i>${list.likeNo } </td>
							
						</tr>
					</c:forEach>		
					</c:when>
					<c:otherwise>
						<c:forEach items="${cmuList}" var="list">
						<tr>
							<td class="col-sm-9">${list.title }</td>
							<td class="col-sm-1"><i class='far fa-eye icon'></i> ${list.hits } </td>
							<td class="col-sm-1"><i class='far fa-heart icon'></i>${list.likeNo } </td>							
						</tr>
					</c:forEach>							
					</c:otherwise>
				</c:choose>					
				</tbody>
				
		</table>
		
		  <ul class="pagination justify-content-center" style="margin:20px 0">
 <c:if test="${pagination.previousPageGroup }">
     <li class="page-item"><a class="page-link" href="CommunityPostListController.do?pageNo=${pagination.startPageOfPageGroup-1}&carNo=${carNo}">Previous</a></li> 
    </c:if>
    <c:forEach begin="${pagination.startPageOfPageGroup}" end="${pagination.endPageOfPageGroup}" var="page">
    <c:choose>
    	<c:when test="${page==pagination.nowPage}">
    		  <li class="page-item active"><a class="page-link" href="CommunityPostListController.do?pageNo=${page}&carNo=${carNo}">${page}</a></li>
    	</c:when>
    	<c:otherwise>
    		  <li class="page-item"><a class="page-link" href="CommunityPostListController.do?pageNo=${page}&carNo=${carNo}">${page}</a></li>
    	</c:otherwise>
    </c:choose>
    
  
    </c:forEach>
    <c:if test="${pagination.nextPageGroup}">
    <li class="page-item"><a class="page-link" href="CommunityPostListController.do?pageNo=${pagination.endPageOfPageGroup+1}&carNo=${carNo}">Next</a></li>
   </c:if>
  </ul>

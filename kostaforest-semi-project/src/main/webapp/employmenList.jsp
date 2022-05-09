<%-- 채용 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

		
		<table class="table">
			<h2 class="title">
				<i class="fas fa-coffee"></i>채용 공고
				<c:if test="${sessionScope.mvo.memberGroup eq '기업'}">
					<form action="EmploymentWriteFormController.do" method="get">
						<button class="write">글쓰기</button>
					</form>
				</c:if>
			</h2>

			<tbody>
					<c:forEach items="${empList}" var="list">
						<tr>
							<td class="col-sm-10">
								<a href="EmploymentPostDetailController.do?no=${list.boardNo}">[<span>${list.empGroup}</span>]
									${list.title}
								</a>
							</td>

							<td class="col-sm-1">
								<i class='far fa-eye icon'></i>${list.hits}
							</td> 
						
						</tr>
					</c:forEach>
				</tbody>
		</table>

		  <ul class="pagination justify-content-center">
		  	<c:if test="${pagination.previousPageGroup}">
		    	<li class="page-item"><a class="page-link" href="EmploymentListController.do?pageNo=${pagination.startPageOfPageGroup-1}">Previous</a></li>
		    </c:if>
		    <c:forEach begin="${pagination.startPageOfPageGroup}" end="${pagination.endPageOfPageGroup}" var="page">
			    <c:choose>
				    <%--현재 페이지이면 --%>
				    <c:when test="${page==pagination.nowPage}"> 
				    	<li class="page-item active"><a class="page-link" href="EmploymentListController.do?pageNo=${page}">${page}</a></li>
					</c:when>
					<c:otherwise>
						<li class="page-item"><a class="page-link" href="EmploymentListController.do?pageNo=${page}">${page}</a></li>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			<c:if test="${pagination.nextPageGroup}">
		    	<li class="page-item"><a class="page-link" href="EmploymentListController.do?pageNo=${pagination.endPageOfPageGroup+1}">Next</a></li>
		    </c:if>
		  </ul>
		

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
		    <li class="page-item"><a class="page-link" href="javascript:void(0);">Previous</a></li>
		    <li class="page-item"><a class="page-link" href="javascript:void(0);">1</a></li>
		    <li class="page-item"><a class="page-link" href="javascript:void(0);">2</a></li>
		    <li class="page-item"><a class="page-link" href="javascript:void(0);">3</a></li>
		    <li class="page-item"><a class="page-link" href="javascript:void(0);">4</a></li>
		    <li class="page-item"><a class="page-link" href="javascript:void(0);">5</a></li>
		    <li class="page-item"><a class="page-link" href="javascript:void(0);">Next</a></li>
		  </ul>
		

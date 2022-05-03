<%-- 커뮤니티 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap 4 Website Example</title>
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
.fakeimg {
	height: 200px;
	background: #aaa;
}

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

.reg-form{
	flex: auto;
    display: flex;
    flex-direction: row-reverse;
}

.reg-form button{
	    width: 100px;
    height: 35px;
    background: #fff;
    border-radius: 11px;
    border: 0;
    margin-right: 5px;
}
.search-form button{
    background-color:#343a40;
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
	color: green; position : absolute;
	float: right;
	line-height: 1.5px;
	font-size: 16px;
	bottom: 11px;
	right: 20px;
	position: absolute;
}

.icon{
	font-size: 14px;
}

/*showList */

a.page-link{
	color: #343a40;
}
.write{
	font-size: 17px;
    background: #fff;
    border-radius: 5px;
    width: 80px;
    height: 30px;
    position: absolute;
    right: 40px;
    top: 17px;
}
</style>
</head>
<script type="text/javascript">
	function submit(obj) {
		obj.submit();
	}
</script>
<body>
		
	<div class="container">
		
		<table class="table">
			<h2 class="title">		
					<i class="fas fa-coffee"></i>
					
					<form action="CommunityPostListController.do" method="get">
				
						<select id ="carNo" name="carNo" onchange="submit(this.form)">
							<!-- onchange이벤트 : select option value가 변경될 떄 발생되는 이벤트  -->
							<option value="">게시판을 선택해주세요.</option>
							
						    <option value="1"  <c:if test="${carNo==1}"> selected </c:if> >회사 이야기</option>
						    <option value="2" <c:if test="${carNo==2}"> selected </c:if>>취미 생활 이야기</option>
						    <option value="3" <c:if test="${carNo==3}"> selected </c:if>>주식 이야기</option>
						</select>
					</form>
					<form action="CommunityWriteFormController.do" method="get">
					<button class="write">글쓰기</button>
					</form>
			</h2>
				
			<tbody>
					<c:forEach items="${cmuList}" var="list">
						<tr>
							<td class="col-sm-10"><a href="CommunityPostDetailController.do?no=${list.boardNo }">${list.title }</a></td>
							<td class="col-sm-1"><i class='far fa-eye icon'></i> ${list.hits } </td>
							<td class="col-sm-1"><a href ="LikeUpController.do?no=${list.boardNo }"><i class='far fa-heart icon'></i></a>${list.likeNo } </td>
							
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
		
	</div>
		
		
</body>
</html>
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

.reg-form {
	flex: auto;
	display: flex;
	flex-direction: row-reverse;
}

.reg-form button {
	width: 100px;
	height: 35px;
	background: #fff;
	border-radius: 11px;
	border: 0;
	margin-right: 5px;
}

.search-form button {
	background-color: #343a40;
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
	color: green;
	position: absolute;
	float: right;
	line-height: 1.5px;
	font-size: 16px;
	bottom: 11px;
	right: 20px;
	position: absolute;
}

.icon {
	font-size: 14px;
}

/*showList */
a.page-link {
	color: #343a40;
}

.write {
	font-size: 17px;
	background: #fff;
	border-radius: 5px;
	width: 80px;
	height: 30px;
	position: absolute;
	right: 40px;
	top: 17px;
}

/*detailContent*/
li {
	list-style: none;
}

.content {
	border: 1px solid lightgray;
	border-radius: 10px;
	padding: 10px;
	height: 400px;
	width: 100%;
}

ul.info {
	display: flex;
	justify-content: flex-end;
}

ul.info li {
	margin-right: 20px;
}

.comment{
	margin-top: 30px;
}
.table-comment{
	margin-top: 20px;
}

.comment-write{
	    width: 89%;
    	height: 90px;
    	margin-right: 10px;
    	border-radius: 20px;
    	padding:10px 10px;
    	
}
.comment-write-ok{
	width: 10%;
	height: 90px;
	border-radius: 20px;
}

.up-space{
	margin-top: 30px;
}

</style>
</head>
<body>

	<div class="container">
		<h3 class="title-detail">${cvo.title}</h3>
		<hr>
		<ul class="info">
			<li>작성자 회사 : ${cvo.mvo.comName }</li>
			<li>작성일 : ${cvo.timePosted }</li>
			<li>조회수 : ${cvo.hits }</li>
		</ul>
		<div class="content">
			<pre>${cvo.content }</pre>
		</div>
		<form action="CommunityDeleteController.do" method="post" id= "DeleteForm">
			<input type="hidden" name="no" value="${cvo.boardNo}">
					
			</form>
			<form action="CommunityUpdateFormController.do" method="post" id="UpdateForm">
				<input type="hidden" name="no" value="${cvo.boardNo}">
	
			</form>
			<button type ="button" onclick="updatepost()"> 수정</button>
			<button type ="button" onclick= "deletepost()" > 삭제</button>
			
			<script type="text/javascript">
				function deletepost() {
					if(confirm("삭제 하시겠습니까?")){
						document.getElementById("DeleteForm").submit();
					}
				
				}
				function updatepost() {
					if(confirm("수정 하시겠습니까?")){
						document.getElementById("UpdateForm").submit();
					}
				
				}
			</script>

		<div class="comment">
			<table class="table table-comment">
				<h4 class="title">
					<i class="fas fa-cloud"></i>댓글<span class="more">
				</h4>
				
				<form action="CommentWriteController.do" method="post" class="comment-form">
					<input type="text" class="comment-write" placeholder="댓글을 입력하세요">
					<button class="comment-write-ok">작성</button>
				</form>
				
				<tbody class="up-space">
					<tr>
						<td class="col-sm-8">여기가 글내용</td>
						<td class="col-sm-2">2022.05.02</td>
					</tr>
					<tr>
						<td>여기가 글내용</td>
						<td>3</td>
					</tr>
					<tr>
						<td>여기가 글내용</td>
						<td>3</td>
					</tr>
					<tr>
						<td>여기가 글내용</td>
						<td>3</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>
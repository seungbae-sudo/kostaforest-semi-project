<%-- 리뷰 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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
<body>
		
	<div class="container">
		
		<table class="table">
			<h2 class="title">
				<i class="fas fa-coffee"></i>회사 생활 
				<button class="write">글쓰기</button>
			</h2>

			<tbody>
						<tr>
							<td class="col-sm-10"><a href="">여기가 글내용</a></td>
							<td class="col-sm-1"><i class='far fa-eye icon'></i>3</td>
							<td class="col-sm-1"><i class='far fa-heart icon'></i>4</td>
							
						</tr>
						<tr>
							<td ><a href="">여기가 글내용</a></td>
							<td ><i class='far fa-eye icon'></i>3</td>
							<td ><i class='far fa-heart icon'></i>4</td>
						</tr>
						<tr>
							<td ><a href="">여기가 글내용</a></td>
							<td ><i class='far fa-eye icon'></i>3</td>
							<td ><i class='far fa-heart icon'></i>4</td>
						</tr>
						<tr>
							<td ><a href="">여기가 글내용</a></td>
							<td ><i class='far fa-eye icon'></i>3</td>
							<td ><i class='far fa-heart icon'></i>4</td>
						</tr>
						<tr>
							<td class="col-sm-10"><a href="">여기가 글내용</a></td>
							<td class="col-sm-1"><i class='far fa-eye icon'></i>3</td>
							<td class="col-sm-1"><i class='far fa-heart icon'></i>4</td>
							
						</tr>
						<tr>
							<td ><a href="">여기가 글내용</a></td>
							<td ><i class='far fa-eye icon'></i>3</td>
							<td ><i class='far fa-heart icon'></i>4</td>
						</tr>
						<tr>
							<td ><a href="">여기가 글내용</a></td>
							<td ><i class='far fa-eye icon'></i>3</td>
							<td ><i class='far fa-heart icon'></i>4</td>
						</tr>
						<tr>
							<td ><a href="">여기가 글내용</a></td>
							<td ><i class='far fa-eye icon'></i>3</td>
							<td ><i class='far fa-heart icon'></i>4</td>
						</tr>
						<tr>
							<td class="col-sm-10"><a href="">여기가 글내용</a></td>
							<td class="col-sm-1"><i class='far fa-eye icon'></i>3</td>
							<td class="col-sm-1"><i class='far fa-heart icon'></i>4</td>
							
						</tr>
						
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
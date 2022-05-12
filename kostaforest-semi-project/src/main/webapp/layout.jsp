<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>코스트 숲</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
 <link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
	integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ"
	crossorigin="anonymous"> 
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
	
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<style>

*{
	font-family: 'Noto Sans KR', sans-serif;
}  
        
/*평점 별모양 css*/
.badge{
	line-height:30px;
	border-radius: 50%;
	background-color: #343a40 ;
	box-shadow: 0 0 7px black;
	padding-right: 20px;
	padding-left: 20px;
}

.all_star{width:180px; height:25px; margin:10px;font-family: "Font Awesome 5 Free"; font-weight:900; }

.all_star option{font-family: "Font Awesome 5 Free"; font-weight:900;}


/*communityUpdateForm.jsp*/
/*글제목, 유형선택 css*/
.container h3 {
	text-indent: 7px;
}

.title_line {
	width: 100%;
	height: 45px;
	padding: 6px;
}

.btn-success {
	border-color: #343a40;
}

.btn-success:hover {
	background-color: #343a40 !important;
	border-line: none;
	opacity: 0.7;
}

.header {
	padding-top: 20px;
	padding-bottom: 30px;
}
`
.boardlist th, .boardlist td {
	text-align: center;
}

.fakeimg {
	height: 200px;
	background: #aaa;
}


* {
	box-sizing: border-box;
}

.input-container {
	width: 100%;
	margin-bottom: 15px;
}

.icon {
 	font-size: 14px;
	padding: 10px;
	min-width: 50px;
	text-align: center;
	opacity: 0.8;
}

.input-field:focus {
	border: 2px solid dodgerblue;
}

/*여기서부터 css 조작*/
.container {
   position: relative;
   margin-top: 90px;
}

a {
   color: #343a40;
}

i {
   color: #343a40;
   font-size: 25px;
   padding-right: 10px;
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
   align-items: center;
}

.reg-form button {
   width: 100px;
   height: 35px;
   background: #fff;
   border-radius: 11px;
   border: 0;
   margin-right: 5px;
}

.reg-form-before {
   flex: auto;
   display: flex;
   flex-direction: row-reverse;
}

.reg-form-before button {
   width: 100px;
   height: 35px;
   background: #fff;
   border-radius: 11px;
   border: 0;
   margin-right: 5px;
}

.reg-form-after {
   flex: auto;
   display: flex;
   flex-direction: row-reverse;
}

.reg-form-after span {
   color: #fff;
   line-height: 2.5;
}

.reg-form-after span b {
   font-size: 20px;
}

.reg-form-after button {
   background-color: #fff;
   border-radius: 18px;
   width: 117px;
   height: 40px;
   margin-left: 10px;
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
   position: absolute;
   float: right;
   line-height: 1.5px;
   font-size: 16px;
   bottom: 11px;
   right: 20px;
   position: absolute;
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
    height: 500px;
    width: 100%;
    overflow: scroll;
    font-size: 19px;
      -ms-overflow-style: none; /* IE and Edge */
    scrollbar-width: none;
}
.content::-webkit-scrollbar {
    display: none;
}

ul.info {
	display: flex;
	justify-content: flex-end;
}

ul.info li {
	margin-right: 20px;
}

.comment {
	margin-top: 30px;
}

.table-comment {
	margin-top: 20px;
}

.comment-write {
	width: 85%;
	height: 90px;
	margin-right: 10px;
	border-radius: 20px;
	padding: 10px 10px;
}

.comment-write-ok {
	width: 10%;
	height: 90px;
	border-radius: 20px;
}

.up-space {
	margin-top: 30px;
}

.text-center.space-top{
	margin-top: 30px;
}


/* FAQ */



/*회원가입 폼 CSS 조작*/
.btn {
	background-color: #343A40;
	color: #fff;
	padding: 15px 20px;
	border: none;
	cursor: pointer;
	opacity: 0.8;
}

.btn:hover {
	opacity: 1;
}

#group {
	margin-left: 50PX;
    width: 45%;
    height: 45px;
    padding: 10px;
    border-radius: 8px;
}

.icon-reg {
	line-height: 3;
}

/*여기서부터 회원가입 css 조작*/
* {
	margin: 0;
	padding: 0;
}

.form-wrap {
	width: 380px;
	height: 400px;
	margin: 0% auto;
	background-color: white;
	padding: 5px;
	overflow: hidden;
}

.button-wrap {
	width: 220px;
	margin: 35px auto;
	position: relative;
	background-color: #f7f7f7;
	border-radius: 30px;
}

.togglebtn {
	padding: 10px 30px;
	cursor: pointer;
	background: transparent;
	border: 0;
	outline: none;
	position: relative;
}

#btn {
	top: 0;
	left: 0;
	position: absolute;
	width: 110px;
	height: 100%;
	background-color: #e9e9e9;
	border-radius: 30px;
	transition: .5s;
}

.register-btn {
	width: 43%;
    margin-left: 59px;
}
.register-btn:hover{
opacity: 0.7;
color: #fff;
}

.social-icons {
	margin: 5px auto;
	text-align: center;
}

.social-icons img {
	width: 20px;
	cursor: pointer;
}

.input-group {

	width: 280px;

}

.input-field {
	width: 275px;
	height: 70px;
	background: #f7f7f7;
	padding: 10px;
	border-radius: 10px 10px 10px 10px;
	border-top: none;
	border-bottom: none;
	border-left: none;
	border-right: none;
	margin-bottom: 9px;
}


.submit {
	width: 1000px;
	height: 70px;
	background: #454545;
	border-radius: 10px;
	border: 0;
	margin-right: 5px;
}

#test {
	width: 1000px;
	height: 70px;
	background: white;
	border-radius: 10px;
	border-line: 1px;
	margin-right: 5px;
}

.checkbox {
	margin: 30px 10px 30px 0;
}


#login {
	left: 50px;
}

#register {
	left: 450px;
	max-width: 562px; 
	margin-left: 370px;
}
#register h2{
	margin-left: 20%;
}
#register div.input-container input{
	width:250px;
	margin-right: 20px;
}

* {
	box-sizing: border-box;
}


/*detailContent*/
li {
	list-style: none;
}

.table-comment {
	margin-top: 20px;
}



/*rating*/
.rating {
	text-align: center;
	padding: 20px;
}

/*employmentWriteFrom*/
.emp-mail-form input{
	width: 360px;
    height: 40px;
    padding-left: 10px;
}

.emp-wrap{
	margin-top: 40px;
	margin-bottom: 30px;
}
.emp-mail-click a{
	font-size: 20px;
    background: #343a40!important;
    color: #fff;
    padding: 15px 40px;
    border-radius: 5px;
}

.footer{
	margin-top: 100px;
}


.emp-email{
	width: 28%;
    padding: 6px;
}

/*pagination 버튼*/
.page-item.active .page-link{
	background-color: #343a40!important;
    border-color: #343a40!important;
    margin-right: 5px;
    margin-left: 5px;
}
    
   /* review ranking*/
   .ranking{
   	width: 140px;
    text-align: center;
    height: 130px;
    box-shadow: 2px 4px 6px lightgrey;
    line-height: 3;
    padding: 19px;
    border-radius: 10%;
    margin: 0 30px 30px;
   }
   
  .ranking-wrap{
  	background: whitesmoke;
    width: 100%;
    height: 260px;
    padding: 18px;
  }
       
 .ranking-wrap h3.ranking-title{
 	padding: 10px 30px;
    width: 400px;
    border: 1px solid #20452b;
    border-radius: 20px;
    margin-left: 30%;
 }  
 
 .ranking-box{
 	display: flex;
    margin-left: 170px;
 }
 
 .ranking{
 	width: 180px;
    text-align: center;
    height: 130px;
    box-shadow: 2px 4px 6px lightgrey;
    line-height: 3;
    padding: 19px;
    border-radius: 10%;
    margin: 0 30px 0px;
 }
  #grade-td{
  	padding:  0!important;
  }

 #grade-td span{
 	width: 75%;
    display: inline-block;
    text-align: right;
    padding-right: 30px;
    font-size: 18px;
    margin: 0.75rem;
}

 
 #grade-td select{
 	width: 20%;
 	padding: 6px;
 }
title_line_update{
 	width: 200px;
    height: 35px;
    padding-left: 10px;
}
   
.active -scroll{
  position: fixed;
  top: 0px;
}

.register-update-ok{
	width: 50%;
    margin-left: 56px;
}
</style>
</head>
<body>

	<c:import url="header.jsp" />

	<div class="container">
		<c:import url="${requestScope.url}" />
	</div>

	<div class="jumbotron text-center footer" style="margin-bottom: 0">
		<img alt="logo" style="width:20%" src="images/코스타1.png">
		<p>238기 세미프로젝트 1조 <b>열쩡! 열쩡!</b> </p>
	</div>



</body>
</html>
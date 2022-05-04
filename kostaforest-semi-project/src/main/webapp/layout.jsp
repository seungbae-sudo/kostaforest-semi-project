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
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

<style>

/*communityUpdateForm.jsp*/
/*글제목, 유형선택 css*/
.container h3 {
	text-indent: 7px;
}

.title_line {
	width: 80%;
	height: 35px;
}

.btn {
	background-color: #343a40;
	color: #fff;
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

.title {
	width: 50%;
}

.boardlist th, .boardlist td {
	text-align: center;
}

.fakeimg {
	height: 200px;
	background: #aaa;
}

.navbar {
	padding: 0.5rem 6rem;
}

* {
	box-sizing: border-box;
}

.input-container {
	display: -ms-flexbox; /* IE10 */
	display: flex;
	width: 100%;
	margin-bottom: 15px;
}

.icon {
	padding: 10px;
	background: #343A40;
	color: white;
	min-width: 50px;
	text-align: center;
	opacity: 0.8;
}

.input-field {
	width: 100%;
	padding: 10px;
	outline: none;
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

/*communityWriteForm*/

/*글제목, 유형선택 css*/
.container h3 {
	text-indent: 7px;
}

.title_line {
	width: 80%;
	height: 35px;
}

.btn {
	background-color: #343a40;
	color: #fff;
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

.title {
	width: 50%;
}

.boardlist th, .boardlist td {
	text-align: center;
}

.fakeimg {
	height: 200px;
	background: #aaa;
}

.navbar {
	padding: 0.5rem 6rem;
}

* {
	box-sizing: border-box;
}

.input-container {
	display: -ms-flexbox; /* IE10 */
	display: flex;
	width: 100%;
	margin-bottom: 15px;
}

.icon {
	padding: 10px;
	background: #343A40;
	color: white;
	min-width: 50px;
	text-align: center;
	opacity: 0.8;
}

.input-field {
	width: 100%;
	padding: 10px;
	outline: none;
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

/*detail.Content.jsp*/
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

.comment {
	margin-top: 30px;
}

.table-comment {
	margin-top: 20px;
}

.comment-write {
	width: 89%;
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

/*EmployementDetailContent.jsp*/
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

.comment {
	margin-top: 30px;
}

.table-comment {
	margin-top: 20px;
}

.comment-write {
	width: 89%;
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

/*detail */
.updateANDdelete button {
	
}

/*employementUpdateForm.jsp*/

/*글제목, 유형선택 css*/
.container h3 {
	text-indent: 7px;
}

.title_line {
	width: 80%;
	height: 35px;
}

.btn {
	background-color: #343a40;
	color: #fff;
}

.btn-success {
	border-color: #343a40;
}

.btn-success:hover {
	background-color: #343a40 !important;
	border-line: none;
	opacity: 0.7;
}

#grade-td {
	position: relative;;
}

.grade {
	width: 20%;
	position: absolute;
	right: 21%;
	height: 30px;
}

.header {
	padding-top: 20px;
	padding-bottom: 30px;
}

.title {
	width: 50%;
}

.boardlist th, .boardlist td {
	text-align: center;
}

.fakeimg {
	height: 200px;
	background: #aaa;
}

.navbar {
	padding: 0.5rem 6rem;
}

* {
	box-sizing: border-box;
}

.input-container {
	display: -ms-flexbox; /* IE10 */
	display: flex;
	width: 100%;
	margin-bottom: 15px;
}

.icon {
	padding: 10px;
	background: #343A40;
	color: white;
	min-width: 50px;
	text-align: center;
	opacity: 0.8;
}

.input-field {
	width: 100%;
	padding: 10px;
	outline: none;
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

/*employementWriteForm.jsp*/

/*글제목, 유형선택 css*/
.container h3 {
	text-indent: 7px;
}

.title_line {
	width: 80%;
	height: 35px;
}

.btn {
	background-color: #343a40;
	color: #fff;
}

.btn-success {
	border-color: #343a40;
}

.btn-success:hover {
	background-color: #343a40 !important;
	border-line: none;
	opacity: 0.7;
}

#grade-td {
	position: relative;;
}

.grade {
	width: 20%;
	position: absolute;
	right: 21%;
	height: 30px;
}

.header {
	padding-top: 20px;
	padding-bottom: 30px;
}

.title {
	width: 50%;
}

.boardlist th, .boardlist td {
	text-align: center;
}

.fakeimg {
	height: 200px;
	background: #aaa;
}

.navbar {
	padding: 0.5rem 6rem;
}

* {
	box-sizing: border-box;
}

.input-container {
	display: -ms-flexbox; /* IE10 */
	display: flex;
	width: 100%;
	margin-bottom: 15px;
}

.icon {
	padding: 10px;
	background: #343A40;
	color: white;
	min-width: 50px;
	text-align: center;
	opacity: 0.8;
}

.input-field {
	width: 100%;
	padding: 10px;
	outline: none;
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

/*faq*/

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
/* FAQ */
.faq {
	border-bottom: 0px solid #ddd;
	margin: 1em 0;
	text-align: center;
}

.faq .faqHeader {
	position: relative;
	zoom: 1;
}

.faq .faqHeader .showAll {
	position: absolute;
	bottom: 0;
	right: 0;
	border: 0;
	padding: 0;
	overflow: visible;
	background: none;
	cursor: pointer;
}

.faq .faqBody {
	margin: 0;
	padding: 0
}

.faq .faqBody .article {
	list-style: none
}

.faq .q {
	margin:
}

.faq .q a {
	display: block;
	text-align: left;
	background: url("faq1_icon_q.png") no-repeat 0 0;
	padding: 0 0 0 35px;
	font-size: 18px;
	color: #5e5e5e;
	font-weight: bold;
	line-height: 27px;
	cursor: pointer;
	padding-left: 500px;
	padding-bottom: 10px;
	margin: 10px 0;
	!
	important
}

.faq .q a:hover, .faq .q a:active, .faq .q a:focus {
	
}

.faq .a {
	background: #f7f7f7 url("faq1_icon_a.png") no-repeat 40px 10px;
	padding: 10px 75px 10px 75px;
	font-size: 14px;
	font-color: 6b6b6b;
	color: #444444;
	line-height: 22px;
	border-top: 1px solid #bdbdbd;
	margin: 5px 0 0 0;
}

/*index.jsp*/
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

.search-form button {
	background-color: #343a40;
	position: absolute;
	top: -60px;
	right: 250px;
	border-radius: 18px;
	width: 50px;
	height: 40px;
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

/* login.jsp */
.fakeimg {
	height: 200px;
	background: #aaa;
}

.navbar {
	padding: 0.5rem 6rem;
}

* {
	box-sizing: border-box;
}

.input-container {
	display: -ms-flexbox; /* IE10 */
	display: flex;
	width: 100%;
	margin-bottom: 15px;
}

.icon {
	padding: 10px;
	background: #343A40;
	color: white;
	min-width: 50px;
	text-align: center;
	opacity: 0.8;
}

.input-field {
	width: 100%;
	padding: 10px;
	outline: none;
}

.input-field:focus {
	border: 2px solid dodgerblue;
}

/*회원가입 폼 CSS 조작*/
.btn {
	background-color: #343A40;
	color: #fff;
	padding: 15px 20px;
	border: none;
	cursor: pointer;
	width: 100%;
	opacity: 0.8;
}

.btn:hover {
	opacity: 1;
}

#group {
	width: 100%;
	height: 45px;
}

.icon-reg {
	line-height: 2;
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
/*여기서부터 회원가입 css 조작*/
* {
	margin: 0;
	padding: 0;
}

.wrap {
	height: 100%;
	width: 100%;
	background-image: url(img/background.jpg);
	background-position: center;
	background-size: cover;
	position: absolute;
}

.form-wrap {
	width: 380px;
	height: 480px;
	position: relative;
	margin: 6% auto;
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

.social-icons {
	margin: 5px auto;
	text-align: center;
}

.social-icons img {
	width: 20px;
	cursor: pointer;
}

.input-group {
	top: 120px;
	position: absolute;
	width: 280px;
	transition: .3s;
}

.input-field {
	width: 1000px;
	height: 70px;
	background: #f7f7f7;
	border-radius: 10px 10px 10px 10px;
	border-top: none;
	border-bottom: none;
	border-left: none;
	border-right: none;
}

.input-field2 {
	width: 1000px;
	height: 70px;
	background: #f7f7f7;
	padding: 10px;
	border-radius: 10px 10px 10px 10px;
	border-top: none;
	border-bottom: none;
	border-left: none;
	border-right: none;
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

span {
	color: #777;
	font-size: 12px;
	bottom: 68px;
	position: absolute;
}

#login {
	left: 50px;
}

#register {
	left: 450px;
}

/*register*/
.fakeimg {
	height: 200px;
	background: #aaa;
}

.navbar {
	padding: 0.5rem 6rem;
}

* {
	box-sizing: border-box;
}

.input-container {
	display: -ms-flexbox; /* IE10 */
	display: flex;
	width: 100%;
	margin-bottom: 15px;
}

.icon {
	padding: 10px;
	background: #343A40;
	color: white;
	min-width: 50px;
	text-align: center;
	opacity: 0.8;
}

.input-field {
	width: 100%;
	padding: 10px;
	outline: none;
}

.input-field:focus {
	border: 2px solid dodgerblue;
}

/*회원가입 폼 CSS 조작*/
.btn {
	background-color: #343A40;
	color: #fff;
	padding: 15px 20px;
	border: none;
	cursor: pointer;
	width: 100%;
	opacity: 0.8;
}

.btn:hover {
	opacity: 1;
}

#group {
	width: 100%;
	height: 45px;
}

.icon-reg {
	line-height: 2;
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

/*reviewDetailContent.jsp*/
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

.comment {
	margin-top: 30px;
}

.table-comment {
	margin-top: 20px;
}

.comment-write {
	width: 89%;
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

/*rating*/
.rating {
	text-align: center;
	padding: 20px;
}

/*reviewUpdateform.jsp*/

/*글제목, 유형선택 css*/
.container h3 {
	text-indent: 7px;
}

.title_line {
	width: 80%;
	height: 35px;
}

.btn {
	background-color: #343a40;
	color: #fff;
}

.btn-success {
	border-color: #343a40;
}

.btn-success:hover {
	background-color: #343a40 !important;
	border-line: none;
	opacity: 0.7;
}

#grade-td {
	position: relative;;
}

.grade {
	width: 20%;
	position: absolute;
	right: 21%;
	height: 30px;
}

.header {
	padding-top: 20px;
	padding-bottom: 30px;
}

.title {
	width: 50%;
}

.boardlist th, .boardlist td {
	text-align: center;
}

.fakeimg {
	height: 200px;
	background: #aaa;
}

.navbar {
	padding: 0.5rem 6rem;
}

* {
	box-sizing: border-box;
}

.input-container {
	display: -ms-flexbox; /* IE10 */
	display: flex;
	width: 100%;
	margin-bottom: 15px;
}

.icon {
	padding: 10px;
	background: #343A40;
	color: white;
	min-width: 50px;
	text-align: center;
	opacity: 0.8;
}

.input-field {
	width: 100%;
	padding: 10px;
	outline: none;
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

/*reviewWriteForm */

/*글제목, 유형선택 css*/
.container h3 {
	text-indent: 7px;
}

.title_line {
	width: 80%;
	height: 35px;
}

.btn {
	background-color: #343a40;
	color: #fff;
}

.btn-success {
	border-color: #343a40;
}

.btn-success:hover {
	background-color: #343a40 !important;
	border-line: none;
	opacity: 0.7;
}

#grade-td {
	position: relative;;
}

.grade {
	width: 20%;
	position: absolute;
	right: 21%;
	height: 30px;
}

.header {
	padding-top: 20px;
	padding-bottom: 30px;
}

.title {
	width: 50%;
}

.boardlist th, .boardlist td {
	text-align: center;
}

.fakeimg {
	height: 200px;
	background: #aaa;
}

.navbar {
	padding: 0.5rem 6rem;
}

* {
	box-sizing: border-box;
}

.input-container {
	display: -ms-flexbox; /* IE10 */
	display: flex;
	width: 100%;
	margin-bottom: 15px;
}

.icon {
	padding: 10px;
	background: #343A40;
	color: white;
	min-width: 50px;
	text-align: center;
	opacity: 0.8;
}

.input-field {
	width: 100%;
	padding: 10px;
	outline: none;
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

/*showList1.jsp*/
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

/*showList2.jsp*/
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

/*showList3*/
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
</style>
</head>
<body>

	<c:import url="header.jsp" />

	<div class="container">
		<c:import url="${requestScope.url}" />
	</div>

	<div class="jumbotron text-center" style="margin-bottom: 0">
		<p>Footer</p>
	</div>



</body>
</html>
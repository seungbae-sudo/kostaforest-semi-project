<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  

<form action="FAQController.do">
<div class="container">
  <h2>자주 묻는 질문 TOP 5</h2>
  <p>더욱 궁금하신 사항이 있다면, <strong>이메일 문의</strong>를 통해 더욱 빠른 답변을 받아보실 수 있습니다. <br><br>
 	 <button type="button" class="btn btn-secondary" style='width:20%;'><a href="mailto:sojung2017083@gmail.com" style='color:#fff;'>이메일문의</a></button>
  </p>
  <div id="accordion">
    <div class="card">
      <div class="card-header">
        <a class="card-link" data-toggle="collapse" href="#collapseOne">
         	Q. 정말 익명게시판이 맞나요? 
        </a>
      </div>
      <div id="collapseOne" class="collapse show" data-parent="#accordion">
        <div class="card-body">
          A. 네 맞습니다. '코스타 숲'은 익명이 보장되는 커뮤니티 사이트입니다. 안심하시고 솔직한 활동 부탁드립니다.  :)
        </div>
      </div>
    </div>
    
    
    
    <div class="card">
      <div class="card-header">
        <a class="collapsed card-link" data-toggle="collapse" href="#collapseTwo">
        	Q. 기업으로 로그인 할 경우 커뮤니티 게시판을 이용할 수 없나요?
      </a>
      </div>
      <div id="collapseTwo" class="collapse" data-parent="#accordion">
        <div class="card-body">
          	A) 네, 커뮤니티 게시판은 직장인으로 로그인한 회원만 상세보기 및 글쓰기가 가능합니다.
        </div>
      </div>
    </div>
    
    
    <div class="card">
      <div class="card-header">
        <a class="collapsed card-link" data-toggle="collapse" href="#collapseThree">
          Q. 로그인 하지 않은 경우 이용할 수 있는 게시판은 어떤 것이 있나요?
        </a>
      </div>
      <div id="collapseThree" class="collapse" data-parent="#accordion">
        <div class="card-body">
        	A. 비회원의 경우 '채용공고게시판'을 이용하실 수 있습니다.
        </div>
      </div>
      
      
      <div class="card">
      <div class="card-header">
        <a class="collapsed card-link" data-toggle="collapse" href="#collapseFour">
          Q. 아이디, 비밀번호를 분실할 경우 어떻게 해야하나요?
        </a>
      </div>
      <div id="collapseFour" class="collapse" data-parent="#accordion">
        <div class="card-body">
        	A. 아이디, 비밀번호 분실문의는 <a href="mailto:sojung2017083@gmail.com"> 이메일 </a> 로 문의 부탁드립니다.
        </div>
      </div>
    </div>
    
    
    
    <div class="card">
      <div class="card-header">
        <a class="collapsed card-link" data-toggle="collapse" href="#collapseFive">
          Q. 아이디 변경이 가능한가요?
        </a>
      </div>
      <div id="collapseFive" class="collapse" data-parent="#accordion">
        <div class="card-body">
         	A. 최초로 설정한 아이디는 추후 변경이 불가합니다. 신중하게 선택부탁드립니다.
        </div>
      </div>
    </div>
  </div>
</div>
</form>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  

<form action="FAQController.do">
<div class="container">
  <h2>자주 묻는 질문 TOP 5</h2>
  <p>더욱 궁금하신 사항이 있다면, <strong>이메일 문의</strong>를 통해 더욱 빠른 답변을 받아보실 수 있습니다. <br><br>
 <a href="mailto:kostaforest@gmail.com" style='color:#fff;'> <button type="button" class="btn btn-secondary" style='width:20%;'>이메일문의</button></a>
  </p>
  </div>
    
  <div id="accordion">
  <c:forEach items="${faqList }" var="list">
    <div class="card">
      <div class="card-header">
        <a class="card-link" data-toggle="collapse" href="#collapse${list.faqNo}">
         	Q. ${list.ask}
        </a>
      </div>
      <div id="collapse${list.faqNo}" class="collapse" data-parent="#accordion">
        <div class="card-body">
          A. ${list.answer}
        </div>
      </div>
    </div> 
 </c:forEach>
</div><%--아코디언 --%>
    
   
</form>


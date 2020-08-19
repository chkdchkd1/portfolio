<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    

	  <form action="<%=request.getContextPath()%>/login" method="POST">
	         <div class="box-main">
	           <div class="box-container">
	               <div class="l-box">
	                   <span class="l-text">아이디</span>
	                   <input type="text" name="id">
	               </div>
	               <div class="l-box">
	                   <span class="l-text">비밀번호</span>
	                   <input type="password" name="pw">
	               </div>
	               <button class="btn-login" type="submit">로그인</button>
	           </div>
	       </div>
	</form>

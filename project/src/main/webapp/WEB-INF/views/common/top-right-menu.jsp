<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<title>top right menu</title>
</head>
<body>
     <div class="codrops-container">
       <nav class="loging-box">
         <ul>
	           <li>
	           		<a href="<%=request.getContextPath()%>/login">로그인</a>
	           	</li>
	           <li>
	           		회원가입
	           	</li>
           <li>로그아웃 </li>
           <li>
         	  <a href="<%=request.getContextPath()%>/admin">관리자페이지</a>
         	  </li>
           <li>회원정보</li>
           <li><a href="<%=request.getContextPath()%>/myOrder/list">예매확인/취소</a></li>
         </ul>
       </nav>
     </div>
</body>
</html>
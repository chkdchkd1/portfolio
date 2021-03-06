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
         
         	<c:if test="${user != null}">
	           <li>
	           		<c:if test ="${user.id ne 'admin'}"><a style="font-weight: bold;text-decoration: underline;">${user.name}회원</a></c:if>
	           		<c:if test ="${user.id eq 'admin'}"><a style="font-weight: bold;text-decoration: underline;">관리자</a></c:if>
	           	</li>
	         </c:if>
         
         	<c:if test="${user == null}">
	           <li>
	           		<a href="<%=request.getContextPath()%>/login">로그인</a>
	           	</li>
	           <li>
	           		<a href="<%=request.getContextPath()%>/signUp">회원가입</a>
	           	</li>
	         </c:if>
	         
           <c:if test="${user != null}">
           	<li>
           	<a href="<%=request.getContextPath()%>/logout">로그아웃</a>
           	</li>
           	</c:if>
          
          <c:if test="${user.id == 'admin'}">
           <li>
         	  <a href="<%=request.getContextPath()%>/admin">관리자페이지</a>
         	</li>
         </c:if>
         	  
           <c:if test ="${user != null && user.id != 'admin'}">
           <li>
           	<a href="<%=request.getContextPath()%>/modifyMyInfo">회원정보</a>
           	</li>
           <li><a class ="myOrder" href="<%=request.getContextPath()%>/myOrder/list">예매확인/취소</a></li>
           </c:if>
         </ul>
       </nav>
     </div>

<script>


	
</script>
</body>
</html>
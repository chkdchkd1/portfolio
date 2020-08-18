<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<html>
<head>
<title>스프링</title>
<jsp:include page="/WEB-INF/views/include/head.jsp"></jsp:include>
</head>
<body>
	<div class="frame">
    	<tiles:insertAttribute name="side-left-menu"/>
    	<div class = "right-container">
    		<div class = "content">
	        	<tiles:insertAttribute name="top-right-menu"/>
	        		<div class ="main-content">
						<tiles:insertAttribute name="body" />
					</div>
			</div>
		</div>
	</div>
</body>
</html>
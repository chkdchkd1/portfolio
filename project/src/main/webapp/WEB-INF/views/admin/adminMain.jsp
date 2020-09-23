<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
  <style>
  	.adminMenu-box a{
  	color : #7f807d;
  	font-size: 35px;
  	}
  </style>
 
 <div class="adminMenu-box">
                    <ul>
                        <li>
                   		  <div style="margin-top: 20px">
                   		  <a href="<%=request.getContextPath()%>/admin/registerProduct">
                   		  		<i class="fas fa-pen"></i><br>
                            	<span style="margin-top: 9px;">상품등록</span>
                            	</a>
                           	 </div>
                    		</li>
                    		  <li>
                   		  <div style="margin-top: 20px">
                   		   <a href="<%=request.getContextPath()%>/admin/ProductAdmin">
                   		  		<i class="fas fa-edit"></i><br>
                            	<span style="margin-top: 5px;">상품관리</span>
                            	</a>
                           	 </div>
                    		</li>
                    		  <li>
                   		  <div style="margin-top: 20px">
                   		   <a href="<%=request.getContextPath()%>/admin/chart">
                   		  		<i class="fas fa-chart-line"></i><br>
                            	<span style="margin-top: 5px;">차트</span>
                            	</a>
                           	 </div>
                    		</li>
                    		  <li>
                   		  <div style="margin-top: 20px">
                   			<a href="<%=request.getContextPath()%>/admin/notice">                   		  
                   		  			<i class="fas fa-bullhorn"></i><br>
                            		<span style="margin-top: 5px;">공지관리</span>
                            	</a>
                           	 </div>
                    		</li>

                    </ul>
                </div>
            
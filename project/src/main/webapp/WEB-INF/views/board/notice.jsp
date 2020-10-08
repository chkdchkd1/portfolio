<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <div class="content-min-wrap">
                    <div id="NoticeRead" style="display: block;">
                        <div class="noti-view-tit">
                            <span class="noti-tit-tag01">
                            	<c:if test ="${notice.cateType == 1}">티켓오픈</c:if>
                            	<c:if test ="${notice.cateType == 2}">변경/취소</c:if>                            	
                            </span>
                            <p>${notice.openTitle}</p>
                        </div>
                        <div class="noti-view-date">
                            <span>등록일 : ${notice.openRegisterDate}</span>
                            <span>조회수 : ${notice.openViews}</span>
                        </div>
                        <c:if test ="${notice.cateType == 1}">
	                       <div class="noti-view-ticket">
	                           <div class="noti-vt-layout">
	                               <div class="noti-vt-left">
	                                   <img src="<%=request.getContextPath() %>/img/${notice.openImage}" width="180" height="252"> 
	                               </div>
	                               <div class="noti-vt-right">
	                                   <p class="noti-vt-tit">${notice.openProduct}</p>
	                                   <div class="noti-vt-box">
	                                       <div>
	                                               <p class="noti" id="noti1">
	                                               </p><div class="noti-vt-open">
	                                                   <span><em>티켓오픈</em></span>
	                                                   <span id="title1">${notice.openDate}</span>
	                                               </div>
	                                               <p></p>
	                                       </div>
	                                   </div>
	                               </div>
	                           </div>
	                       </div>
	                       <div class="noti-view-con">
                            <!--상품정보, 가격정보, 기획사정보-->
                            <div class="noti-view-coment">
	                            <p class="noti-view-comen-tit">상품 정보</p>
	                            <div class="noti-view-comen-txt">
	                            ${notice.productInfo}
	                        	</div>
                        	</div>
                            <div class="noti-view-coment">
                            	<p class="noti-view-comen-tit">가격 정보</p>
                            	<div class="noti-view-comen-txt">
                            	${notice.priceInfo}
    							</div>
    						</div>
                            <div class="noti-view-coment">
                            	<p class="noti-view-comen-tit">기획사 정보</p>
                            	<div class="noti-view-comen-txt">
                            	  ${notice.enterInfo}                           
                            	</div>
                            </div>
                         </div>
                        </c:if>
 						<c:if test ="${notice.cateType == 2}">                      
	                        <div class="noti-view-con">
	                            <div class="noti-view-coment">
	                         		<p class="noti-view-comen-tit"></p>
	                            		<div class="noti-view-comen-txt">
	                            	 	 ${notice.noticeInfo}                           
	                            		</div>
	                         	</div>
	                         </div>
                         </c:if>

                        <div class="noti-view-control">
                            <a style="cursor:pointer" href="<%=request.getContextPath() %>/notice/list" class="noti-list">목록보기</a>
                        </div>	
                    </div>
                </div>
                
    <script>

   
	
    </script>
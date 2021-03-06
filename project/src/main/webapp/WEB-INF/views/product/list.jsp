<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

                <div class="category-box">
                    <ul>
                        <li class="current">금일랭킹순</li>
                        <li>주간랭킹순</li>
                        <li>월간랭킹순</li>
                        <li>공연종료임박순</li>
                    </ul>
                </div>
                <div class="board-box">
                    <ul class="board-list">
         				<c:forEach var="product" items="${list}">
               		         <li class="board-item">
                            <a href="<%=request.getContextPath()%>/goodsDetail?code=${product.code}">
                                <div class="itemWrap">
                                    <div class="itemImage">
                                        <div class="imageWrap">
                                            <div class="coverWrap">
                                                <img src="<%=request.getContextPath() %>/img/${product.file}">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="itemMeta">
                                        <div class="itemTags">
                                            <span class="tag"><span class="tagText">${product.genre}</span></span>
                                        </div>
                                        <div class="titleWrap">
                                            <div class="itemName">
                                                <span>${product.title}</span>
                                            </div>
                                            <div class="features">
                                                <ul>
                                                    <li>${product.startDate} ~ ${product.endDate}</li>
                                                    <li>${product.place}</li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="priceWrap">
                                            <div class="originPriceWrap">
                                                <span class="grade">입장권</span>
                                            </div>
                                            <div class="salePriceWrap">
                                                <em>${product.price}</em><span class="currency">원</span>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                  		 </c:forEach>
                    </ul>
                </div>
                
                <!-- 페이지네이션-->
<div class="list-paging" style="display: block;">
	<div class="list-pagenation">
		<a class="list-page-first <c:if test = "${!pm.prev}">disabled</c:if>" href="<%=request.getContextPath()%>/exhibition/list?page=${pm.startPage-1}">
 			<img src="<%=request.getContextPath() %>/resources/image/ico-page2.png" alt="처음 페이지">
		</a>
	
		<a class="list-page-prev <c:if test = "${pm.criteria.page == 1}">disabled</c:if>" href="<%=request.getContextPath()%>/exhibition/list?page=${pm.criteria.page-1}">
			<img src="<%=request.getContextPath() %>/resources/image/ico-page1.png" alt="이전페이지">
		</a>
	
		<div>
	 	  <c:forEach var="index" begin="${pm.startPage}" end="${pm.endPage}">
				<a class="<c:if test = "${index == pm.criteria.page}">on</c:if>" href="<%=request.getContextPath()%>/exhibition/list?page=${index}">${index}</a>
		  </c:forEach>
		</div>
		<a class="list-page-next <c:if test = "${pm.criteria.page == pm.lastEndPage}">disabled</c:if>" href="<%=request.getContextPath()%>/exhibition/list?page=${pm.criteria.page+1}">
			<img src="<%=request.getContextPath() %>/resources/image/ico-page1.png" alt="다음페이지">
		</a>
	
		<a class="list-page-last <c:if test = "${!pm.next}">disabled</c:if>" href="<%=request.getContextPath()%>/exhibition/list?page=${pm.endPage+1}">
			<img src="<%=request.getContextPath() %>/resources/image/ico-page2.png" alt="마지막 페이지">
		</a>
	
	</div>
</div>
                

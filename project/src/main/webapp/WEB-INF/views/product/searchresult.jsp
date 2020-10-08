<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<div class="srch-top">
		    <p><span id="resultSearchWord">'${pm.criteria.search}'</span>에 대한 검색 결과 입니다.</p>
	    </div>
  <div class="board-box">
      <c:if test = "${empty resultList}">
      <div class="srch-top">
		    <p style=" font-size: 15px;">일치하는 상품이 없습니다.</p>
	    </div>
	    </c:if>
                    <ul class="board-list">
         				<c:forEach var="product" items="${resultList}">
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
                                           <c:if test ="${fn:contains(product.isOver,'Y')}">
                                              <span class="tag">
                                            	<span class="tagText">판매종료</span>
                                            </span>
                                            </c:if>
                                            <span class="tag">
                                            	<span class="tagText">${product.genre}</span>
                                            </span>
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
		<a class="list-page-first <c:if test = "${!pm.prev}">disabled</c:if>" href="<%=request.getContextPath()%>/goods?search=${pm.criteria.search}&page=${pm.startPage-1}">
 			<img src="<%=request.getContextPath() %>/resources/image/ico-page2.png" alt="처음 페이지">
		</a>
	
		<a class="list-page-prev <c:if test = "${pm.criteria.page == 1}">disabled</c:if>" href="<%=request.getContextPath()%>/goods?search=${pm.criteria.search}&page=${pm.criteria.page-1}">
			<img src="<%=request.getContextPath() %>/resources/image/ico-page1.png" alt="이전페이지">
		</a>
	
		<div>
	 	  <c:forEach var="index" begin="${pm.startPage}" end="${pm.endPage}">
				<a class="<c:if test = "${index == pm.criteria.page}">on</c:if>" href="<%=request.getContextPath()%>/goods?search=${pm.criteria.search}&page=${index}">${index}</a>
		  </c:forEach>
		</div>
		<a class="list-page-next <c:if test = "${pm.criteria.page == pm.lastEndPage}">disabled</c:if>" href="<%=request.getContextPath()%>/goods?search=${pm.criteria.search}&page=${pm.criteria.page+1}">
			<img src="<%=request.getContextPath() %>/resources/image/ico-page1.png" alt="다음페이지">
		</a>
	
		<a class="list-page-last <c:if test = "${!pm.next}">disabled</c:if>" href="<%=request.getContextPath()%>/goods?search=${pm.criteria.search}&page=${pm.endPage+1}">
			<img src="<%=request.getContextPath() %>/resources/image/ico-page2.png" alt="마지막 페이지">
		</a>
	
	</div>
	</div>



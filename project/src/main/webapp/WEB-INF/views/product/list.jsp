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
                            <a href="<%=request.getContextPath()%>/exhibition/detail?code=${product.code}">
                                <div class="itemWrap">
                                    <div class="itemImage">
                                        <div class="imageWrap">
                                            <div class="coverWrap">
                                                <img src="/img/${product.file}">
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

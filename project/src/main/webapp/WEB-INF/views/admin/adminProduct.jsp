<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
  <div class="content-min-wrap">
                    <div id="NoticeMainDisplay" style="display: block;">
                        <!-- 공지사항 필터,검색 -->
                        <div class="category" id="SelectOrder">
                            <a categoryid="3"></a>
                              <form action="<%=request.getContextPath()%>/admin/ProductAdmin">	                          
		                            <div class="notice-srch" style="color: transparent;">
		                                <input type="text" id="SearchTextbox" placeholder="상품명 또는 상품코드를 검색하세요" autocomplete="off" name ="search" value="${pm.criteria.search}">
		                                <a onclick="return false;" style="cursor: pointer"></a>
		                            </div>
	                            </form>
                        </div>

                        <!-- 공지사항 리스트 -->    
                        <div id="BoardList">
                            <div class="noti-tbl"> 
                                <table>
                                    <colgroup>
                                    <col width="13%">
                                    <col width="47%">
                                    <col width="30%">
                                    <col width="20%">
                                    </colgroup>
                                    <tbody>
                                    <tr>
                                    <th scope="col">상품코드</th>
                                    <th scope="col">상품명</th>
                                    <th scope="col" style="text-align: center;text-indent: 0;" >일시</th>
                                    <th scope="col"></th></tr>
                                    
                                  <c:forEach var="list" items="${list}">
                                            <tr>
                                                <td>
                                                    ${list.code}

                                                </td>
                                                <td>
                                                    <a href="<%=request.getContextPath()%>/goodsDetail?code=${list.code}"><em>${list.title}</em></a>
                                                </td>
                                                <td style="text-align: center;text-indent: 0;" >
                                                   ${list.startDate}  ~   ${list.endDate}</td>
                                                <td>
                                                	<c:if test="${list.isOver == 'N'.charAt(0)}">
                                                   		 <a href="<%=request.getContextPath()%>/InvalidProduct?code=${list.code}" class="btn-product-m" style="width: 90px;border-color:fb6d6d;color:#fb6d6d;">판매중지</a>                                                   		
                                                   	</c:if>
                                                   	<c:if test="${list.isOver == 'Y'.charAt(0)}">
                                                    	<a href="javascript:void(0);" class="btn-product-m" style="cursor: default;width: 90px;color:#909090;">판매종료</a>
                                                    </c:if>
                                                </td>
                                            </tr>
                                            </c:forEach>
    
                                    </tbody>
                                </table>                            
                            </div>
                        </div>
                        <!-- 페이지네이션 -->
                        <div class="list-paging" style="display: block;">
	<div class="list-pagenation">
		<a class="list-page-first <c:if test = "${!pm.prev}">disabled</c:if>" href="<%=request.getContextPath()%>/admin/ProductAdmin?page=${pm.startPage-1}&search=${pm.criteria.search}">
 			<img src="<%=request.getContextPath() %>/resources/image/ico-page2.png" alt="처음 페이지">
		</a>
	
		<a class="list-page-prev <c:if test = "${pm.criteria.page == 1}">disabled</c:if>" href="<%=request.getContextPath()%>/admin/ProductAdmin?page=${pm.criteria.page-1}&search=${pm.criteria.search}">
			<img src="<%=request.getContextPath() %>/resources/image/ico-page1.png" alt="이전페이지">
		</a>
	
		<div>
	 	  <c:forEach var="index" begin="${pm.startPage}" end="${pm.endPage}">
				<a class="<c:if test = "${index == pm.criteria.page}">on</c:if>" href="<%=request.getContextPath()%>/admin/ProductAdmin?page=${index}&search=${pm.criteria.search}">${index}</a>
		  </c:forEach>
		</div>
		<a class="list-page-next <c:if test = "${pm.criteria.page == pm.lastEndPage}">disabled</c:if>" href="<%=request.getContextPath()%>/admin/ProductAdmin?page=${pm.criteria.page+1}&search=${pm.criteria.search}">
			<img src="<%=request.getContextPath() %>/resources/image/ico-page1.png" alt="다음페이지">
		</a>
	
		<a class="list-page-last <c:if test = "${!pm.next}">disabled</c:if>" href="<%=request.getContextPath()%>/admin/ProductAdmin?page=${pm.endPage+1}&search=${pm.criteria.search}">
			<img src="<%=request.getContextPath() %>/resources/image/ico-page2.png" alt="마지막 페이지">
		</a>
	
	</div>
                    </div>
                </div>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    
    <div class="content-min-wrap">
                    <div id="NoticeMainDisplay" style="display: block;">
                        <!-- 공지사항 필터,검색 -->
                        <div class="category" id="SelectOrder">
                            <a categoryid="3"></a>
                              <form action="<%=request.getContextPath()%>/notice/list">	                          
		                            <div class="notice-srch" style="color: transparent;">
		                                <input type="text" id="SearchTextbox" placeholder="궁금하신 내용을 입력해주세요" autocomplete="off" name ="search" value="${pm.criteria.search}">
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
                                    <col width="57%">
                                    <col width="20%">
                                    <col width="10%">
                                    </colgroup>
                                    <tbody>
                                    <tr>
                                    <th scope="col">구분</th>
                                    <th scope="col">제목</th>
                                    <th scope="col">티켓오픈 일시</th>
                                    <th scope="col">조회수</th></tr>
                                    
                                  <c:forEach var="notice" items="${list}">
                                            <tr>
                                                <td>
                                                    <c:if test="${notice.cateType == 1 }">티켓오픈</c:if>
                                                    <c:if test="${notice.cateType == 2 }">변경/취소</c:if> 
                                                </td>
                                                <td>
                                                    <a href="<%=request.getContextPath()%>/notice?num=${notice.boOpenNum}"><em>${notice.openTitle}</em></a>
                                                </td>
                                                <td>
                                                    ${notice.openDate}</td>
                                                <td>
                                                    ${notice.openViews}
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
		<a class="list-page-first <c:if test = "${!pm.prev}">disabled</c:if>" href="<%=request.getContextPath()%>/notice/list?page=${pm.startPage-1}&search=${pm.criteria.search}">
 			<img src="<%=request.getContextPath() %>/resources/image/ico-page2.png" alt="처음 페이지">
		</a>
	
		<a class="list-page-prev <c:if test = "${pm.criteria.page == 1}">disabled</c:if>" href="<%=request.getContextPath()%>/notice/list?page=${pm.criteria.page-1}&search=${pm.criteria.search}">
			<img src="<%=request.getContextPath() %>/resources/image/ico-page1.png" alt="이전페이지">
		</a>
	
		<div>
	 	  <c:forEach var="index" begin="${pm.startPage}" end="${pm.endPage}">
				<a class="<c:if test = "${index == pm.criteria.page}">on</c:if>" href="<%=request.getContextPath()%>/notice/list?page=${index}&search=${pm.criteria.search}">${index}</a>
		  </c:forEach>
		</div>
		<a class="list-page-next <c:if test = "${pm.criteria.page == pm.lastEndPage}">disabled</c:if>" href="<%=request.getContextPath()%>/notice/list?page=${pm.criteria.page+1}&search=${pm.criteria.search}">
			<img src="<%=request.getContextPath() %>/resources/image/ico-page1.png" alt="다음페이지">
		</a>
	
		<a class="list-page-last <c:if test = "${!pm.next}">disabled</c:if>" href="<%=request.getContextPath()%>/notice/list?page=${pm.endPage+1}&search=${pm.criteria.search}">
			<img src="<%=request.getContextPath() %>/resources/image/ico-page2.png" alt="마지막 페이지">
		</a>
	
	</div>
                    </div>
                </div>
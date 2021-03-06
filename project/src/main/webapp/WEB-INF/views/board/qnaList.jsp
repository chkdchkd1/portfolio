<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <div class="content-min-wrap">
                    <div id="NoticeMainDisplay" style="display: block;">
                        <!-- 공지사항 필터,검색 -->
                        <div class="category" id="SelectOrder">
                            <a categoryid="3"></a>
                            <div class="notice-srch" style="color: transparent;">
                                <input type="text" id="SearchTextbox" placeholder="궁금하신 내용을 입력해주세요" autocomplete="off" name="search"><a onclick="jsf_notice_Search();" style="cursor: pointer"></a>
                            </div>
                        </div>

                        <!-- 공지사항 리스트 -->    
                        <div id="BoardList">
                            <div class="noti-tbl"> 
                                <table>
                                    <colgroup>
                                    <col width="10%">
                                    <col width="50%">
                                    <col width="15%">
                                    <col width="15%">
                                    <col width="10%">
                                    </colgroup>
                                    <tbody>
                                    <tr>
                                        <th scope="col">번호</th>
                                        <th scope="col">제목</th>
                                        <th scope="col" class="onlyPM">작성자</th>
                                        <th scope="col">작성일</th>
                                        <th scope="col">조회수</th>
                                    
                                    </tr>
                                        <c:forEach var="qna" items="${qna}">
                                            <tr>
                                                <td>
                                                    ${qna.boardNum}
                                                </td>
                                                <td>
                                                    <c:if test="${qna.usePw == 'Y'.charAt(0)}">
                                                    	<i class="fas fa-lock" style="float: left;margin-right: 5px;margin-top: 2px;"></i>
                                                    	<c:choose>
															<c:when test="${user.id == qna.boardWriter}">
																<a href="<%=request.getContextPath()%>/help?num=${qna.boardNum}"><em>${qna.boardTitle}<span class="replyCount">+ ${qna.replyCount}</span></em> </a>
															</c:when>															
															<c:when test="${user.id eq 'admin'}">
																<a href="<%=request.getContextPath()%>/help?num=${qna.boardNum}"><em>${qna.boardTitle}<span class="replyCount">+ ${qna.replyCount}</span></em> </a>
															</c:when>
															<c:when test="${user.id ne 'admin' && user.id !=  qna.boardWriter }">
																<a href="<%=request.getContextPath()%>/help/checkBoardPw?num=${qna.boardNum}"><em>${qna.boardTitle}<span class="replyCount">+ ${qna.replyCount}</span></em> </a>
																</c:when>
														</c:choose>
                                                    	
                                                    </c:if>
                                                    <c:if test="${qna.usePw == 'N'.charAt(0)}"><a href="<%=request.getContextPath()%>/help?num=${qna.boardNum}"><em>${qna.boardTitle}<span class="replyCount">+ ${qna.replyCount}</span></em></a></c:if>
                                                </td>
                                                <td class="no-text-indent">
                                                    ${qna.boardWriter}
                                                </td>
                                                <td>
                                                    ${qna.boardDate}</td>
                                                <td class="no-text-indent">
                                                    ${qna.views}
                                                </td>
                                            </tr>
                                            </c:forEach>
                                        
                                            
                                    </tbody>
                                </table>                                                            
                            </div>
                        </div>
                     	<c:if test="${user != null}"><a href="<%=request.getContextPath()%>/help/register" class="btn-product-m2">등록</a></c:if>
                        
                        <!-- 페이지네이션 -->
                    </div>
                </div>
                
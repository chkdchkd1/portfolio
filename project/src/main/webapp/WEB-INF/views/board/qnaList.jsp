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
                                        
                                            <tr>
                                                <td>
                                                    1
                                                </td>
                                                <td>
                                                    <a href="<%=request.getContextPath()%>/help"><em>예매 관련 문의</em></a>
                                                </td>
                                                <td class="no-text-indent">
                                                    xxxxx
                                                </td>
                                                <td>
                                                    2020.09.15</td>
                                                <td class="no-text-indent">
                                                    197
                                                </td>
                                            </tr>
                                        
                                            
                                    </tbody>
                                </table>                                                            
                            </div>
                        </div>
                                         	<a href="<%=request.getContextPath()%>/help/register" class="btn-product-m2">등록</a>
                        
                        <!-- 페이지네이션 -->
                    </div>
                </div>
                
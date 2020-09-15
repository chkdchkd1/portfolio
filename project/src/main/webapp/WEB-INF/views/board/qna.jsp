<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <div class="content-min-wrap">
                    <div id="NoticeRead" style="display: block;">
                        <div class="noti-view-tit">
                     
                            <p>예매 문의</p>
                        </div>
                        <div class="noti-view-date">
                       		<span>작성자 : ${notice.openRegisterDate}</span>
                            <span>등록일 : ${notice.openRegisterDate}</span>
                            <span>조회수 : ${notice.openViews}</span>
                        </div>
	                        <div class="noti-view-con">
	                            <div class="noti-view-coment">
	                         		<p class="noti-view-comen-tit"></p>
	                            		<div class="noti-view-comen-txt">
	                            	 	 예매관련문의                       
	                            		</div>
	                         	</div>
	                         </div>
	                         
	                      <div class="mgz-view-cmarea" style="display: block;">
                            <ul class="mgz-view-comens">
                                <li>
                                    <div class="mgz-view-cmperson">
                                        <em>rlawltn054</em>
                                        2020.09.13
                                    </div>
                                    <div class="mgz-view-cmchat">							
                                        댓글&nbsp;&nbsp;&nbsp;<a onclick="jsf_mgz_DeleteReply(769547)" style="cursor:pointer"><img src="<%=request.getContextPath()%>/resources/image/btn_cls.gif" alt="삭제"></a>										
                                    </div>
                                </li>
                            </ul>
                            <div class="mgz-view-textarea">
                                <textarea placeholder="댓글을 작성해주세요." cols="" rows="" class="txt_rep" id="txtReplyCont" onclick="jsf_mgz_logincheck(1,19007, this);" onkeyup="javascript:jsf_mgz_LimitInputData(this, 250);"></textarea>
                                <a onclick="jsf_mgz_InsertReply();" style="cursor:pointer;">등록</a>
                                <p class="mgz-view-textnum"><span>0</span>/250</p>
                            </div>
                        </div>

                        <div class="noti-view-control">
                            <a style="cursor:pointer" href="<%=request.getContextPath() %>/notice/list" class="noti-list">목록보기</a>
                        </div>	
                    </div>
                </div>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
  <div class="mypage_contain">
                    <h1>예매확인 / 취소</h1>
                    <div class="date_list bg">
                        <p class="tit"><strong>${user.name}</strong>님의 <span id="lblSearch" class="red">최근 1개월</span> 예매내역입니다. 지난 예매확인을 원하시면 조회조건을 선택해 주세요.</p>
                        <ul>
                            <li id="liTerm">
                                <img src="<%=request.getContextPath()%>/resources/image/th_05.gif" alt="기간별조회">
                                <a href="#" term="m1"><img src="<%=request.getContextPath()%>/resources/image/btn_1m.gif" alt="최근 1개월"></a> 
                                <a href="#" term="m3"><img src="<%=request.getContextPath()%>/resources/image/btn_3m.gif" alt="최근 3개월"></a> 
                                <a href="#" term="m6"><img src="<%=request.getContextPath()%>/resources/image/btn_6m.gif" alt="최근 6개월"></a> 
                            </li>
                            <li class="sec">
                                    <ul>
                                        <li><img src="<%=request.getContextPath()%>/resources/image/th_06.gif" alt="주문일자별 조회"></li>
                                        <li>
                                            <select name="Option" id="Option" style="width:65px; height:19px;" class="select">
                                                <option value="B" selected="">예매일</option>
                                                <option value="P">공연일</option>
                                            </select>
                                        </li>
                                        <li>
                                            <select name="BYear" id="BYear" style="width:53px; height:19px;" class="select">
                                                <option value="">-----</option>
                                                <option value="2021">2021</option>
                                                <option value="2020">2020</option>
                                                <option value="2019">2019</option>
                                                <option value="2018">2018</option>
                                                <option value="2017">2017</option>
                                                <option value="2016">2016</option>						
                                            </select>
                                            년 </li>
                                        <li>
                                            <select name="BMonth" id="BMonth" style="width:38px; height:19px;" class="select">
                                                <option value="">-----</option>
                                                <option value="01">1</option>
                                                <option value="02">2</option>
                                                <option value="03">3</option>
                                                <option value="04">4</option>
                                                <option value="05">5</option>
                                                <option value="06">6</option>
                                                <option value="07">7</option>
                                                <option value="08">8</option>
                                                <option value="09">9</option>
                                                <option value="10">10</option>
                                                <option value="11">11</option>
                                                <option value="12">12</option>
                                            </select>
                                            월 </li>
                                        <li>
                                            <a id="imgSearch" href="#"><img src="<%=request.getContextPath()%>/resources/image/btn_srch.gif" alt="조회"></a>
                                        </li>
                                    </ul>
                            </li>
                        </ul>
                    </div>
                    <div class="mycont">
                        <h2 class="tit">
                            <img src="<%=request.getContextPath()%>/resources/image/h2_mtit06.gif" alt="예매내역">
                            <span>[상세보기] 버튼을 클릭하시면 '예매 상세내역 확인' 및 '예매취소'가 가능합니다.</span>
                        </h2>
                        <div class="point fr btn_mt30">
                            <ul id="ulGubun">
                                <li dispgubun="-1" class="bgn ov"><a href="#" dispgubun="-1" style="font-size: 12px;">전체</a><img class="gubunimg" src="<%=request.getContextPath()%>/resources/image/icon_dot04.gif" alt="전체보기"></li>
                                <li class="" dispgubun="1"><a href="#" dispgubun="1" style="font-size: 12px;">예매/예약</a></li>
                                <li dispgubun="2" class=""><a href="#" dispgubun="2" style="font-size: 12px;">취소</a></li>
                            </ul>
				        </div>
                        <div id="divOrderList" style=""><table class="tmypage" summary="최근 예매내역 리스트">
                            <colgroup>
                                <col width="13%">
                                <col width="13%">
                                <col width="*">
                                <col width="20%">
                                <col width="10%">
                                <col width="15%">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th scope="row" class="fst">예매일</th>
                                    <th scope="row">예매번호</th>
                                    <th scope="row">공연명</th>
                                    <th scope="row">관람일시</th>
                                    <th scope="row">매수</th>
                                    <th scope="row" class="end">예매상태</th>
                                </tr>
                            </thead>
                            <tbody>
                            		<c:forEach var="reservation" items="${list}">
                                <tr>
                                    <td class="le">${reservation.rvDate}</td>
                                    <td><strong><a href="<%=request.getContextPath()%>/myOrder/detail?num=${reservation.rvNum}" class="orderticketview">${reservation.rvNum}</a></strong></td>
                                    <td class="tit">${reservation.title}</td>
                                    <td>${reservation.useStart} ~ ${reservation.useEnd} <br>${reservation.roundTime}</td>
                                    <td>${reservation.rvamount}</td>
                                    <td class="ri">${reservation.status}<a href="<%=request.getContextPath()%>/myOrder/detail?num=${reservation.rvNum}" class="orderticketview"><img src="<%=request.getContextPath()%>/resources/image/btn_more02.gif" alt="상세정보"></a></td>
                                </tr>
                                	</c:forEach>
                            </tbody>
                        </table>
                        <div class="paging">
                            <a class="<c:if test = "${pm.criteria.page == 1}">disabled</c:if>" href="<%=request.getContextPath()%>/myOrder/list?page=${pm.criteria.page-1}" >
                            <img src="<%=request.getContextPath()%>/resources/image/btn_pre.gif" alt="이전목록" >
                            </a>
                           	<a class="on">
                        			<span>${pm.criteria.page}</span>
                           	</a>
                           	<span class="bunch">
                           		(<strong>${pm.criteria.page}</strong>/${pm.lastEndPage})
                           	</span>
                           	<a class="<c:if test = "${pm.criteria.page == pm.lastEndPage}">disabled</c:if>" href="<%=request.getContextPath()%>/myOrder/list?page=${pm.criteria.page+1}">
                            	<img src="<%=request.getContextPath()%>/resources/image/btn_next.gif" alt="다음목록">
                            </a>
                        </div>
                    </div>
                    <div class="mycont">
                        <h2 class="tit"><img src="<%=request.getContextPath()%>/resources/image/h2_mtit09.gif" alt="유의사항"></h2>
                        <div class="gray_box03">
                                <ul>
                                    <li class="red">- 취소 시 예매수수료는 예매 당일 밤 12시 이전까지 환불되며, 그 이후 기간에는 환불되지 않습니다. </li>                                                                                         
                                    <li>- 무통장입금 예매 취소 시 결제금액에서 수수료를 제외한 금액만큼 환불처리됩니다. 부분 취소 시에는 취소수수료 + 잔여티켓금액 등을 제외한 금액만큼 환불처리 됩니다. </li>
                                    <li>- 신용카드 예매 취소 시에는 발생되는 수수료(부분취소 시에는 취소수수료+잔여티켓금액 등)에 대한 금액을 재 결제 후 기존 결제내역은 전체 취소됩니다.</li>                                 
                                    <li>- 예매 취소 시점과 해당 카드사의 환불 처리 기준에 따라 환급방법과 환급일은 다소 차이가 있을 수 있습니다. </li>
                                    <li>- 기타 문의사항은 [이용안내]를 참고하시거나, 고객센터(1544-6399) 또는 [1:1문의]를 이용해주시기 바랍니다. </li>
                                </ul>
                        </div>
                    </div>
                </div>
               </div>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    ${reservedDetail}
 <div class="mp_contents">
                    <div class="reserveInfo">
                        <h1>예매확인 / 취소</h1>
                        <h3><img src="<%=request.getContextPath()%>/resources/image/h2_mtit06.gif" alt="예매내역 확인·취소"></h3>
                        <!-- 예매내역 -->
                        <div class="subject">
                            <span class="s-title">${reservedDetail.title}</span> 
                        </div>
                        <div class="info">
                            <div class="poster">
                                <p class="post"><a href="http://ticket.interpark.com/Ticket/Goods/GoodsInfo.asp?GoodsCode=20005170"><img src="//ticketimage.interpark.com/Play/image/large/20/20005170_p.gif"></a></p>
                            </div>
                            <div class="con">
                                <table width="570" class="none">
                                    <colgroup>
                                    <col width="110px">
                                    <col width="460px">
                                    </colgroup>
                                    <tbody><tr>
                                        <th>예매자</th>
                                        <td>${reservedDetail.name}</td>
                                    </tr>
                                    <tr>
                                        <th>예약번호</th>
                                        <td><div id="divTicketno">
                                        <c:forEach var="reserved" items="${sameTimeList}" varStatus="index">
                                           <c:if test="${index.first}">${reserved.rvNum} ~ </c:if>
                                           <c:if test="${index.last}">${reserved.rvNum}  ( 총 ${index.count}매 ) </c:if>
                                          		
										</c:forEach>										
                                        </div>
                                        
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>이용일</th>
                                        <td>
                                        <div id="divPlayDate">
                                        2021년 01월 28일&nbsp;(목)&nbsp;<span class="txtGray">|</span> 10시 20분
                                        </div>
                                        </td>
                                    </tr>
                                    
                                    <tr>
                                        <th>장소</th>
                                        <td>그라운드시소 서촌</td>
                                    </tr>
                                    
                                    <tr>
                                        <th>좌석</th>
                                        <td><span id="divSeatNo">비지정석</span> &nbsp;
                                        
                                        </td>
                                    </tr>
                                    
                                    <tr>
                                        <th>티켓수령 방법</th>
                                        <td>
                                        
                                                <span class="red txtB">현장수령 </span>
                                                <br>
                                                
                                            <div class="exp">
                                                <p class="txtB">배송유의사항</p>
                                            
                                                <p>공연당일날 예매내역서(프린트)와 신분증을 지참하시고, 공연장의 티켓교부처에서 티켓을 받으시면 됩니다.<br>공연시작 30분전까지 오시면, 빠르고 편하게 티켓을 받으실 수 있습니다.</p>
                                            
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            </div>
                        </div>
                    </div>
                    <!-- //예매내역 -->
                    <!-- 결제내역 -->
                    <div class="paymentCont paymentCont2">
                        <h3><img src="<%=request.getContextPath()%>/resources/image/h2_mtit07.gif" alt="결제내역"></h3>
                        <table>
                            <colgroup>
                            <col width="120px">
                            <col width="200px">
                            <col width="120px">
                            <col width="*">
                            </colgroup>
                            <tbody><tr>
                                <th>예매일</th>
                                <td class="bdr">2020.08.17</td>
                                <th>현재상태</th>
                                <td><span class="red">입금대기</span></td>
                            </tr>
                            <tr>
                                <th>결제수단</th>
                                <td class="bdr"><span class="red">무통장 입금</span></td>
                                <th>결제상태</th>
                                <td>미입금</td>
                            </tr>
                            
                            <tr>
                                <td colspan="4" class="padding">
                                    

                                    <div class="paytxt">
                                        
                                        <p class="red">※ 예매내역을 취소하려면 취소하고자 하는 티켓을 선택하신 후 아래 <strong>[예매취소]</strong> 버튼을 클릭해 주세요. </p>
                                        <p class="txt11">&nbsp;&nbsp;&nbsp;&nbsp;다른 고객님의 예매나 예매대기로 인하여, 예매취소후 동일좌석에
                                            대한 재예매가 불가할 수 있습니다.</p>
                                        
                                    </div>
                                    
                                    <!-- 예매정보리스트 -->
                                    <a name="TabTop"></a>
                                    <form name="TPDetailBooked" id="TPDetailBooked" method="Post">
                                    <input type="hidden" id="BDate" name="BDate" value="20200817">
                                    <input type="hidden" id="BDateSeq" name="BDateSeq" value="1F540">
                                    <input type="hidden" id="SalesType" name="SalesType" value="21001">
                                    <input type="hidden" id="GoodsCode" name="GoodsCode" value="20005170">
                                    <input type="hidden" id="PlaceCode" name="PlaceCode" value="20000530">
                                    <input type="hidden" id="CustName" name="CustName" value="김지수">
                                    <input type="hidden" id="Option" name="Option" value="">
                                    <input type="hidden" id="KindOfGoods" name="KindOfGoods" value="01009">
                                    <input type="hidden" id="BYearMonth" name="BYearMonth" value="">
                                    <input type="hidden" id="Penalty" name="Penalty" value="10%">
                                    <input type="hidden" id="OtherMemberCode" name="OtherMemberCode" value="114656635">
                                    <input type="hidden" id="MemBizCD" name="MemBizCD" value="">
                                    
                                    <div class="reservetable">
                                        <table class="bdn">
                                            <colgroup>
                                            <col width="110px">
                                            <col width="80px">
                                            <col width="100px">
                                            <col width="100px">
                                            <col width="90px">
                                            <col width="100px">
                                            <col width="115px">
                                            </colgroup>
                                            <tbody><tr>
                                                <th>예매번호</th>

                                                <th>좌석등급</th>

                                                <th>가격등급</th>
                                                <th>좌석번호</th>
                                                <th>가격</th>
                                                <th>취소여부</th>
                                                <th class="bdr">

                                                    <img src="<%=request.getContextPath()%>/resources/image/btn_all.gif" id="btnAllSelect" style="cursor:pointer;">
                                                    <input id="chkAllSelect" name="chkAllSelect" value="checkbox" type="checkbox">
                                                </th>
                                            </tr>
                                            
                                            <tr>
                                                <td class="bdl">T1656191350</td>
                                                <td>입장권</td>
                                                <td>1인 입장권_주중</td>
                                                <td>
                                                비지정석
                                                </td>
                                                <td>
                                                    9,000원
                                                </td>
                                                <td>취소가능</td>
                                                <td class="bdr">
                                                    취소하기<input type="checkbox" class="chk" name="chkPartCancel1" id="chkPartCancel1" value="T1656191350"><input type="hidden" name="TicketNo1" id="TicketNo1" value="T1656191350">
                                                </td>
                                            </tr>
                                            
                                            <tr>
                                                <td class="bdl">T1656191351</td>
                                                <td>입장권</td>
                                                <td>1인 입장권_주중</td>
                                                <td>
                                                비지정석
                                                </td>
                                                <td>
                                                    9,000원
                                                </td>
                                                <td>취소가능</td>
                                                <td class="bdr">
                                                    취소하기<input type="checkbox" class="chk" name="chkPartCancel2" id="chkPartCancel2" value="T1656191351"><input type="hidden" name="TicketNo2" id="TicketNo2" value="T1656191351">
                                                </td>
                                            </tr>
                                            
                                        </tbody></table>

                                        <input type="hidden" name="ParCancelAbleCnt" id="ParCancelAbleCnt" value="2">
                                    </div>
                                </form>
                                    <!-- 예매정보리스트 -->
                                </td>
                            </tr>
                            
                            <tr>
                                
                                <th>예매 수수료</th>
                                <td class="bdr">0원</td>
                                <th>배송비</th>
                                <td>현장수령&nbsp;</td>
                                
                            </tr>
                            <tr>
                                <th>총 결제금액</th>
                                <td colspan="3"><strong class="col1">
                                18,000원
                                </strong></td>
                            </tr>
                            
                            <tr>
                                <th>무통장 입금안내</th>
                                <td colspan="3"><strong>입금계좌 :</strong> 국민은행:38769078838559 <strong>예금주 :</strong> (주)인터파크 <br>
                                    <strong>입금마감시간 :</strong> <span class="red txtB">2020년 08월 18일 23시59분까지</span>
                                    총결제금액 <strong>18,000원</strong>이 입금되지 않으면 자동 취소됩니다.<br>(은행에 따라서, 밤 11시 30분 이후로는  온라인입금이 제한될 수 있습니다.)
                                </td>
                            </tr>

                        </tbody></table>
                    </div>
                    <!-- //결제내역 -->
                    <!-- 예매취소 유의사항 -->
                    <div class="reserveCancel">
                        <h3><img src="<%=request.getContextPath()%>/resources/image/h2_mtit08.gif" alt="예매취소 유의사항"></h3>
                        <table>
                            <colgroup><col width="120px"><col width="*"></colgroup>
                        
                            <tbody><tr>
                                <th>취소 마감시간</th>
                                <td><span class="red txtB">
                                2021년 01월 27일 23시 59분까지
                                </span></td>
                            </tr>
                        
                            <tr>
                                <th>취소 수수료</th>
                                <td>
                                    <span class="txt11"><strong>
                                    취소일자에 따라서 취소수수료가 달라집니다.</strong> <br>* 단, 예매당일 밤 12시 이전 취소시에는 취소수수료 없음(취소기한내에 한함)
                                    </span>
                                    
                                    <div class="none">
                                        
                                        <table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-bottom:5px;">
                                            <tbody><tr>
                                                <td height="23" align="center" style="background:#F0F0F0; border-top:2px solid #B6AFAF; border-bottom:1px dotted #B6AFAF; font-weight:bold;">내용</td>
                                                <td align="center" style="background:#F0F0F0; border-top:2px solid #B6AFAF; border-bottom:1px dotted #B6AFAF; font-weight:bold;">취소일</td>
                                                <td align="center" style="background:#F0F0F0; border-top:2px solid #B6AFAF; border-bottom:1px dotted #B6AFAF; font-weight:bold;">취소수수료</td>
                                            </tr>
                                            
                                                <tr>
                                                    <td height="18" align="center" style="border-bottom:1px dotted #ccc; padding-top:3px; font-size:11px; font-family:돋움; ">미부과기간</td>
                                                    <td align="center" style="border-bottom:1px dotted #ccc; padding-top:3px; font-size:11px; font-family:돋움;">
                                                    2020.08.17 ~ 2020.08.24
                                                    </td>
                                                    <td align="center" style="border-bottom:1px dotted #ccc; padding-top:3px; font-size:11px; font-family:돋움; "><font color="ff0000">없음</font></td>
                                                </tr>
                                                
                                                <tr>
                                                    <td height="18" align="center" style="border-bottom:1px dotted #ccc; padding-top:3px; font-size:11px; font-family:돋움; ">예매후 8일~관람일 10일전까지</td>
                                                    <td align="center" style="border-bottom:1px dotted #ccc; padding-top:3px; font-size:11px; font-family:돋움;">
                                                    2020.08.25 ~ 2021.01.18
                                                    </td>
                                                    <td align="center" style="border-bottom:1px dotted #ccc; padding-top:3px; font-size:11px; font-family:돋움; "><font color="ff0000">장당 2000원</font>(티켓금액의 10%한도)</td>
                                                </tr>
                                                
                                                <tr>
                                                    <td height="18" align="center" style="border-bottom:1px dotted #ccc; padding-top:3px; font-size:11px; font-family:돋움; background:#F9CCCC; ">관람일 9일전~7일전까지</td>
                                                    <td align="center" style="border-bottom:1px dotted #ccc; padding-top:3px; font-size:11px; font-family:돋움;">
                                                    2021.01.19 ~ 2021.01.21
                                                    </td>
                                                    <td align="center" style="border-bottom:1px dotted #ccc; padding-top:3px; font-size:11px; font-family:돋움; ">티켓금액의 <font color="ff0000">10%</font></td>
                                                </tr>
                                                
                                                <tr>
                                                    <td height="18" align="center" style="border-bottom:1px dotted #ccc; padding-top:3px; font-size:11px; font-family:돋움; background:#F9CCCC; ">관람일 6일전~3일전까지</td>
                                                    <td align="center" style="border-bottom:1px dotted #ccc; padding-top:3px; font-size:11px; font-family:돋움;">
                                                    2021.01.22 ~ 2021.01.25
                                                    </td>
                                                    <td align="center" style="border-bottom:1px dotted #ccc; padding-top:3px; font-size:11px; font-family:돋움; ">티켓금액의 <font color="ff0000">20%</font></td>
                                                </tr>
                                                
                                                <tr>
                                                    <td height="18" align="center" style="border-bottom:1px dotted #ccc; padding-top:3px; font-size:11px; font-family:돋움; background:#F9CCCC; ">관람일 2일전~1일전까지</td>
                                                    <td align="center" style="border-bottom:1px dotted #ccc; padding-top:3px; font-size:11px; font-family:돋움;">
                                                    2021.01.26 ~ 2021.01.27
                                                    </td>
                                                    <td align="center" style="border-bottom:1px dotted #ccc; padding-top:3px; font-size:11px; font-family:돋움; ">티켓금액의 <font color="ff0000">30%</font></td>
                                                </tr>
                                                
                                        </tbody></table>
                                        
                                    </div>
                                    
                                </td>
                            </tr>
                            
                        </tbody></table>
                    </div>
                    <!-- //예매취소 유의사항 -->

                    <!-- 버튼 -->
                    <div class="reserveBTN">
                        <img src="<%=request.getContextPath()%>/resources/image/bt_reserve_cancel_101129.gif" alt="예매내역 목록" style="cursor:pointer;">
                        <a href="<%=request.getContextPath()%>/myOrder/list"><img src="<%=request.getContextPath()%>/resources/image/btn_list.gif" alt="예매내역 목록" style="cursor:pointer;"></a>
                    </div>

                    <!-- 유의사항 -->
                    <div class="rCation">
                        <h3><img src="<%=request.getContextPath()%>/resources/image/h2_mtit09.gif" alt="유의사항"></h3>
                        <div class="cationTxt">
                                <p class="txtGray2">- 예매수수료는 예매일 이후 취소시에는 환불되지 않습니다.</p>
                                <p class="txtGray2">- 동일 상품에 대해서 날짜, 시간, 좌석, 가격 등급, 결제 등의 일부 변경을 원하시는 경우, 기존 예매 건을 취소하시고 재예매 하셔야 합니다. <span class="txtU">단, 취소 시점에 따라 예매수수료가 환불 되지 않으며,취소수수료가 부과될 수 있습니다.</span><br>(할인선택은 재예매 시점에 적용되는 할인률로만 적용 가능합니다.)</p>
                                <p class="txtGray2">- 예매취소시점과 해당 카드사의 환불 처리기준에 따라 취소금액의 환급방법과 환급일은 다소 차이가 있을
                                수 있습니다.</p>
                                <p class="txtGray2">- 관람일 전일 오후 5시 이후(토요일은 오전 11시)건에 대해서는 예매후 취소/변경/환불이 불가합니다.<br>
                                <p>- 티켓 부분 취소 시 할부 결제는 티켓 예매 시점으로 적용됩니다. <span class="txt11 txtGray2">(무이자할부 행사기간이
                                    지날 경우 혜택받지 못하실 수 있으니 유의하시기 바랍니다)</span></p>
                                <p class="txtGray2">- 휴대폰결제로 예매하신 분은 휴대폰결제 이용료가 수수료에 함께 부과됩니다. 예매취소시는 환원됩니다.</p>
                                </p><p class="red">- 기타 문의사항은 콜센터 (1544-XXXX) 혹은 <a href="#"><span class="red txtU txtB">[고객센터]</span></a>를 이용하시기 바랍니다. </p>  
                        </div>
                    </div>
                </div>
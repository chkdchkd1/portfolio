<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
                                <p class="post"><a href="#"><img src="/img/${image2.file}"></a></p>
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
                                        
                                        <c:choose> 
                                        <c:when test="${index.count == 1}"> 
                                        	<c:if test="${index.first}">${reserved.rvNum} </c:if>
                                        	 </c:when> 
                                        <c:when test="${index.count > 1}">
                                        	  <c:if test="${index.last}"> ~ ${reserved.rvNum}  ( 총 ${index.count}매 ) </c:if> 
                                        </c:when> 
                                        </c:choose>                           
										</c:forEach>										
                                        </div>
                                        
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>이용일</th>
                                        <td>
                                        <div id="divPlayDate">
                                        <c:if test="${reservedDetail.useStart eq reservedDetail.useEnd}"> ${reservedDetail.useStart} </c:if>
                                         <c:if test="${reservedDetail.useStart ne reservedDetail.useEnd}"> ${reservedDetail.useStart} ~ ${reservedDetail.useEnd}</c:if><span class="txtGray"> |</span> ${reservedDetail.roundTime}
                                        </div>
                                        </td>
                                    </tr>
                                    
                                    <tr>
                                        <th>장소</th>
                                        <td>${reservedDetail.place}</td>
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
                                <td class="bdr reday">
                                    <c:forEach var="reserved1" items="${sameTimeList}" varStatus="index">
                            
                                        	<c:if test="${index.first}">${reserved1.rvDate} </c:if>
                                                            
										</c:forEach>
										</td>
                                <th>현재상태</th>
                                <td><span class="red nowww"> 
                                	<c:if test="${reservedDetail.paymethod == 2}">예매완료</c:if>
                                	<c:if test="${reservedDetail.paymethod == 22}">입금대기</c:if>                                         
                                </span></td>
                            </tr>
                            <tr>
                                <th>결제수단</th>
                                <td class="bdr"><span class="red">
                               		 <c:if test="${reservedDetail.paymethod == 2}">카드결제</c:if>
                                	<c:if test="${reservedDetail.paymethod == 22}">무통장 입금</c:if>
                                	</span></td>
                                <th>결제상태</th>
                                <td><c:if test="${reservedDetail.paymethod == 2}">결제완료</c:if>
                                	<c:if test="${reservedDetail.paymethod == 22}">미입금</c:if></td>
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
                                    <form name="cancelBooked" id="cancelBooked" method="Post"  action = '<%=request.getContextPath()%>/myOrder/detail'>
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
												<c:if test="${reservedDetail.revocable  eq 'able'}">
                                                    <img src="<%=request.getContextPath()%>/resources/image/btn_all.gif" id="btnAllSelect" style="cursor:pointer;">
                                                    <input id="chkAllSelect" name="chkAllSelect" value="checkbox" type="checkbox">
                                                    </c:if>
                                                </th>
                                            </tr>
                                            
                                           <c:forEach var="reservedSame" items="${sameTimeList}">                                        
                                            <tr>
                                                <td class="bdl">${reservedSame.rvNum}</td>
                                                <td>입장권</td>
                                                <td>${reservedSame.type}</td>
                                                <td>
                                                비지정석
                                                </td>
                                                <td class="listP">
                                                    ${reservedSame.price}원
                                                    <input type="hidden" class="fPrice" value="${reservedSame.totalPrice}">
                                                    <c:if test = "${reservedSame.revocable eq 'able'}">
                                                    	<input type="hidden" class="possPrice" value="${reservedSame.totalPrice}">
                                                    </c:if>
                                                </td>
                                                <td><c:if test = "${reservedSame.revocable eq 'able'}">취소가능</c:if>
                                                <c:if test = "${reservedSame.revocable eq 'unable' && reservedSame.useStatus eq 'unused' }">취소됨</c:if>
                                                <c:if test = "${reservedSame.revocable eq 'unable' && reservedSame.useStatus eq 'used' }">이용완료</c:if></td>
                                                <c:if test = "${reservedSame.revocable eq 'able'}">
                                                <td class="bdr">
                                                    취소하기<input type="checkbox" class="chk" name="chkPartCancel1" id="chkPartCancel1" value="${reservedSame.rvNum}"><input type="hidden" name="TicketNo1" id="TicketNo1" value="${reservedSame.rvNum}">
                                                </td>
                                                </c:if>
                                                <c:if test = "${reservedSame.revocable eq 'unable' && reservedSame.useStatus eq 'unused'}">
                                                  <td class="bdr">${reservedSame.cancelDate}</td>
                                                   </c:if>
                                            </tr>
                                            </c:forEach>
  
                                       		</tbody>
                                        </table>

                                        <input type="hidden" name="ParCancelAbleCnt" id="ParCancelAbleCnt" value="2">
                                    </div>
                                </form>
                                    <!-- 예매정보리스트 -->
                                </td>
                            </tr>
                            
                            <tr>
                                
                                <th>예매 수수료</th>
                                <td class="bdr bdr2">0원</td>
                                <th>배송비</th>
                                <td>현장수령&nbsp;</td>
                                
                            </tr>
                            <tr>
                                <th>총 결제금액</th>
                                <td colspan="3"><strong class="col1">
                                
                                </strong></td>
                            </tr>
                       
		                            <tr>
										<th>환불 금액</th>
										<td colspan="3" class="backM">0원 
										<c:forEach var="reserved" items="${sameTimeList}">
	                             		<c:if test = "${reserved.revocable eq 'unable' && reservedSame.useStatus eq 'unused' && reservedDetail.paymethod == 2}">  
	                             		<input type = "hidden" class ="backprice" value ="${reserved.totalPrice}">
	                             		</c:if>
	                             		</c:forEach>
										</td>		
									</tr>
							<c:if test ="${reservedDetail.paymethod == 22}">
                            <tr>
                                <th>무통장 입금안내</th>
                                <td colspan="3" class="h"><strong>입금계좌 :</strong> 국민은행:38769078838559 <strong>예금주 :</strong> (주)인터파크 <br>
                                    <strong>입금마감시간 :</strong> <span class="red txtB limitT">2020년 08월 18일 23시59분까지</span>
                                    총결제금액 <strong class="col1">18,000원</strong>이 입금되지 않으면 자동 취소됩니다.<br>(은행에 따라서, 밤 11시 30분 이후로는  온라인입금이 제한될 수 있습니다.)
                                </td>
                            </tr>
                            </c:if>
								
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
                                ${reservedDetail.revocableDate} 까지
                                </span></td>
                            </tr>
                        
                            <tr>
                                <th>취소 수수료</th>
                                <td>
                                    <span class="txt11"><strong>
                                    취소일자에 따라서 취소수수료가 달라집니다.</strong> <br>* 단, 예매당일 밤 12시 이전 취소시에는 취소수수료 없음(취소기한내에 한함)
                                    </span>
                                    
                                    <div class="none">
                                    </div>
                                </td>
                            </tr>
                            
                        </tbody></table>
                    </div>
                    <!-- //예매취소 유의사항 -->

                    <!-- 버튼 -->
                    <div class="reserveBTN">
                        <img class = "cancelBtn" src="<%=request.getContextPath()%>/resources/image/bt_reserve_cancel_101129.gif" alt="예매내역 목록" style="cursor:pointer;">
                        <a href="<%=request.getContextPath()%>/myOrder/list"><img src="<%=request.getContextPath()%>/resources/image/btn_list.gif" alt="예매내역 목록" style="cursor:pointer;"></a>
                    </div>

                    <!-- 유의사항 -->
                    <div class="rCation">
                        <h3><img src="<%=request.getContextPath()%>/resources/image/h2_mtit09.gif" alt="유의사항"></h3>
                        <div class="cationTxt">
                                <p class="txtGray2">- 예매수수료는 기간 상관없이 취소후 환불 됩니다.</p>
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
                
                
                
    <script>

    // 체크박스 모두 체크 하기 
    
    $("#chkAllSelect").click(function() {
			$("input[name=chkPartCancel1]:checkbox").each(function() {
				$(this).attr("checked", true);
			});

		});
	

   callimitdate()
   calTotalp();
   calFees();
   calbackPrice();
   calname();
   
      // 예매 수수료 구하기
   
   	function calFees(){
		var sum = 0;
		$('.listP').each(function()
		{
		    sum += parseFloat($(this).text());
		});

		var sum2 = 0;
		$('.fPrice').each(function()
		 		{
		 		    sum2 += parseFloat($(this).val());
		 		});
 		
		var Fees = sum2 - sum
		$('.bdr2').text(Fees+'원')
		
	 }

	 
 	 	
 	// 총결제금액 
 	function calTotalp(){
 		var sum = 0;
 		$('.possPrice').each(function()
 		{
 		    sum += parseFloat($(this).val());
 		});
 		$('.col1').text(sum+'원');
	 		
 	 	}

 	function calname(){

 		var col1 = $('.col1').text();

 		if(col1 == '0원0원')
 	 		$('.nowww').text('취소')
 	 		
	 	}
 	
   // 무통장 입금기간 
   // -- 예매일 +1 
   
   function callimitdate(){

	   
	   var today = new Date($('.reday').text());
	   var tomorrow = new Date();
	   tomorrow.setDate(today.getDate()+1);
		console.log(tomorrow)
		
	    var d = new Date(tomorrow),
	        month = '' + d.getMonth(),
	        day = '' + d.getDate(),
	        year = d.getFullYear();

	    if (month.length < 2) month = '0' + month;
	    if (day.length < 2) day = '0' + day;

	    $('.limitT').text(year+"년"+month+"월"+day+'일 23시59분까지');
	}
	
   // 환불 
   
   $('.cancelBtn').click(function(){

		var form = document.cancelBooked;
		if(!$('.chk').is(':checked')){
			$(this).attr( 'disabled', true );
		}

	  	 var selectedCheck = new Array();
        $('.chk:checked').each(function() {
            selectedCheck.push(this.value);
        });
        // alert(selectedCheck + '\n개수 : '+selectedCheck.length);
        if(selectedCheck.length < 1 ){
            alert('최소한 1개 이상 항목을 선택하셔야 합니다');
            return false;
        }

	    form.submit();
	    
	   })
	   
	 // 환불 금액 구하기 
	 
	  	function calbackPrice(){
 		var sum = 0;
 		$('.backprice').each(function()
 		{
 		    sum += parseFloat($(this).val());
 		});
 		$('.backM').text(sum+'원');
 	 	}




    

    </script>
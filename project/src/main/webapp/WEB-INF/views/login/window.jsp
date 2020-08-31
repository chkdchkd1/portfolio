<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<style>
 #if{
            width: 0px;
            height: 0px;
            border: 0px;
        }
</style>

 <div id="warp">
        <div id="all" style="display: block;">
            <!--상단메뉴 -->
            <div id="header" class="header">
                <ul class="gnb">
                    <li class="m01 on"><span>관람일/회차</span></li>
                    <li class="m02"><span>가격/할인</span></li>
                    <li class="m03"><span>수령방법</span></li>
                    <li class="m04"><span>결제방법</span></li>
                </ul>
            </div>
            <!--//상단메뉴 -->
            <!-- 내용컨탠츠 -->
            <div id="ContentsArea" class="reservation-container" style="display: block;">
                <!-- 제 1 단계 : 관람일/회차 -->
                <div id="step01" style="display: block;">
                    <!-- 관람일선택 -->
                    <div id="step01_date" class="step01_date" style="display: block;">
                        <h2><span>관람일선택</span></h2>
                        <div id="calendar" class="calendar">
                            <div class="here" data-language='ko'></div>
                        </div>                        
                    </div>
                    <!-- //관람일선택 -->
                    <!--회차선택 -->
                   <div id="step01_time" class="step01_time" style="display: block;">
                        <div style="display: block;">
                            <h2><span>회차선택</span></h2>
                            <div class="choie_select">
                                <div class="select_day">
                                    <em class="tit">선택날짜</em><span>2020. 9. 11.</span>
                                </div>
                                <div class="number">
                                    <em class="tit">회차선택</em>
                                    <ul id="ulTime">
                                    
                                    </ul>
                                </div>
                                <div class="seat">
                                    <em class="tit">좌석등급/잔여석</em>
                                    <ul id="ulSeatSpace" class="hi">
                                        <li class="grade">
                                            <div>
                                                <strong class="c_name">입장권</strong> <span class="c_price">석</span>
                                                </div>
                                            </li>
                                        </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- //회차선택 -->
                    <!-- 공연안내 -->
                    <div id="step01_notice" class="step01_notice" style="display: block;">
                        <h3><img src="<%=request.getContextPath() %>/resources/image/h3_tit_notice.gif" alt="유의사항"></h3>
                        <div id="guideview">
                            <ul>
                                <li>- 안내되어 있는 잔여석은 결제 진행 중인 좌석을 포함하고 있어 예매 가능 좌석과 다를 수 있습니다.</li>
                                <li>- 할인은 자동선택 되지 않으니, <u>적용 받고자 하는 할인이 있는 경우 직접 선택</u>해주시기 바랍니다.</li>
                                <li>- 장애인, 국가유공자, 학생 할인 등 증빙서류가 필요한 경우 현장수령만 가능하며, <u>현장에서 증빙서류 미지참 시 차액 지불</u>하셔야 합니다.</li>
                                <li>- <u>관람 당일 공연 예매 시에는 변경/취소/환불이 불가</u>합니다.</li>
                                <li>- 경우에 따라 ATM 기기에서 가상계좌 입금이 안 될 수 있으니 가급적 인터넷/폰뱅킹 등을 이용해주시기 바랍니다.</li>
                            </ul>                            
                        </div>
                    </div>
                    <!-- //공연안내 -->
                </div>
                <!-- //제 1 단계 : 관람일/회차 -->
                <!-- 제 2 단계 : 가격/할인 -->
                <div id="step02" class="step02" style="display: none;">
                    <!-- 가격선택 -->
                    <div class="step02_promotion">
                        <h2>
                            <span>가격</span>
                        </h2>
                            <div id="divPromotionList" class="scroll" style="height:228px !important">
                                <div style="display: block;">
                                    <table id="tblPromotionGroup1" border="0" cellpadding="0" cellspacing="0" class="sale_table" grpno="1" seatname="정가 기본할인" cusselseatcnt="1">
                                        <colgroup>
                                            <col width="55%">
                                            <col width="15%">
                                            <col width="20%">
                                            <col width="10%">
                                        </colgroup>
                                        <thead>
                                            <tr>
                                                <th scope="col">입장권</th>
                                                <th scope="col">금액</th>
                                                <th scope="col">매수</th>
                                                <th scope="col">설명</th>
                                            </tr>
                                        </thead>
                                        <tbody class="pbody">                          
                                           <tr><td class="l">주말 일반<br></td><td>9000</td><td><select class="amticket"><option value="0">0매</option><option value="1">1매</option><option value="2">2매</option></select></td><td><input type ="hidden" class ="ppNum" name="ppNum" value="2"></td></tr>
                                           <tr><td class="l">주중 일반<br></td><td>8000</td><td><select class="amticket"><option value="0">0매</option><option value="1">1매</option><option value="2">2매</option></select></td><td><input type ="hidden" class ="ppNum" name="ppNum" value="1"></td></tr>                                        
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- //가격선택 -->
                <!-- //제 2 단계 : 가격/할인 -->
                <!-- 제 3 단계 : 수령방법 -->
                <div class="step03" id="step03" style="display: none;">
                    <h2><span>수령방법</span></h2>
                    <div class="receipt_select">
                        <!-- 수령방법선택 -->
                        <div class="select_seat">
                            <em class="tit">수령방법선택</em> 
                            <span id="deliveryPos">
                                <input type="radio" name="rdoDelivery" id="rdoDeliveryBase" checked>
                                <label for="rdoDeliveryBase">현장수령</label>
                            </span>
                        </div>
                        <!-- //수령방법 -->
                        <!-- 주문자확인 정보 -->
                        <div id="step03_OrdererInfo" style="display: block;">
                            <h4>주문자확인</h4>
                            <ul>
                                <li><em>이름</em><input id="ordererUserName" type="text" style="width: 110px;" maxlength="50" class="imekor" readonly="readonly" value="${user.name}"></li>
                                <li><em>생년월일</em><input id="ordererUserBirth" type="text" style="width: 60px;" maxlength="6" placeholder="YYMMDD"><h5>가입시 입력하신 회원정보와 정보와 다를경우, 예매가 불가능합니다.</h5></li>
                                <li><em>
                               
                                  긴급연락처
                                
                                </em>
                                    <input id="ordererMobile1" type="text" style="width: 30px;" maxlength="3" class="imedisable" }>
                                    -
                                    <input id="ordererMobile2" type="text" style="width: 50px;" maxlength="4" class="imedisable">
                                    -
                                    <input id="ordererMobile3" type="text" style="width: 50px;" maxlength="4" class="imedisable">
                                </li>
                                <li><em>e-mail</em>
                                    <input id="ordererMailH" type="text" style="width: 110px;" maxlength="50" class="imedisable" readonly="readonly">
                                    @
                                    <input id="ordererMailD" type="text" style="width: 110px;" maxlength="50" class="imedisable" readonly="readonly">
                                </li>
                            </ul>
                        </div>
                        <!-- //주문자확인 정보 -->
                        <!-- 주의사항 -->
                        <div class="caution" id="step04_DeliveryCaution" style="display: block;">
                            <h5>주의사항 <em style="font-weight:normal;">* 부정확한 정보 입력으로 인한 문제 발생 시 예스24는 책임을 지지 않습니다.</em></h5>
                            <ul>
                             
                                <li>1)<span class="red"> 배송 선택 시 티켓 수령자의 배송지 정보를 정확히 입력해주시기 바랍니다.</span></li>
                                <li>2)<span class="red"> 티켓은 유가증권으로 본인에게 직접 전달해야하며, 분실된 티켓은 재발권 되지 않습니다.</span></li>
                                <li>3)<span class="red"> 일괄배송의 경우 정해진 날짜에 티켓 배송이 시작되며, 주소 수정은 일괄배송일 2일 전까지 가능합니다.</span></li>
                                <li>4)<span class="red"> 예매 티켓 배송은 예매완료일, 혹은 일괄배송일로부터 4~5일(영업일 기준) 이내 수령 가능합니다.</span> </li>
                                <li>5) 긴급연락처는 공연 취소와 같은 유사 시 안내 받으실 연락처이므로 정확히 입력해주시기 바랍니다.</li>
                                <li>6) 이메일 정보 미 입력 시 예매 관련 안내 메일을 받을 수 없으니 이메일 받기를 원하시는 경우 마이페이지에서<br>&nbsp;&nbsp;&nbsp;회원정보를 수정해주시기 바랍니다.</li>
                                
                            </ul>
                        </div>
                         <!-- //주의사항 -->
                        <!-- //주의사항 -->
                    </div>
                </div>
                <!-- //제 3 단계 : 수령방법 -->
                <!-- 제 4 단계 : 결제방법 -->
                <div class="step04" id="step04" style="display: none;">
                    <h2 style=""><span>결제방법</span></h2>
                    <div class="receipt_select receipt_pt0">
                        <!-- 결제수단 & 결제방법선택 -->
                        <div class="receipt_scroll receipt_hsize">
                            <ul class="mb">
                                <!-- 결제방법선택 -->
                                <li class="d_line">
                                    <em>결제방법선택</em>
                                    <div class="con conpd">
                                        <ul id="paymethodPos">
                                            <li idcode="2">
                                                <input type="radio" name="rdoPays" id="rdoPays2" idgroup="2" value="2" datedifference="28">
                                                신용카드
                                            </li>
                                            <li idcode="22">
                                                <input type="radio" name="rdoPays" id="rdoPays22" idgroup="22" value="22" datedifference="28" >
                                                무통장 입금 
                                                <select id="selBank">
                                                    <option value="-1">입금은행 선택</option>
                                                    <option value="50">국민은행</option>
                                                    <option value="11631">기업은행</option>
                                                    <option value="57">농협중앙회</option>
                                                    <option value="11629">신한은행</option>
                                                    <option value="49">우리은행</option>
                                                    <option value="11634">우체국</option>
                                                    <option value="11630">하나은행</option>
                                                    <option value="11633">SC은행</option>
                                                </select>
                                            </li>
                                        </ul>
                                    </div>
                                </li>
                                <!-- //결제방법선택 -->
                            </ul>
                            <!-- 결제수단 & 결제방법선택 -->
                            <!-- 취소수수료 안내 및 약관동의 -->
                            <div class="caution bgbrn" id="cancelFeeInfo">
                                <!--h5>취소수수료 안내 및 이용 약관</h5-->
                                
                                <div class="box">
                                    <em>취소 가능 마감 시간 : </em><span id="lblCancelTimeInfo" class="red">2020년 09월 10일 17:00 까지</span>
                                </div>
                                    
                                    <table class="boardListTypeB tb_w">
                                    <colgroup>
                                    <col width="33%" align="center">
                                    <col width="38%" align="center">
                                    <col width="*">
                                    </colgroup>
                                    <thead>
                                      <tr>
                                        <th>내용</th>
                                        <th>취소수수료</th>
                                        <th>비고</th>
                                      </tr>
                                     </thead>
                                     <tbody>
                                      <tr>
                                        <td>예매 후 7일 이내</td>
                                        <td>없음</td>
                                        <td rowspan="5" class="bl_p alignLeft">- 취소 시 예매수수료는 예매 당일 밤 12시 이전까지만 환불됩니다. <br>
                                    - 예매 후 7일 이내라도 취소시점이 관람일로부터 10일 이내라면 그에 해당하는 취소수수료가 부과됩니다.  <br>
                                    - 관람 당일 취소 가능 상품의 경우 관람 당일 취소 시 티켓금액의 90%가 취소수수수료로 부과됩니다.
                                    </td>
                                      </tr>
                                      <tr>
                                        <td>예매 후 8일 ~ 관람일 10일 전까지</td>
                                        <td>뮤지컬, 콘서트, 클래식 등: <span class="red">장당 4,000원</span> /<br> 연극, 전시 등: <span class="red">장당 2,000원</span> <br>(단, 티켓 금액의 10% 이내)</td>
                                      </tr>
                                      <tr>
                                        <td>관람일 9일 전 ~ 관람일 7일 전까지</td>
                                        <td>티켓금액의 <em class="red">10%</em></td>
                                      </tr>
                                      <tr>
                                        <td>관람일 6일 전 ~ 관람일 3일 전까지</td>
                                        <td>티켓금액의 <em class="red">20%</em></td>
                                      </tr>
                                      <tr>
                                        <td>관람일 2일 전 ~ 관람일 1일 전까지</td>
                                        <td>티켓금액의 <em class="red">30%</em></td>
                                      </tr>  
                                    </tbody>
                                    </table>
                                    
                            </div>                                
                        </div>                            
                    </div>
                    <!-- //취소수수료 안내 및 약관동의 -->
                    <span class="chkbox">
                        <input id="cbxCancelFeeAgree" type="checkbox"><label id="chkCancelFeeAgreeText">취소수수료 및 취소기한을 확인하였으며, 동의합니다.</label>
                        <input id="chkinfoAgree" type="checkbox"><label>제3자 정보제공 내용에 동의합니다. [상세보기]</label>
                    </span>
                </div>
                <!-- //제 4 단계 : 결제방법 -->
            </div>
            <!--// 내용컨탠츠 -->
            <!-- 상황판 -->
            <div id="StateBoard">
                <div class="result">
                    <div id="perfboard" class="title"><p><img src="https://stkfile.yes24.com/upload2/PerfBlog/202008/20200806/20200806-365681.jpg" width="79" height="98" alt=""></p>
                        <span id="ptitle" class="tit">${productR.title}</span>
                        <span class="date">${productR.startDate} ~ ${productR.endDate}</span>
                        <span id="ptheatername" class="date">${productR.place}</span>
                    </div>
                    <div class="select_infor">
                        <h3>선택내용</h3>
                        <ul>
                            <li><em>날짜</em><span id="tk_day"></span></li>
                            <li><em>시간</em><span id="tk_time"></span></li>
                            <li><em>매수</em><span id="tk_count"></span></li>
                            <li><em>좌석</em>
                                <div id="tk_seat"><span>비지정석</span></div>
                            </li>
                        </ul>
                    </div>
                    <div class="pay_infor">
                        <h3>결제내용</h3>
                        <div class="link01">
                            <ul>
                                <li class="tk_price">
                                    <em>
                                        티켓금액
                                    </em>
                                    <span></span>
                                </li>
                                <li class="tk_charge">
                                    <em>
                                        예매수수료
                                    </em>
                                    <span></span>
                                </li>
                                <li class="tk_sumplus">
                                    <em>
                                       총 금액
                                    </em>
                                    <span></span>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <span class="t_result">최종결제 금액<span></span></span>
                    <div class="btn">
                        <div id="StepCtrlBtnPanel" class="tc">
                            <div id="StepCtrlBtn01" style="display: block;">
                                <a class="dcursor" href="javascript:void(0)" onclick="fdc_VerifySelSeatNumber();"><img src="<%=request.getContextPath()%>/resources/image/btn_next04.gif" alt="다음단계"></a>
                            </div>
                            <div id="StepCtrlBtn02" style="display: none;">
                                <a class="dcursor" href="javascript:void(0)" onclick="fdc_GoPrevStep(jcSTEP1);"><img src="<%=request.getContextPath()%>/resources/image/btn_prev.gif" alt="이전단계"></a>
                                <a class="dcursor" href="javascript:void(0)" onclick="fdc_PromotionEnd();"><img src="<%=request.getContextPath()%>/resources/image/btn_next02.gif" alt="다음단계"></a>
                            </div>
                            <div id="StepCtrlBtn03" style="display: none;">
                                <a class="dcursor" href="javascript:void(0)" onclick="fdc_GoPrevStep(jcSTEP2);"><img src="<%=request.getContextPath()%>/resources/image/btn_prev.gif" alt="이전단계"></a>
                                <a class="dcursor" href="javascript:void(0)" onclick="fdc_DeliveryEnd();"><img src="<%=request.getContextPath()%>/resources/image/btn_next02.gif" alt="다음단계"></a>
                            </div>
                            <div id="StepCtrlBtn04" style="display: none;">
                                <a class="dcursor" href="javascript:void(0)" onclick="fdc_GoPrevStep(jcSTEP3);"><img src="<%=request.getContextPath()%>/resources/image/btn_prev.gif" alt="이전단계"></a>
                                <a class="dcursor" href="javascript:void(0)" onclick="fdc_PrePayCheck();"><img id="imgPayEnd" src="<%=request.getContextPath()%>/resources/image/btn_succ.gif" alt="결제하기"></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--// 상황판 -->
            </div>
        <!-- 예매 성공시 내역 출력 -->
        <div id="SuccessBoard" style="display: none;">
            <div class="success">
                <div class="suc_tit">
                    <h2>결제가 정상적으로 완료되었습니다.</h2> 
                   <p>예매 상세내역은 메인화면 상단 예매확인/취소에서 확인하실 수 있습니다.</p> 
                </div>
                <div id="BannerCtrl" class="">
                    <div id="SuccBook" class="succ">
                        <h4><i class="fas fa-check"></i> 예매정보</h4>
                        <ul>
                            <li><em>예약번호</em><span class="red"><strong id="bk_bookno" class="big">197624810</strong><strong id="bk_tkcount">[총1장]</strong></span> </li>
                            <li><em>공연명</em><span><strong id="bk_perfname">K-핸드메이드페어 2020</strong></span></li>
                            <li id="SuccTheater"><em>공연장</em><span><strong id="bk_theatername">코엑스 D홀</strong></span></li>
                            <li id="SuccTime"><em>관람일시</em><span id="bk_viewtime">2020.11.19 (목) [1회] 11시 00분</span></li>
                            <li id="SuccSeat">
                                <em>좌석<p><a id="bk_seatBtn" style="display:none" href="javascript:;void(0);"><img src="http://tkfile.yes24.com/img/mypage/btn_chkseat.gif" alt="좌석위치보기" style="margin-left:-7px"></a></p> </em>
                                <div id="bk_tkseat"><span>비지정석</span></div>
                            </li>
                            <li>
                                <em>수령방법</em>
                                <span id="bk_deliveryinfo"><strong>현장수령</strong> </span>
                            </li>
                        </ul>
                        <h4><i class="fas fa-check"></i> 예매 후 유의사항</h4>
                        <ul id="SuccCancelTime">
                            <li>
                                <em>취소가능일시 :</em>
                                <span class="blu"><strong id="bk_canceltimeinfo">2020년 11월 18일 17:00 까지</strong></span>
                            </li>
                        </ul>    
                    </div>
                    <div id="SuccPay" class="succ">
                        <h4><i class="fas fa-check"></i> 결제정보</h4>
                        <ul class="pay">
                            <li><em>티켓금액</em><span id="sp_tkprice">5000</span></li>
                            <li><em>예매수수료</em><span id="sp_charge">300</span></li>
                            <li class="gry"><em><strong>(+)금액</strong></em><span><strong id="sp_sumplus">5,300</strong></span></li>
                            <li class="total"><em>총 결제금액</em><span><strong id="sp_result">5,300</strong> 원</span></li>
                            <li><em>결제수단</em><span id="sp_payinfo">무통장입금</span></li>
                            <li id="bank_accbank" style="display: block;"><em>입금계좌/은행</em><span id="sp_bank_accbank">45329012766706 / 국민은행</span></li>
                            <li id="bank_amttime" style="display: block;"><em>입금금액/마감</em><span id="sp_bank_amttime">5,300 원 / 2020-08-18 23:29:59</span></li>
                        </ul>
                    </div>
                </div>
                <div class="confirm">
                    <div class="tc">
                        <a id="imgGomyticketD" class="dcursor"><img src="<%=request.getContextPath()%>/resources/image/btn_ok02.gif" alt="예매내역확인"></a>
                    </div>
                </div>
            </div>
            </div>
        <div class="PayInfoSendForm">
            </div>
    </div>

 	<input type ="hidden" class ="oriQuan" >
 	<input type ="hidden" class ="genre" >
 	<input type ="hidden" class ="no" name="semiDay" alt="주말평일">
 	
 	<form name = "bk" method="post" target="param">
 	<!-- 정보 보관  -->
 	<input type ="text" class ="gsCode" name="gsCode" value="${productR.code}" alt="상품코드"> 	
 	<input type ="text" class ="rvId" name="rvId" value="${user.id}" alt="상품코드"> 	 	
    <input type ="text" class ="finaldate" name="finaldate" alt="날짜">
    <input type ="text" class ="roundNum" name="roundNum" alt="회차">
    <input type ="text" class ="paymethod" name="paymethod" alt="결제방법">
    <input type ="text" class ="methodBank" name="methodBank" alt="입금은행">
    </form>

      <!-- iframe 설정 -->
    <iframe id="if" name="param"></iframe>
    
    <script>

    $(document).ready(function(){

    	var genre = "${productR.genre}";
    	var goodsType = "${productR.godType}";
    	if (genre == '전시')
    		$('.genre').val(500)
    	 else 
    	    $('.genre').val(300) 

   	    if (goodsType == '상시'){
       	    $('#step01').css("display","none");
       	    $('#step02').css("display","block");
       	    $('#StepCtrlBtn01').css("display","none");
       	    $('#StepCtrlBtn02').css("display","block");
       	    $('#tk_time').text('상시상품');
       		$('.roundNum').val(${want.selectRound});


               getPriceList()

          	    
        	    }
         
         })
    
   var ulList = document.querySelector("#ulTime")
 
   $('.here').datepicker({
           showOtherMonths: false,
        dateFormat: 'yyyy.mm.dd',
        minDate: new Date("${productR.startDate}"),
        maxDate: new Date("${productR.endDate}"),
        onSelect : function (date,d) {

	        var day = d.getDay();
		    week=new Array("일","월","화","수","목","금","토");
		    $('.select_day span').text(date)
	        $('#tk_day').text(date +' ('+ week[day]+') ');
	        callRound(day,${productR.code});
	        $('.no').val(day);
	        $('.finaldate').val(date);
	        $('.roundNum').val('');
        	}
     });

      var wantDay = $('.here').datepicker().data('datepicker');
      wantDay.selectDate(new Date("${want.selectDate}"));
           
	
		
    function callRound(day,code){
  		var type = ${productR.weekDif};
  		
  		if (type == 2)
  			// 평일 주말 수량이나 가격이 다르지 않으면 
  			var allData = JSON.stringify({ "code": code, "weekend": 3 });
  		else{
  				if (day == 0 || day == 6){
  					var allData = JSON.stringify({ "code": code, "weekend": 2})
  				}else {
  					var allData = JSON.stringify({ "code": code, "weekend": 1})
  				}
  			} 			
  		
   	  $.ajax({
  	       async:true,
  	       // 동기 : 앞작업이 끝날 때까지 기다리고 다음 작업을 하는것 (아이디중복검사) , 비동기 : 기다리지 않고 바로 맡기는것,  서로 다른 작업을 동시에 실행할 때 (댓글창) 
  	       type:'POST',
  	       data:allData,
  	       // 전송할 데이터
  	       url:"<%=request.getContextPath()%>/quantity",
  	       dataType:"json",
  	       contentType:"application/json; charset=UTF-8",
  	       success : function(data){
  	       	  // 요청이 성공 했을 때 호출할 콜백 함수 
  				// 배열의 요소 개수만큼 반복
  				
  				$('#ulTime').empty();				
  	    	    for(var i =0; i<data.length; i++){
		  	   var lz = document.createElement("li");    
  		  	         if (data[i].roundTime != null ){
  			  	       lz.innerHTML = data[i].round +'&nbsp'+ data[i].roundTime   			  	          	   			  	     
  			         	/* str += '<li>'+data[i].round +' '+ data[i].roundTime + '</li>'; */
  			         } else {
  			        	 lz.innerHTML = data[i].round;  
  	    		  		}
  					 ulList.appendChild(lz);
		    	 lz.addEventListener("click",quantityNum)
  					 
  	    	    }
 	    		// $('#ulTime').html(str)
 	    	
 	    	  	    
  	       		}
   
  		})
  	}

	function quantityNum(event){

	 const leftli = ulList.querySelectorAll("li")
	 const ON = "on"

	 for( var i = 0; i < leftli.length; i++ ){ 
		 leftli[i].classList.remove(ON);
	 }
	 
	 event.target.classList.add(ON)
	 
     var code = ${productR.code};
	 var round = event.currentTarget.innerText.substring(0,2);
	 var day = $('.no').val();
	 
	 var pType = ${productR.weekDif};
		
		if (pType == 2)
			// 평일 주말 수량이나 가격이 다르지 않으면 
			var all = JSON.stringify({ "code": code, "weekend": 3, "round": round});
		else{
				if (day == 0 || day == 6){
					var all = JSON.stringify({ "code": code, "weekend": 2, "round": round})
				}else {
					var all = JSON.stringify({ "code": code, "weekend": 1, "round": round})
				}
			} 		
		

	  $.ajax({
	       async:true,
	       type:'POST',
	       data:all,
	       url:"<%=request.getContextPath()%>/quantityNum",
	       dataType:"json",
	       contentType:"application/json; charset=UTF-8",
	       success : function(data){
				$('#SeatRemain').empty();	
				$('.oriQuan').val(data[0].quantity)
				$('#tk_time').text(data[0].round+' '+ data[0].roundTime)
				$('.roundNum').val(data[0].qNum);		
				// 나중에 입장권권 // 몇장 남았는지 예약 테이블에서 같은 코드- 같은 회차코드 가지고 있는거 카운트 해서 전체 좌석 표중에서 빼서 보여주기 
				console.log(data);
				reservedQuantity()
				
				
	     } 
 
		})
		
	   
	  }

	  // 현재 같은 상품코드 + 해당 날짜 + 해당 회차에 예약된 좌석 읽어오기 c_price의 text 값을 읽어와서 빼기 
	  
	  function reservedQuantity(){

		  var code = ${productR.code}; 
		  var round = $('.roundNum').val();
		  var date = $('.finaldate').val();
		  var dt = JSON.stringify({ "code": code, "date": date, "round": round});


		  $.ajax({
		       async:true,
		       type:'POST',
		       data:dt,
		       url:"<%=request.getContextPath()%>/reservedQuantity",
		       dataType:"json",
		       contentType:"application/json; charset=UTF-8",
		       success : function(data){
				
					// 나중에 입장권권 // 몇장 남았는지 예약 테이블에서 같은 코드- 같은 회차코드 가지고 있는거 카운트 해서 전체 좌석 표중에서 빼서 보여주기 
		    	   var originalQ = $('.oriQuan').val()
		    	   var now = Number(originalQ) - Number(data);
		    	   $('.c_price').text(now+'석');
		    	   console.log(now)
					
		     } 
	 
			})
			

		  
		  }
	

      function fdc_VerifySelSeatNumber(){

			// 잔여석 0일때 예약 막기
        	var catRes =  $('.c_price').text()
			if (catRes == '0석'){
				alert("예약 불가능한 회차입니다.")
				return false;
				}

        	if($('.roundNum').val() == null || $('.roundNum').val() == ''){
					alert('회차를 선택해주세요')
					return false;
            	}

		          
          // step01, step03의 display의 속성 바꾸고 li에있는 on속성을 제거하고 그 다음 li로 on클래스 붙이기 
          $('#step01').css('display','none');
          $('#step02').css('display','block');
          $('.m01').removeClass('on');
          $('.m02').addClass('on');
          $('#StepCtrlBtn01').css('display','none');
          $('#StepCtrlBtn02').css('display','block');

          getPriceList()


  	 	

      }

     
       // 이전버튼 다음버튼 
      const jcSTEP1 = {
          main : document.querySelector("#step02"),
          btn : document.querySelector("#StepCtrlBtn02")
      }
      const jcSTEP2 = { 
          main : document.querySelector("#step03"),
          btn : document.querySelector("#StepCtrlBtn03")
      }
      const jcSTEP3 = { 
          main : document.querySelector("#step04"),
          btn : document.querySelector("#StepCtrlBtn04")
      }

     function fdc_GoPrevStep(jcSTEP){

 	     // 상시 상품이면 1페이지로 못가게 하기 
 	     
    		var goodsType = "${productR.godType}";
    	    if (goodsType == '상시' && jcSTEP == jcSTEP1 ){
    	    		return false;
    	    }

	      jcSTEP.main.previousElementSibling.style.display = 'block';
	      jcSTEP.main.style.display = 'none';
	      jcSTEP.btn.previousElementSibling.style.display = 'block';
	      jcSTEP.btn.style.display = 'none';

	      // 2번째 페이지로 가면 설정했던 가격 값들 지우고, 가격 리스트 다시불러오기
	      if (jcSTEP == jcSTEP2 ){
	 	 	 $('input[name=ppNum]').remove();
		 	 $('input[name=totalPrice]').remove();
		 	 $('input[name=rvamount]').remove();

				getPriceList()
	    	}
		    

     }

      
     function fdc_PromotionEnd(){

   
     selectedAmount()
 	      
      jcSTEP1.main.style.display = 'none';
      jcSTEP1.btn.style.display = 'none';
      jcSTEP2.main.style.display = 'block';
      jcSTEP2.btn.style.display = 'block';

      OrdererInfo()

      // 잔여석 + 내가 예약하려는 매수 > 원래 상품 잔여석 return false; 
     }

  


       
     function fdc_DeliveryEnd(){
	          
		// 생년 월일 입력안했을 때 결제방법 페이지로 안넘어가게 하는거 
	   	   var nullbirth = $("#ordererUserBirth").val();
				if (nullbirth == null || nullbirth == ''){
					alert("생년월일을 입력해주세요")
					return false;
				} 

		   if($('#tk_count').text() == '0매'|| $('#tk_count').text() == ''){
	   	          alert('매수를 선택해주세요')
	   	          return false
	   	          }
			   			
			   	      
					
	        jcSTEP2.main.style.display = 'none';  
	        jcSTEP2.btn.style.display = 'none';
	        jcSTEP3.main.style.display = 'block';
	        jcSTEP3.btn.style.display = 'block';
	        
	     // 내가 지정한 날짜 또는 상품종료일 하루전을 취소 마감시간으로 넣기
		 jsDateCalculation ()
		 
     }
			

     function fdc_PrePayCheck(){



    	// 선택한 결제 방법 저장하기 
			var pmethod = $('input[name="rdoPays"]:checked').val();
		    $('.paymethod').val(pmethod)
			var pbank = $('#selBank option:checked').val();
		    $('.methodBank').val(pbank)
		    
		    
    	 if( $('.paymethod').val() == '' ){
    		 alert("결제방법을 선택해주세요 ")
    		 return false
    	 } else if ($('.paymethod').val() == '22' && $('.methodBank').val() == '-1'){
    		 alert("입금은행을 선택해주세요 ")
    		 return false
        	 }
		 
    	 if ($("input:checkbox").is(":checked") == false){
        	 alert("취소수수료/취소 기한 및 제 3자 정보 제공 내용에 동의하셔야만 결제 가능합니다. 내용을 확인하신 후 동의하기를 체크해주세요.")
        	 return false }  


    	 iframeSubmit()
    	 
         $('#all').css('display','none');
         $('#SuccessBoard').css('display','block');

         


     }

     
     $('#imgGomyticketD img').click(function(){
         window.close();  
         opener.parent.location.replace("<%=request.getContextPath()%>/myOrder/detail");

        })
        
     
     // 제한매수 가져오기
   	function ticketAmount(){
		for(var i=0; i<=${productR.limitAmount};i++) {        
	         var op;
	         op += "<option value="+i+">"+i+"매</option>"
	     }
       	$('.amticket').append(op);
	 }






 
     function selectedAmount(){

    
    	 	var fees = $('.genre').val();
    	 	var totalCount = 0;
    	 	var totalPrice = 0;
    	 	var totalFprice = 0;
    	 	
         
  	      	var rowData = new Array();
  			var tdArr = new Array();
  			var option = $('.amticket option:selected');
  			//id는 중복이 안된다 
  	
  		// 체크된 체크박스 값을 가져온다
  				$('.amticket').each(function(i) {
  		
  					// checkbox.parent() : checkbox의 부모는 <td>이다.
  					// checkbox.parent().parent() : <td>의 부모이므로 <tr>이다.
  					var tr = $(this).parents('tr');
  					//var tr = option.parents('tr')
  					var td = tr.children();
  					console.log(i)
  					
  					// 체크된 row의 모든 값을 배열에 담는다.
  					rowData.push(tr.text());
  					
  					// td.eq(0)은 체크박스 이므로  td.eq(1)의 값부터 가져온다.
  					var type = td.eq(0).text()
  					var price = Number(td.eq(1).text())
  					var fprice = Number(td.eq(1).text()) + Number(fees)
  					var count = $(this).val();
  					var priceListNum = td.eq(3).children('input').val()
  			  		console.log($(this).eq(i).html())
  			  		console.log(priceListNum)
  			  		
  			  					
  					// 가져온 값을 배열에 담는다.
  					if (count != 0 ){
	  					tdArr.push(type)
	  					tdArr.push(price)
	  					tdArr.push(fprice);
	  					tdArr.push(count);
	  					tdArr.push(priceListNum);	  					
	  					console.log(tdArr)
	  					
	  					
	  					// 가져온 값 더해서 총 매수, 총가격 구하기 
		  					totalCount +=  Number(count)
		  					totalPrice += (Number(price)*Number(count))
		  					
		  					
			  					for (var i = 0; i<count ; i++ ){
				  						var name = new Array("ppNum","totalPrice","rvamount");  					
				  				  		var str =  '<input type ="text" name="'+name[0]+'" value ="'+priceListNum+'"><input type ="text" name="'+name[1]+'" value ="'+fprice+'"><input type ="text" name="'+name[2]+'" value ="1">'
				  							$('form').append(str)
				  					
			  					}
  					}

  			
  				})

  				    // 구한 가격 전광판에 띄우기
					console.log(totalCount)
					$('#tk_count').text(totalCount+'매')
					$('.tk_price span').text(totalPrice
							)
					// 최종 수수료 
					$('.tk_charge span').text(totalCount*fees)
					var fFees = $('.tk_charge span').text()
					
					//최종 금액 
					totalFprice = totalPrice+Number(fFees)
					$('.tk_sumplus span').text(totalFprice)
					$('.t_result span').text(totalFprice)
					
					
  	 
       }


     function iframeSubmit(){

    	 var form = document.bk;
 	    form.action = '<%=request.getContextPath()%>/ticketBook';
 	    form.submit();
 	    
         }
     
     
     


//    https://all-record.tistory.com/172 (참고 / 상시 성인 청소년 어린이 각각 할때 참고할 것 )
//   	   			TOTAL += NUM(A)
   	   			
 
	 	 

	  // 회원정보 가져오기 (수령방법)
   function OrdererInfo(){
		
	var mobile = "${user.phone}"
	$('#ordererMobile1').val(mobile.substring(0,3))
	$('#ordererMobile2').val(mobile.substring(3,7))
	$('#ordererMobile3').val(mobile.substring(7,11))
	
	var beforemail = "${user.email}"
	var afteremail = beforemail.split('@');
	$('#ordererMailH').val(afteremail[0]);
	$('#ordererMailD').val(afteremail[1]);

	// usrbirth랑 입력값이 다르면 알럿띄우고 다음단계 버튼 활성화 안되도록 
	$("#ordererUserBirth").change(function(){
		var birth = "${user.birth}"
		var putbirth = $(this).val();
			if (putbirth == '' || putbirth == null || birth != putbirth){
				alert("올바르지 않은 정보입니다.")
				$('#StepCtrlBtn03').children().last().removeAttr("onclick")
			} else
				$('#StepCtrlBtn03').children().last().attr("onclick","fdc_DeliveryEnd();")
					
		})
	}

		
	// 마감시간 계산하기
	function jsDateCalculation () {

  	var goodsType = "${productR.godType}";
  	var selectedDate = $('.finaldate').val();
    if (goodsType == '상시'){
    	selectedDate = "${productR.endDate}";
    }
    
        
    var beforeDate = selectedDate.split('.')
    var changeDate = new Date();
    changeDate.setFullYear(beforeDate[0], beforeDate[1], beforeDate[2]-1)

    var year = changeDate.getFullYear();
	var month = changeDate.getMonth();
	var day = changeDate.getDate();

	var str = year+'년 '+month+'월 '+day+'일  09:00까지' 
	$('#lblCancelTimeInfo').text(str);

	}


	function getPriceList(){

	  var code = ${productR.code};
	  var day = $('.no').val();
 	  var pType = ${productR.weekDif};
	
	if (pType == 2)
		// 평일 주말 수량이나 가격이 다르지 않으면 
		var pall = JSON.stringify({ "code": code, "weekend": 3, "round": 0});
	else{
			if (day == 0 || day == 6){
				var pall = JSON.stringify({ "code": code, "weekend": 2, "round": 0})
			}else {
				var pall = JSON.stringify({ "code": code,  "weekend": 1, "round": 0})
			}
		} 		
	
       $.ajax({
	       async:true,
	       type:'POST',
	       data:pall,
	       url:"<%=request.getContextPath()%>/ResPriceList",
	       dataType:"json",
	       contentType:"application/json; charset=UTF-8",
	       success : function(data){

		  	   var str = '';  
	    	   
	    for(var i =0; i<data.length; i++){
		  	           str += '<tr>'+'<td class="l">'+data[i].type +'<br></td><td>'+ data[i].price + '</td><td><select class="amticket"></select></td><td><input type ="hidden" class ="ppNum" name="ppNum" value="'+data[i].num+'"></td>'; 
					 $('.pbody').html(str);
		  	      ticketAmount() 
	    	    }

	     } 
 
		}) 
	}



	//http://noveloper.github.io/blog/javascript/2015/03/08/submit-form-except-specific-tag.html (form시 특정 태그 제외 하기)




    </script>
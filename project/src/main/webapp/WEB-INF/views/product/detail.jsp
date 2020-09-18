<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<div class="product-box">
 <!-- 상단 타이틀 -->
    <div class="renew-wrap">
        <div class="renew-content">
            <div class="rn-01"><!--로케이션, 라벨-->
                <p class="rn-location"><a href="#">${productD.genre}</a></p>
            </div><!--rn-01-->
            <div class="rn-02"><!--제목-->
                <p class="rn-big-title">${productD.title}</p>
                <div class="rn-product-short-data">
                    <p><span class="ps-date">${productD.startDate} ~ ${productD.endDate}</span><a href="#" id="ps-location"><span class="ps-location">${productD.place}</span></a></p>
                </div>			
            </div><!--rn-02-->
        </div>	
    </div> 
    <div class="renew-wrap rw2">
        <div class="renew-content">
            <!-- 상품 상세정보  -->
            <div class="rn-03">
                <div class="rn-03-left"><!--포스터, 지역, 동영상-->
                    <div class="rn-product-imgbox">
                        <img src="/img/${image2.file}" style="width: 430px; height: 600px;">
                    </div>				
                </div><!--rn-03-left-->
                <div class="rn-03-right"><!--상품정보-->
                    <div class="rn-product-area1"><!--등급, 관람시간, 출연, 가격, 혜택-->
                        <dl>
                            <dt>등급</dt>
                            <dd>&nbsp;${productD.ratings}</dd>
                            <dt>관람시간</dt>
                            <dd>&nbsp;-- </dd>
                            <dt>가격</dt>
                            <dd class="rn-product-price">
                                <ul class="rn-product-price1">
				      				<c:forEach var="pList" items="${pList}">                  
                                    <li>${pList.type} <span class="rn-red">${pList.price}</span>원</li>
                                    </c:forEach>
                                </ul>
                            </dd>
                            <dt>혜택</dt>
                            <dd class="rn-product-dc">
                                <p class="rn-product-dc2">
                                    <a href="#" class="ico-pop rn-pop-btn" data-popbtn="2">제휴카드할인</a>
                                </p>							
                            </dd>
                        </dl>					
                    </div>                                    
                    <div class="rn-product-area3"><!--공연시간안내, 배송정보-->
                        <dl>
                            <dt>공연시간 안내</dt>
                            <dd><pre>${productD.infoTime}</pre> </dd>
                            <dt>배송정보</dt>
                            <dd>현장 수령만 가능</dd>
                        </dl>
                    </div>
                </div><!--rn-03-right-->
            </div>
            <div id="divNoticeMsg" class="rnplus-tk-bar" style="display : none;">
            	<span class="rnplus-tk-end">본 상품은 판매 진행 중이 아닙니다.</span>
            </div>
            <c:if test = "${productD.godType eq '회차'}">
            <!-- 날짜, 예매좌석 선택 박스 -->
            <div class="rn-04">
                <div class="rn-04-left"><!--날짜시간선택-->
                    <div class="rn-04-left-tit"><!--타이틀및 버튼-->
                        <p class="rn-04-xtit">날짜/시간 선택</p>
                    </div>
                    <div class="rn-04-left-wrap">
                        <div class="rn-04-left-cal"><!--캘린더-->
                            <div class="datepicker-here" data-language='ko'></div>
                        </div>
                        <!--회차정보-->
                        <div class="rn-04-left-calist" style="height: 233px;">
	                            </div>
                         </div>
                 </div>
                <!--예매가능좌석-->
                <div class="rn-04-right">
                    <p class="rn-04-right-tit">예매 가능 좌석</p>
                    <div class="rn-04-right-list" style="height: 169px;">
                        <dl id="SeatRemain">
	                        <dd>
	                        	<span>
	                        	</span>
	                        </dd>
                        </dl>
                    </div>
                </div>
            </div>
            </c:if>
            <div class="rn-05"><!--예매하기 버튼--> 
                <a href="javascript:void(0)" class="rn-bb03" onclick="openRservation();">예매하기</a>
            </div>
            <div class="rn-07"><!--하단탭버튼-->
                <a href="#" class="" onclick="fnMove('01');"><span>상세정보</span></a>
                <a href="#" class="" onclick="fnMove('02');"><span class="rn-eve">관람후기<span class="rn-07-count">(${reviewCount})</span></span></a>
                <a href="#" class="" onclick="fnMove('05');"><span>예매/취소 안내</span></a>
            </div>
            <!-- 탭박스 -->
            <div class="rn-tab-boxes">
                <div class="rn-tab-area rn-08" id="rn-tab01"><!--탭1 상세정보-->
                    <div class="rn-0801"><!--유의사항-->
                        <p class="rn08-tit" id="titPerfNotice">유의사항</p>
                        <div class="rn08-txt" id="divPerfNotice">
                            <pre>${productD.infoNotice}</pre>
                            </div>
                    </div><!--rn-0801-->
                    <div class="rn-0803"><!--공연정보-->
                        <p class="rn08-tit">공연정보</p>
                        <div class="rn08-txt" id="divPerfContent">
                        <p style="text-align: center;">
                        	<img src="/img/${image3.file}" class="txc-image" style="clear:none;float:none;" width="700" height="auto"></p>
                        </div>
                    </div><!--rn-0803-->
                    <div class="rn-0804"><!--기획사정보-->
                        <div class="rn08-tbl rn-0803-tbl">
                            <table>
                                <caption></caption>
                                <colgroup>
                                    <col width="18.5%">
                                    <col width="*">
                                </colgroup>
                                <tbody>
                                    <tr><th scope="row" class="rn08-tbl-tit">기획사 정보</th>
                                    <td id="divPerfOrganization">
                                    <pre>${productD.enterInfo};</pre>
                                    </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div><!--rn-0804-->                                    
                </div><!--rn-tab-area rn-08-->
                <!-- 관람후기 -->
                <div class="rn-tab-area rn-09 off" id="rn-tab02">
                    <p class="rn-tab-area-tit"><span>관람후기</span></p>                
                        <div class="rn-0903"><!-- 관람후기안내문 -->
                            <div class="rn-09-tit tab02-afterword">
                                <p class="rn-red">매매, 욕설 등 게시판 운영 규정에 위반되는 글은 사전 통보없이 삭제될 수 있습니다.</p>
                                <p>개인정보가 포함된 내용은 삼가 주시기 바라며, 게시물로 인해 발생하는 문제는 작성자 본인에게 책임이 있습니다.</p>
                                <a onclick="openReview();"><img src="<%=request.getContextPath() %>/resources/image/rn-btn-review.png" alt="" ></a>
                            </div>
                        </div><!--rn-0903-->
                    <div class="rn-0904-container">
                        <ul class="rn-0904">
      		     <c:forEach var="review" items="${review}">
                            <li>
                                <div class="rn-0904-ttbox">
                                    <span class="rn-0904-tt2">${review.writer}</span>
                                    <span class="rn-0904-tt3">${review.registerDate}</span>
                                    <span class="rn-0904-tt4">
                                    	<c:if test ="${fn:contains(review.isModify,'Y')}"> (수정됨) </c:if>
                                    	</span>
                                    <span class="rn-0904-tt5" data-num="${review.reviewNum}">
                                    	<i class="fas fa-heart selected"></i>
                                    	&nbsp;&nbsp;${review.like}
                                    </span>
                                    <c:if test ="${review.writer == user.id}">
                                    <span class="rn-0904-tt4">
                                    	<a href="#" class="rn-0904-tt7" onclick="modifyReviewOpen(${review.reviewNum}); return false;"></a>
                                    	<a href="#" class="rn-0904-tt6" onclick="removeConfirmReview(${review.reviewNum}); return false;"></a>
                                    </span>
                                    </c:if>
                                </div>
                                <div class="rn-0904-txt-wrap">
                                    <div class="rn-0904-txt">${review.content}</div>
                                </div>
                            </li>
                            </c:forEach>
                        </ul>
                    </div>
                <div class="rn-0906-container">
                <div class="rn-0906" style="display: none; height: 640px;">
                    <div class="mCustomScrollBox" style="max-height: none;">
                        <div id="mCSB_5_container" class="mCSB_container" style="position: relative; top: 0px; left: 0px; width: 100%;" dir="ltr">
                            <div class="rn-0906-in">
                                <p class="rn0906-big-tit">${productD.title}</p>
                               
                                <div class="rn0906-date">
                                	<p class="rn0906-tit">예약번호</p>
                                	<div class="rn0906-date-box">
                                		<p>
                                			<span> 
                                				<select name="rvN" class="rvN" >
                                						<option value="" class="f">--</option>
                                       			</select> 
                                       		</span>
                                		</p>
                                	</div>
                                </div>
                                <div class="rn0906-write-area">
                                    <p class="rn0906-tit">관람후기</p>
                                <form name ="reviewform">
                                                                    	<input type = "text" name ="reviewRvNum" class="reviewRvNum">
                                
                                    <div class="rn0906-write-box">
                                        <textarea name= "content" id="txtReview" placeholder="내용을 작성해주세요. (최소 10자 / 최대 500자)" onkeyup="reviewtextCount();"></textarea>
                                    </div>
                                 </form>
                                </div>
                                <div class="rn0906-caution">
                                    <p class="rn0906-caution-tit">관람후기 작성 시 유의사항</p>
                                    <p class="rn0906-caution-txt">게시판 운영 규정에 위반된다고 판단되는 글은 사전고지 없이 삭제될 수 있습니다. </p>
                                    <p class="rn0906-caution-txt">작성된 게시물의 저작권은 작성자에게 있으며, 게시물로 인해 발생하는 문제는 작성자 본인에게 책임이 있습니다.<br>작성 시 유의해주시기 바랍니다.</p>
                                </div>
                                <div class="rn0906-btns">
                                    <a href="javascript:void(0)" onclick="closeReview(); return false;" class="rn0906btn1">취소</a>
                                    <a href="#" class="rn0906btn2"  onclick="return false;">등록</a>
                                    <a href="#" class="rn0906btn3"  onclick="return false;" style="display: none;">수정</a>
                                </div>
                            </div>
                            <a href="javascript:void(0)" onclick="closeReview(); return false;" class="rn-0906-close"><img src="http://tkfile.yes24.com/imgNew/common/rn-pop-close.png" class="mCS_img_loaded"></a>
                        </div></div>
                </div><!--rn-0906-->
               </div>
                </div>
                <!-- 예매/취소 -->
                <div class="rn-tab-area rn-12 on" id="rn-tab05">
                    <div class="rn-1201 rn-infos-1">
                        <div class="rn12-left-tit">예매</div>
                        <div class="rn12-right-box">
                            예매는 PC, 모바일, 고객센터 를 통해 신용카드, 가상계좌(무통장 입금) 으로 예매하실 수 있습니다.<br>
                            <span class="rn12-right-underline">무통장입금 결제 선택 시 입금 마감시간은 예매일 익일 밤 11시 29분까지</span>입니다. 입금 마감시간 내 미입금 된 경우 예매가 자동 취소됩니다. <br>
                            (단, 상품에 따라 예매 당일 밤 11시 29분에 마감되는 경우가 있으니 예매 전후 반드시 확인해주시기 바랍니다.)<br>
                            <div class="rn12-tbl">
                                <table>
                                    <caption></caption>
                                    <colgroup>
                                        <col width="42%">
                                        <col width="29%">
                                        <col width="29%">
                                    </colgroup>
                                    <tbody>
                                        <tr><th scope="col">장르</th><th scope="col">PC / 모바일</th></tr>
                                        <tr><td>전시</td><td>장당 500원</td>
                                        <tr><td>체험, 행사</td><td>장당 300원</td></tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="rn-1201 rn-infos-2">
                        <div class="rn12-left-tit">티켓수령방법</div>
                        <div class="rn12-right-box">
                            <div class="rn12-line"></div>
                            <p><span class="rn12-right-bold">현장수령 </span>
                            티켓은 예매자 본인 수령이 기본 원칙입니다.<br>
                            공연 당일 예매확인서와 예매자의 신분증 을 지참하신 후 공연장 매표소에서 티켓을 수령하시면 됩니다.</p>
                        </div>
                    </div>
                    <div class="rn-1201 rn-infos-3"><!--일반-->
                        <div class="rn12-left-tit">취소마감시간</div>
                        <div class="rn12-right-box">
                            <div class="rn12-line"></div>
                            <div class="rn12-tbl">
                                <table>
                                    <caption></caption>
                                    <colgroup>
                                        <col width="32%">
                                        <col width="28%">
                                        <col width="40%">
                                    </colgroup>
                                    <tbody>
                                        <tr><th scope="col">공연 관람일</th><th scope="col">취소 마감일</th></tr>
                                        <tr><td>화요일 ~ 토요일</td><td>관람일 전일 평일 오후 5시</td></tr>
                                        <tr><td>일요일 ~ 월요일</td><td>토요일 오전 11시</td></tr>
                                    </tbody>
                                </table>
                            </div>
                            <p>
                                관람일 당일 예매하신 건은 취소, 변경, 환불 불가합니다.<br>
                            </p>
                            <span class="rn12-right-red rn12-caution">
                                일부 공연에 한해, 취소 마감 정책이 달라질 수 있습니다. <br>
                                각 상품 상세페이지에 안내되어 있는 취소 정책이 우선 적용되오니, 반드시 예매 전 확인해주시기 바랍니다.
                            </span>
                        </div>
                    </div>
                    <div class="rn-1201 rn-infos-5">
                        <div class="rn12-left-tit">환불</div>
                        <div class="rn12-right-box">
                            <div class="rn12-line"></div>
                            <div class="rn12-tbl">
                                <table>
                                    <caption></caption>
                                    <colgroup>
                                        <col width="40%">
                                        <col width="60%">
                                    </colgroup>
                                    <tbody>
                                        <tr><th scope="col">결제수단</th><th scope="col">환불안내</th></tr>
                                        <tr><td class="rn-color-333">신용카드</td><td>
                                            일반적으로 취소완료 되고 4~5일(토, 공휴일 제외) 후 카드 승인 취소가 확인됩니다.<br>
                                            각 카드사의 취소 정책에 따라 승인취소 및 환급일에 차이가 있을 수 있습니다.  <br>
                                            자세한 사항은 카드사로 문의 바랍니다. 
                                        </td></tr>
                                        <tr><td class="rn-color-333">무통장입금</td><td>
                                            <p>
                                                예매 취소 시 반드시 환불 받으실 계좌번호와 은행명을 입력하세요.<br>
                                                취소수수료,예매수수료와 배송 받으신 경우 배송비를 제외한 후 환불 처리됩니다.<br>
                                                취소 후 환불 처리는 영업일 기준 3~5일 정도 소요됩니다.<br>
                                                환불진행상태는 예매확인/취소 상세내역에서 확인할 수 있습니다.
                                            </p>
                                        </td></tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- rn-tab-area rn-12 -->
            </div>
            <div class="rn-pop pop-cards" id="popAssociatedCard">
                <p class="rn-pop-tit2">제휴카드 혜택</p>
                <ul>
                    <li>
                        <img src="<%=request.getContextPath() %>/resources/image/rn-pop-card1.png" alt="">
                        <div>
                            <p>하나SK 카드</p><p>40% 청구할인<span>월 1만원 한도</span></p>
                        </div>
                    </li>
                    <li>
                        <img src="<%=request.getContextPath() %>/resources/image/rn-pop-card2.png" alt=""><div><p>신한카드</p><p>40% 청구할인<span>월 1만원 한도</span></p></div>
                    </li>
                </ul>
                <a href="#" class="rn-pop-close">
                    <img src="<%=request.getContextPath() %>/resources/image/rn-pop-close.png" alt="">
                </a>
            </div>
        </div>
    </div>
</div>


<input type ="hidden" class ="oriQuan" >
<input type = "hidden" class="no">    
<form name = "f1" method="Post">
<input type = "text" class = "selectCode" name = "selectCode" value = "${productD.code}">
<input type = "text" class = "selectDate" name = "selectDate" value = "">
<input type = "text" class = "selectRound"  name = "selectRound">
<input type = "text" class = "selectWeek"  name = "selectWeek">
<input type = "text" class = "selectbyUser"  name = "selectbyUser" value="${user.id}">


</form>

<script>

	isRightNow();
	isDateOver();
	maskingId();
	clickHeart();

	// 상품이 상시인 경우  
	function isRightNow(){


	   	var godType = "${productD.godType}";
	   	var seDate ="${productD.startDate}";
    	if (godType == '상시'){
    		$('.selectDate').val(seDate)
    		$('.selectWeek').val("-1")
    		 var code = ${productD.code};
		     var day = '-1'; 		 
	        callRound(day,code);
    		
    	}
         }
    // 상품 기간이 현재 날짜를 지난 경우 예약하기 버튼 비활성화
    
    function isDateOver(){

    	// 상품 종료날짜 오늘 날짜랑 비교해서 이전이면 
    	// divNoticeMsg display block 예약버튼 회차박스 display none;

		var today = new Date();
		var endDate = new Date("${productD.endDate}");
			
		if(today.getTime() > endDate.getTime()){
			$('.rnplus-tk-bar').css("display","block")
			$('.rn-04').css("display","none");
			$('.rn-05').css("display","none");
		}
        }
    
         


	var roundList = document.querySelector(".rn-04-left-calist");
	var test;


				//datepicker날짜 제한 
			    $('.datepicker-here').datepicker({
			        showOtherMonths: false,
			        dateFormat: 'yyyy.mm.dd',
			        minDate: setMindate(),
			        maxDate: new Date("${productD.endDate}"),
			        onSelect: function (date,d) {
				        test = date;
				        var day = d.getDay();
				        var code = ${productD.code};
				        callRound(day,code);
			  			$('.selectRound').val('');				        
			       	 	$('.no').val(day);
			       	 	$('.selectWeek').val(day);			       	 	
						$('#SeatRemain').empty();
			       	 	$('.selectDate').val(date);
			       		 	
						
			 	        // day가 0 or 6 이면 주말임 
				 	      
			        }
			    });
		

	function callRound(day,code){

		var type = ${productD.weekDif};
		
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
			
				$('.rn-04-left-calist').empty();			
	    	   for(var i =0; i<data.length; i++){
		  	         var a = document.createElement("a");
			         var span = document.createElement("span");
			         span.innerHTML = data[i].round; 
			         if (data[i].roundTime != null ){
			         	a.innerHTML = '&nbsp'+data[i].roundTime;
			         } else {
				         a.innerHTML = '';
			    		$('.selectRound').val(data[i].qNum)
			         }
			         a.prepend(span)
			    	 roundList.appendChild(a)
			    	 a.addEventListener("click",quantityNum)
	    		  }
	       	 	 
	     } 
 
		})
	}


	  function quantityNum(event){

		 const lefta = roundList.querySelectorAll("a")
		 const ON = "on"

		 for( var i = 0; i < lefta.length; i++ ){ 
			 lefta[i].classList.remove(ON);
		 }
		 
		 event.target.classList.add(ON)
		 
	     var code = ${productD.code};
		 var round = event.currentTarget.innerText.substring(0,2);
		 var day = $('.no').val();
		 
			var pType = ${productD.weekDif};
			
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
			       var aw = "상시상품";
					var seatList = document.querySelector("#SeatRemain");
					$('#SeatRemain').empty();	
					var dd = document.createElement("dd")
					var span = document.createElement("span")
					
					
							$('.oriQuan').val(data[0].quantity)
							span.innerHTML = '입장권	' + data[0].quantity + ' 석'
				
					dd.appendChild(span)
					seatList.appendChild(dd)
		       	 	$('.selectRound').val(data[0].qNum);
					reservedQuantity()
		       	 	
					
					
		     } 
	 
			})
			
		  
		  }


	  function reservedQuantity(){

		  var code = ${productD.code}; 
		  var round = $('.selectRound').val();
		  var date = $('.selectDate').val();
		  var dt = JSON.stringify({ "code": code, "date": date, "round": round});
		  console.log(dt);


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
		    	   $('#SeatRemain span').text('입장권  '+now+' 석')
/* 		    	   $('.c_price').text(now+'석');
 */		    	   console.log(data)
					
		     } 
	 
			})
			

		  
		  }
	  
	

		
	//예약하기 새창열기 
	function openRservation(){


		var catRes =  $('#SeatRemain span').text()
		if (catRes == '입장권  0 석'){
			alert("예약 불가능한 회차입니다.")
			return false;
			}

		if ($('.selectbyUser').val() == null || $('.selectbyUser').val() == '' ){
			alert('로그인이 필요합니다.')
			return false;
		}   else if ($('.selectDate').val() == null || $('.selectDate').val() == ''){
				alert('원하시는 예매일을 선택해주세요.')
				return false;
		}	else if ($('.selectRound').val() == null || $('.selectRound').val() == '' ){
				alert('원하시는 회차를 선택해주세요.')
				return false;
		} 
		
		var target = '예약페이지 ';
	    window.open("<%=request.getContextPath()%>/reservation", target, "width=985,height=650");
	    var form = document.f1;
	    form.action = '<%=request.getContextPath()%>/reservation';
	    form.target = target
	    form.submit();
	}
	
	// 상품 시작날짜가 현재 날짜보다 뒤면 시작날짜를 기준으로 출력 
    function setMindate (){
		var today = new Date();
		var startdate = new Date("${productD.startDate}");
			
		if(startdate.getTime() > today.getTime())
			return startdate
			else 
				return today
        }


	function closeReview(){
		$('.rn-0906').css("display","none")
		$('.rvN option:not(:first)').remove();
		$('.reviewRvNum').val('');
		$('#txtReview').val('');
  	  	$('.f').val('')
  	  	$('.f').text('--');
  	  	$('.rn0906btn3').css("display","none");
  	  	$('.rn0906btn2').css("display","inline-block");

		}
	
    
    //리뷰창 글자수 카운팅 
    function reviewtextCount(){
        var content = $('#txtReview').val();
        console.log(content)
    /*if (content.length < 10){
        alert("최소 10자 이상 입력해주세요.");
    }*/
	    if (content.length > 500){
	        alert("최대 500자까지 입력 가능합니다.");
	        $('#txtReview').val(content.substring(0, 500));
	        
	    }
    }

    //리뷰창 열기 
    function openReview(){
        // 사용자 아이디와 상품코드를 주어서 예약 정보를 가져오고 그 예약 정보가 이용완료 되었으면 관람후기 쓸 수 있는 창 block
         var code = $('.selectCode').val(); 
         if ( $('.selectbyUser').val() == null || $('.selectbyUser').val() ==''){
             alert("로그인이 필요합니다.")
             return false;
         }

   	  $.ajax({
	       async:true,
	       type:'POST',
	       data:code,
	       url:"<%=request.getContextPath()%>/openReview",
	       dataType:"json",
	       contentType:"application/json; charset=UTF-8",
	       success : function(data){

	    	   if(data == null || data.length == 0){
		    	   alert("이용 내역이 없습니다 ")
		    	} else {
		    	  	$('.rn-0906').css("display","block")
		    	   for(var i =0; i<data.length; i++){	
 			    		  var str ='';
			    		  str = '<option value="'+data[i].rvNum+'">'+data[i].rvNum+'</option>'
			    		  $('.rvN').append(str);
			    	}
		    	}	
	     } 
		})
	}	


    $('select[name=rvN]').on("change", function(event) { 
    	checkReview(this);
   } );	

  // 리뷰 중복 등록 막기  
    function checkReview(e){
        // 예약번호를 주면 예약번호로 조회해서 등록한적이 있는지 없는지 체크  
     $('.reviewRvNum').val(e.value);
     if ( $('.reviewRvNum').val() == null || $('.reviewRvNum').val() ==''){
         alert("예약번호를 선택해주세요")
         return false;
     }

   	  $.ajax({
	       async:true,
	       type:'POST',
	       data:e.value,
	       url:"<%=request.getContextPath()%>/checkReview",
	       dataType:"json",
	       contentType:"application/json; charset=UTF-8",
	       success : function(data){

		       	if(data != null) {
					 alert("이미 관람후기를 작성한 예약번호입니다.")
			    	   $('.rn0906btn2').off('click').on('click',function(e) {
			    			e.preventDefault();
			    		})
			    }
	       },
	       error:function(request,status,error){
   
	    	   $('.rn0906btn2').off('click').on('click', function(e){

	    		     var content = $('#txtReview').val();
	    		        console.log(content)
	    		     if (content.length < 10){
	    		        alert("최소 10자 이상 입력해주세요.");
	    		        return false;
	    		    }
	    		    
	    		   var reviewData = $('form[name=reviewform]').serialize();
	    	    	submitReivewForm(reviewData)
			    })	    	   
			    }


		})
       }


  // select 값을 변경 안하고 바로 등록 버튼 눌렀을 때 
       $('.rn0906btn2').click(function(){
        if ( $('.reviewRvNum').val() == null || $('.reviewRvNum').val() ==''){
            alert("예약번호를 선택해주세요")
        }

        })   
        
        
	// 리뷰 등록 
    function submitReivewForm(reviewData){

    	 $.ajax({
    			async:true,
    	        url : "<%=request.getContextPath()%>/registerReview",
    	        type : 'post',
    	        data : reviewData,
    	        success : function(data){
    	            if(data == 1) {
    	                reviewList(); 
    	                //댓글 작성 후 관람후기 목록 reload
    	                
    	                // 리뷰창 닫기 
    	                closeReview();
    	            }
    	        }
    	    });

        }

    // 아이디 마스킹 
    function maskingId(){

    	$('.rn-0904-tt2').each(function() {

    	    var originStr = $(this).text(); 
            var maskingStr; 
            var strLength; 

             strLength = originStr.length; 

            if(strLength < 3){ 
                maskingStr = originStr.replace(/(?<=.{1})./gi, "*"); 
               } else { 
                maskingStr = originStr.replace(/(?<=.{2})./gi, "*"); 
             } 

           $(this).text(maskingStr);  
           
        	})
     
         }

    // 관람후기 다시 불러 오기    
    function reviewList(){

        var productCode = $('.selectCode').val();

    	$.ajax({
			async:true,
	        url : "<%=request.getContextPath()%>/getReviewList",
	        type : 'post',
	        data : productCode,
	        dataType:"json",
		    contentType:"application/json; charset=UTF-8",
	        success : function(data){

	        	$('.rn-0904').empty();

			
	        	for(var i =0; i<data.length; i++){
	        	var str = '';
				var str = 
					'<li><div class="rn-0904-ttbox"><span class="rn-0904-tt2">'+data[i].writer+'</span>'+
                 	'<span class="rn-0904-tt3">'+data[i].registerDate+'</span>'+
                    '<span class="rn-0904-tt4">';

                   if(data[i].isModify == 'Y'){
                        	str += ' (수정됨) '
                    	}

                  	str +='</span><span class="rn-0904-tt5" data-num="'+data[i].reviewNum+'"><i class="fas fa-heart selected"></i>&nbsp;&nbsp;'+data[i].like+'</span>';
               	
                   if(data[i].writer == $('.selectbyUser').val()){
                    str += '<span class="rn-0904-tt4">'+
                    	'<a href="#" class="rn-0904-tt7"  onclick="modifyReviewOpen('+data[i].reviewNum+'); return false;"></a>'+
                    	'<a href="#" class="rn-0904-tt6" onclick="removeConfirmReview('+data[i].reviewNum+'); return false;"></a></span>';
                   }
                    
       
                str += '</div>'+'<div class="rn-0904-txt-wrap">'+'<div class="rn-0904-txt">'+data[i].content+'</div>'+'</div></li>' ;

                $('.rn-0904').append(str)
                maskingId();
				
	        	}
	        	clickHeart();
	        	$('.rn-07-count').text('('+data.length+')')
	        	
	        	
	        
	        }
	    });
	    
        }

	function clickHeart(){
    // 공감버튼 
	    $('.rn-0904-tt5').click(function(){
				// 내가 버튼 클릭한 게시물의 번호 받아서 회원 여부 와 함께 건내주기 
			//	var reviewNum = $(this).data("num");
				var reviewNum = $(this).attr("data-num")
				$(this).addClass('sle')
				 
	
				$.ajax({
					async:true,
			        url : "<%=request.getContextPath()%>/upLike ",
			        type : 'post',
			        data : reviewNum,
			        dataType:"json",
				    contentType:"application/json; charset=UTF-8",
			        success : function(data){
	
			             if(!data['usercheck'])
							alert('공감은 로그인한 회원만 할 수 있습니다.')
						else {
							if(data['likeNum'] <0)
								alert('이미 공감한 게시물입니다.')
								else {
									$('.rn-0904-tt5.sle').html('<i class="fas fa-heart selected"></i>&nbsp;&nbsp;'+data['likeNum'])
									$('.rn-0904-tt5').removeClass('sle')
									}
							} 
	
			        }
			    });
	
				
	        })
	}
        
       
      // 수정 : 수정버튼을 클릭하면 게시글 번호로 조회해서 그 글의 예약번호와 내용을 읽어와서 보여주고 등록버튼을 클릭하면 textarea 값을 받아서 그걸 보내서 등록하고 isModify 변경
       
      function modifyReviewOpen(reviewNum){

          reviewNum = ""+reviewNum; // 문자열로 바꿔주고 

    	  $.ajax({
				async:true,
		        url : "<%=request.getContextPath()%>/getReview ",
		        type : 'post',
		        data : reviewNum,
		        dataType:"json",
			    contentType:"application/json; charset=UTF-8",
		        success : function(data){

		      	  	$('.rn-0906').css("display","block");
		      	  	$('.rn0906btn2').css("display","none");		      	  	
		      	  	$('.rn0906btn3').css("display","inline-block");		      	  	
		      	  	//$('.rvN').removeAttr("onchange");
		      	  	$('.f').val(data.reviewRvNum);
		      	  	$('.f').text(data.reviewRvNum);
		      	  	$('.reviewRvNum').val(data.reviewRvNum);
		      	  	$('#txtReview').val(data.content);

		        }
		    });
  	  
       }


   // 수정버튼을 클릭하면 
   $('.rn0906btn3').click(function(){
		submitModifyReviewForm()			
     })
       
       
     function submitModifyReviewForm(){
			// 예약번호와 컨텐츠 내용을 보내서 업데이트 하기 
		  var reviewRvNum = $('.reviewRvNum').val();
		  var content = $('#txtReview').val();
		  var rev = JSON.stringify({ "reviewRvNum": reviewRvNum, "content": content });
		  		  
		  	  $.ajax({
				async:true,
		        url : "<%=request.getContextPath()%>/updateReview ",
		        type : 'post',
		        data : rev,
		        dataType:"json",
			    contentType:"application/json; charset=UTF-8",
		        success : function(data){
		        	   if(data == 1) {
	    	                reviewList(); 
	    	                closeReview();
	    	            }
		        }
		    });

	     }		


   // 리뷰 삭제 : 삭제 버튼 클릭하면 그글 번호를 주고 그글 번호로 조회해서 그글 isdel 바꾸고 delDate 변경 
   
   function removeConfirmReview(reviewNum){

	   var result = confirm("정말 삭제하시겠습니까?");
	   if(result){
		   removeReview(reviewNum);
	   }

	}
   
   function removeReview(reviewNum){

       reviewNum = ""+reviewNum; // 문자열로 바꿔주고 
	   
	   $.ajax({
			async:true,
	        url : "<%=request.getContextPath()%>/removeReview ",
	        type : 'post',
	        data : reviewNum,
	        dataType:"json",
		    contentType:"application/json; charset=UTF-8",
	        success : function(data){

                reviewList(); 
	        	
   	            }
	       
	    });	    

	   }

   //탭 박스 누르면 화면 이동하기 
   
   function fnMove(seq){
        var offset = $("#rn-tab" + seq).offset();
        $('html, body').animate({scrollTop : offset.top}, 600);
    }



   
     

      
          
    
</script>
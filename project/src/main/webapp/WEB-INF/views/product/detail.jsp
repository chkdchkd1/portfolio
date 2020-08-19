<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<div class="product-box">
 <!-- 상단 타이틀 -->
    <div class="renew-wrap">
        <div class="renew-content">
            <div class="rn-01"><!--로케이션, 라벨-->
                <p class="rn-location"><a href="#">행사</a></p>
            </div><!--rn-01-->
            <div class="rn-02"><!--제목-->
                <p class="rn-big-title">[부산] 완전한 세상</p>
                <div class="rn-product-short-data">
                    <p><span class="ps-date">2019.08.01 ~ 2020.08.31</span><a href="#" id="ps-location"><span class="ps-location">뮤지엄 다</span></a></p>
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
                        <img src="http://tkfile.yes24.com/upload2/PerfBlog/202002/20200206/20200206-35960_1.jpg">
                    </div>				
                </div><!--rn-03-left-->
                <div class="rn-03-right"><!--상품정보-->
                    <div class="rn-product-area1"><!--등급, 관람시간, 출연, 가격, 혜택-->
                        <dl>
                            <dt>등급</dt>
                            <dd>&nbsp;만 10세 이상</dd>
                            <dt>관람시간</dt>
                            <dd>&nbsp;-- </dd>
                            <dt>가격</dt>
                            <dd class="rn-product-price">
                                <ul class="rn-product-price1">
                                    <li>성인 <span class="rn-red">18,000</span>원</li>
                                    <li>청소년 <span class="rn-red">15,000</span>원</li>
                                    <li>어린이 <span class="rn-red">13,000</span>원</li>
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
                            <dd>2020년 1월 1일부터 관람시간이 아래와 같이 변경됩니다. 
    <br>
    <br>월,화,수,목,금 (평일) : 오전 10:00~오후 7:00 
    <br>토,일,공휴일(주말 및 공휴일) : 오전 10:00 ~ 오후 8:00 
    <br>
    <br>*마감 한 시간 전까지 입장가능 
    <br>*월요일 특별개관 </dd>
                            <dt>배송정보</dt>
                            <dd>현장 수령만 가능</dd>
                        </dl>
                    </div>
                </div><!--rn-03-right-->
            </div>
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
                            <a href="#"><span>1회</span> 오전 10시 00분</a></div>
                         </div>
                 </div>
                <!--예매가능좌석-->
                <div class="rn-04-right">
                    <p class="rn-04-right-tit">예매 가능 좌석</p>
                    <div class="rn-04-right-list" style="height: 169px;">
                        <dl id="SeatRemain"><dd><span>본 상품은 잔여석 안내서비스를 제공하지 않습니다.</span></dd></dl>
                    </div>
                </div>
            </div>
            <div class="rn-05"><!--예매하기 버튼--> 
                <a href="javascript:void(0)" class="rn-bb03" onclick="openRservation();">예매하기</a>
            </div>
            <div class="rn-07"><!--하단탭버튼-->
                <a href="#" class=""><span>상세정보</span></a>
                <a href="#" class=""><span class="rn-eve">관람후기<span class="rn-07-count">(1)</span></span></a>
                <a href="#" class=""><span>예매/취소 안내</span></a>
            </div>
            <!-- 탭박스 -->
            <div class="rn-tab-boxes">
                <div class="rn-tab-area rn-08" id="rn-tab01"><!--탭1 상세정보-->
                    <div class="rn-0801"><!--유의사항-->
                        <p class="rn08-tit" id="titPerfNotice">유의사항</p>
                        <div class="rn08-txt" id="divPerfNotice">
                            <p>※ 매수제한 : 회차당 1인 10매</p>
                            <p class="rn-red">※ 본 상품은 문화비 소득공제 제외 상품입니다.</p><br></div>
                    </div><!--rn-0801-->
                    <div class="rn-0803"><!--공연정보-->
                        <p class="rn08-tit">공연정보</p>
                        <div class="rn08-txt" id="divPerfContent"></div>
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
                                    <td id="divPerfOrganization">주최: (주)꼴라쥬플러스, 쿤스트원
                                    <br>주관: 뮤지엄 다
                                    <br>후원: KNN
                                    <br></td>
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
                                <a href="#"><img src="<%=request.getContextPath() %>/resources/image/rn-btn-review.png" alt=""></a>
                            </div>
                        </div><!--rn-0903-->
                    <div class="rn-0904-container">
                        <ul class="rn-0904">
                            <li>
                                <div class="rn-0904-ttbox">
                                    <span class="rn-0904-tt2">chan07**</span>
                                    <span class="rn-0904-tt3">2020.03.23</span>
                                    <span class="rn-0904-tt4">(수정됨)</span>
                                    <span class="rn-0904-tt5" ><i class="fas fa-heart selected"></i>&nbsp;&nbsp;1</span>
                                </div>
                                <div class="rn-0904-txt-wrap">
                                    <div class="rn-0904-txt">미디어 전문 미술관에서 만나보는 새로운 예술..</div>
                                </div>
                            </li>
                        </ul>
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

<script>
	//예약하기 새창열기 
	function openRservation(){
	   window.open("<%=request.getContextPath()%>/reservation", "예약페이지", "width=985,height=650");
	}
</script>
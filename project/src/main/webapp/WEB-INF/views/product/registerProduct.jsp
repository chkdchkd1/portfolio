<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <div class="csCenter_subRgt">
     <form id="RegisterForm" class="RegisterForm" name="RegisterForm" method="post" enctype="multipart/form-data">
           <div id="inquireTb" class="yesTb">
               <table class="tb_nor tb_vertical" width="100%">
                   <colgroup>
                       <col width="140">
                       <col width="*">
                   </colgroup>
                   <tbody class="xb_size">
                   
                       <tr>
                           <th class="txt" scope="row">상품 코드</th>
                           <td class="inpArea lastCol">
                               <div class="inpRow">
                                   <span class="yesIpt m_size ipt_wSizeF">
                                       <input id="code" name="code" type="text" autocomplete="off" maxlength="1000"> 
                                   </span>
                               </div>
                           </td>
                       </tr>
                       <tr>
                           <th class="txt" scope="row">상품 장르</th>
                           <td class="inpArea lastCol">
                               <div class="inpRow">
                                   <span class="yesIpt m_size ipt_wSizeF">
                                       <input id="genre" name="genre" type="text" autocomplete="off" maxlength="1000"> 
                                   </span>
                               </div>
                           </td>
                       </tr>
                       <tr>
                           <th class="txt" scope="row">상품명</th>
                           <td class="inpArea lastCol">
                               <div class="inpRow">
                                   <span class="yesIpt m_size ipt_wSizeF">
                                       <input id="title" name="title" type="text" autocomplete="off" maxlength="1000"> 
                                   </span>
                               </div>
                           </td>
                       </tr>
                       <tr>
                           <th class="txt" scope="row">상품 관람 등급</th>
                           <td class="inpArea lastCol">
                               <div class="inpRow">
                                   <span class="yesIpt m_size ipt_wSizeF">
                                       <input id="ratings" name="ratings" type="text" autocomplete="off" maxlength="1000"> 
                                   </span>
                               </div>
                           </td>
                       </tr>
                       <tr>
                           <th class="txt" scope="row">공연 일시</th>
                           <td class="inpArea lastCol">
                               <div class="inpRow">
                                   <span class="yesIpt m_size ipt_wSizeF">
                                       <input id="startDate" name="startDate" type="text" autocomplete="off" maxlength="1000"> 
                                   </span>
                               </div>
                               <div class="inpRow">
                                   <span class="yesIpt m_size ipt_wSizeF">
                                       <input id="endDate" name="endDate" type="text" autocomplete="off" maxlength="1000"> 
                                   </span>
                               </div>
                           </td>
                       </tr>
                       <tr>
                           <th class="txt" scope="row">공연장</th>
                           <td class="inpArea lastCol">
                               <div class="inpRow">
                                   <span class="yesIpt m_size ipt_wSizeF">
                                       <input id="place" name="place" type="text" autocomplete="off" maxlength="1000"> 
                                   </span>
                               </div>
                           </td>
                       </tr>
                       <tr>
                           <th class="txt" scope="row">상품 종류</th>
                           <td class="inpArea lastCol">
                               <div class="inpRow">
                                       <select name="godType" id="godType" class="selType">
                                           <option value="회차">회차</option>
                                           <option value="상시">상시</option>
                                       </select> 
                               </div>
                           </td>
                       </tr>
                       <tr>
                           <th class="txt" scope="row">요금상이여부</th>
                           <td class="inpArea lastCol">
                               <div class="inpRow">
                                       <input type="radio" name="weekDif" value="1">다름
                                       <input type="radio" name="weekDif" value="2" checked="checked">다르지않음
                               </div>
                           </td>
                       </tr>
                        <tr class="xb_display">
                           <th class="txt" scope="row">제한매수</th>
                           <td class="inpArea lastCol">
                               <div class="inpRow">
                                   <select name="limitAmount" id="limitAmount" class="selType">
                                       <option value="1">1매</option>
                                       <option value="2">2매</option>
                                       <option value="3">3매</option>
                                       <option value="4">4매</option>
                                       <option value="5">5매</option>
                                   </select> 
                               </div>
                           </td>
                       </tr>
                                    <tr>
                           <th class="txt" scope="row">상품 가격 <br>
                               <button type="button" class="morePrice rgistB">추가</button>
                               <button type="button" class="removePrice rgistB">삭제</button></th>
                           <td class="inpArea lastCol lastP ">
                               <div class="inpRow Listprice f-bold">
                                   상품 가격 종류 
                                   <select name="kinds" id="kinds" class="selType small">
                                       <option value="1">주중</option>
                                       <option value="2">주말</option>
                                       <option value="3">일반</option>
                                   </select><br>
                                   상품 가격 명
                                   <input type="text" name="Type" id="Type" class="inputtextType">
                                   상품 가격
                                   <input type="text" name="price" id="price" class="inputtextType">
                               </div>
                           </td>
                       </tr>

                       <tr>
                           <th class="txt" scope="row">상품 회차 <br>
                               <button type="button" class="moreRound rgistB">추가</button>
                               <button type="button" class="removeRound rgistB">삭제</button></th>
                           <td class="inpArea lastCol lastR">
                               <div class="inpRow ListRound f-bold">
                                   회차 종류
                                   <select name="qType" id="qType" class="selType small">
                                       <option value="1">주중</option>
                                       <option value="2">주말</option>
                                       <option value="3">일반</option>
                                   </select>
                                   상품 종류
                                   <select name="goodsType" id="goodsType" class="selType small">
                                       <option value="회차">회차</option>
                                       <option value="상시">상시</option>
                                   </select><br>
                                   회차
                                   <select name="round" id="round" class="selType small">
                                       <option value="상시상품">상시상품</option>
                                       <option value="1회">1회</option>
                                       <option value="2회">2회</option>
                                       <option value="3회">3회</option>
                                       <option value="4회">4회</option>
                                       <option value="5회">5회</option>
                                       <option value="6회">6회</option>
                                   </select><br>
                                   회차 시간
                                   <input type="text" name="roundTime" id="roundTime" placeholder="상시상품일 경우 입력X" class="inputtextType">
                                   회차당 수량
                                   <input type="text" name="quantity" id="quantity" class="inputtextType">
                               </div>
                           </td>
                       </tr>
                       <tr>
                           <th class="txt" scope="row">운영 시간</th>
                           <td class="inpArea lastCol">
                               <div class="inpRow">
                                   <span class="yesTxtArea m_size botIptMsg txtA_wSizeF row_7">
                                       <textarea id="infoTime" name="infoTime"></textarea>
                                   </span>
                               </div>
                           </td>
                       </tr>                                    
                       <tr>
                           <th class="txt" scope="row">알림사항</th>
                           <td class="inpArea lastCol">
                               <div class="inpRow">
                                   <span class="yesTxtArea m_size botIptMsg txtA_wSizeF row_7">
                                       <textarea id="infoNotice" name="infoNotice"></textarea>
                                   </span>
                               </div>
                           </td>
                       </tr>
                       <tr>
                           <th class="txt" scope="row">기획사 정보</th>
                           <td class="inpArea lastCol">
                               <div class="inpRow">
                                   <span class="yesTxtArea m_size botIptMsg txtA_wSizeF row_7">
                                       <textarea id="enterInfo" name="enterInfo"></textarea>
                                   </span>
                               </div>
                           </td>
                       </tr>
                       <tr>
                           <th class="txt" scope="row">파일첨부</th>
                           <td class="inpArea lastCol">
                               <table class="tb_nor tb_vertical" >
        <colgroup>
            <col width="100">
            <col width="*">
        </colgroup>
        <tbody class="xb_size">
            <tr>
                <th class="txt" scope="row" style="font-size: 13px;">썸네일</th>
                <td class="inpArea lastCol">
                    <div class="yesFileInpAra yesComLoadingArea clearfix">
                        <div class="yesFileIpt">
                            <label class="button" for="fileElem1">
                                <div class="btnC m_size w_80" id="divFileBtn">
                                    <span class="bWrap">
                                        <em class="txt">파일선택</em>
                                    </span>
                                </div>
                            </label>                                       
                        </div>
                        <input type="file" name="file1" id="fileElem1" style="display: none;">
                        <input type="text" name="fName" id="fName" class="fName1">  
                    </div>
                </td>
            </tr>
            <tr>
                <th class="txt" scope="row" style="font-size: 13px;">메인 이미지</th>
                <td class="inpArea lastCol">
                    <div class="yesFileInpAra yesComLoadingArea clearfix">
                        <div class="yesFileIpt">
                            <label class="button" for="fileElem2">
                                <div class="btnC m_size w_80" id="divFileBtn">
                                    <span class="bWrap">
                                        <em class="txt">파일선택</em>
                                    </span>
                                </div>
                            </label>                                       
                        </div>
                        <input type="file" name="file1" id="fileElem2" style="display: none;">
                        <input type="text" name="fName" id="fName" class="fName2">   
                    </div>
                </td>
            </tr> 
            <tr>
                <th class="txt" scope="row" style="font-size: 13px;">상세이미지</th>
                <td class="inpArea lastCol">
                    <div class="yesFileInpAra yesComLoadingArea clearfix">
                        <div class="yesFileIpt">
                            <label class="button" for="fileElem3">
                                <div class="btnC m_size w_80" id="divFileBtn">
                                    <span class="bWrap">
                                        <em class="txt">파일선택</em>
                                    </span>
                                </div>
                            </label>                                       
                        </div>
                        <input type="file" name="file1" id="fileElem3" style="display: none;">
                        <input type="text" name="fName" id="fName" class="fName3">                    
                    </div>
                </td>
            </tr> 
        </tbody>
    </table>
                       </tr>
                   </tbody>
               </table>
           </div>
           <div class="csCenter_rowBtn">
               <a href="<%=request.getContextPath()%>/admin" class="btnC b_size w_180"><span class="bWrap"><em class="txt">취소</em></span></a>
               <a href="javascript:void(0);" id="btnAdviceSubmit" onclick="RegisterSubmit();" class="btnC b_size btn_blue w_180"><span class="bWrap"><em class="txt">등록</em></span></a>
            </div>
    </form>
</div>


<script>

function RegisterSubmit(){

	var form = document.RegisterForm;
	form.action = '<%=request.getContextPath()%>/admin/registerProduct';
	form.submit();

}
	
    $('.morePrice').click(function(){
        
        var str = '';
        str = ' <div class="inpRow Listprice f-bold"> 상품 가격 종류 <select name="kinds" id="kinds" class="selType small"><option value="1">주중</option> <option value="2">주말</option><option value="3">일반</option></select><br>상품 가격 명<input type="text" name="Type" id="Type" class="inputtextType">상품 가격 <input type="text" name="price" id="price" class="inputtextType"></div>'
        $('.lastP').append(str);
    })

    $('.removePrice').click(function(){

        if(!$('.Listprice').siblings().is('div')){
            alert("최소 1개 이상의 가격정보가 필요합니다.")
        } else 
        $('.lastP').children('.Listprice').last().remove();
    })

    $('.moreRound').click(function(){
        
        var str = '';
        str = '<div class="inpRow ListRound f-bold">회차 종류 <select name="qType" id="qType" class="selType small"><option value="1">주중</option>'
        +'<option value="2">주말</option><option value="3">일반</option></select>'
        +'상품 종류<select name="goodsType" class="selType small"><option value="회차">회차</option><option value="상시">상시</option></select><br>'
        +'회차<select name="round" class = "selType small">'+
        '<option value="상시상품">상시상품</option><option value="1회">1회</option><option value="2회">2회</option>'+
        '<option value="3회">3회</option><option value="4회">4회</option><option value="5회">5회</option><option value="6회">6회</option>'+
        '</select><br>회차 시간<input type="text" name="roundTime" id="roundTime" class="inputtextType">회차당 수량<input type="text" name="quantity" id="quantity" class="inputtextType"></div> '
        $('.lastR').append(str);
    })

    $('.removeRound').click(function(){

        if(!$('.ListRound').siblings().is('div')){
            alert("최소 1개 이상의 회차정보가 필요합니다.")
        } else 
        $('.lastR').children('.ListRound').last().remove();
    })

$(document).ready(function(){

     $('input[type="file"]').change(function(){

         var filePath = $(this).val();
         var index = filePath.lastIndexOf("\\")
         var fileid = $(this).attr('id');
         var fileidNum = fileid.charAt(fileid.length-1);
         console.log(fileidNum);
         $(".fName"+fileidNum).val(filePath.substring(index+1))
         
  });

});



</script>

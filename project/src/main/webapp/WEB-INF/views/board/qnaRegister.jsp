<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
 <div class="csCenter_subRgt" style="width: 800px;">
     <form id="RegisterForm" class="RegisterForm" name="RegisterForm" method="post">
           <div id="inquireTb" class="yesTb">
               <table class="tb_nor tb_vertical" width="100%">
                   <colgroup>
                       <col width="140">
                       <col width="*">
                   </colgroup>
                   <tbody class="xb_size">
                       <tr>
                           <th class="txt" scope="row">제목</th>
                           <td class="inpArea lastCol">
                               <div class="inpRow">
                                   <span class="yesIpt m_size ipt_wSizeF">
                                       <input id="boardTitle" name="boardTitle" type="text" autocomplete="off" maxlength="1000"> 
                                   </span>
                               </div>
                           </td>
                       </tr>
         
                       <tr>
                           <th class="txt" scope="row">문의 내용</th>
                           <td class="inpArea lastCol">
                               <div class="inpRow">
                                   <span class="yesTxtArea m_size botIptMsg txtA_wSizeF row_7">
                                       <textarea id="boardContent" name="boardContent"></textarea>                                                                            
                                   </span>
                               </div>
                           </td>
                       </tr>
                       
                       <tr>
                           <th class="txt" scope="row">비밀번호</th>
                           <td class="inpArea lastCol">
	                               <div class="inpRow">
	                                  <div>
				                          	<input type="radio" id="x" name="usePw" class="pwCheck" value="Y">
				                          	<label for="x"><span></span>사용</label>
											<input type="radio" name="usePw" id="x2" class="pwCheck" value="N" checked="checked">
											<label for="x2"><span></span>사용안함</label>								
										</div>
	                                  <span class="yesIpt m_size ipt_wSizeF" id="pwSpan" style=" WIDTH: 300PX;MARGIN-TOP: 5PX; display:none;">	                                  
	                                      <input id="boardPw" name="boardPw" type="password" autocomplete="off" maxlength="1000" placeholder="사용할 비밀번호를 입력해주세요"> 
	                                  </span>
                               </div>
                           </td>
                       </tr>
  
                   </tbody>
               </table>
           </div>
           <div class="csCenter_rowBtn">
               <a href="<%=request.getContextPath()%>/help" class="btnC b_size w_180"><span class="bWrap"><em class="txt">취소</em></span></a>
               <a href="javascript:void(0);" id="btnAdviceSubmit" onclick="RegisterSubmit();" class="btnC b_size btn_blue w_180"><span class="bWrap"><em class="txt">등록</em></span></a>
           </div>
    </form>
</div>
   
   
<script>


function RegisterSubmit(){
	var form = document.RegisterForm;
	form.action = '<%=request.getContextPath()%>/help/register';
	form.submit();
}


 pwDisplay();

 function pwDisplay(){ 

	   $('input[type=radio]').change(function() {
			if($('input[type=radio]:checked').val() == 'Y'){
				$('#pwSpan').css('display','block')
			}else
				 $('#pwSpan').css('display','none')
		   })

	}
</script>
    

    
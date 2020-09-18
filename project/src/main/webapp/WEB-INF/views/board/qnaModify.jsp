<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


 <div class="csCenter_subRgt" style="width: 800px;">
     <form id="RegisterForm" class="RegisterForm" name="RegisterForm" method="post">
     <input type = "hidden" name ="boardNum" value="${qna.boardNum}">
	<input type = "hidden" name="views" value="${qna.views}">
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
                                       <input id="boardTitle" name="boardTitle" type="text" autocomplete="off" maxlength="1000" value="${qna.boardTitle}"> 
                                   </span>
                               </div>
                           </td>
                       </tr>
         
                       <tr>
                           <th class="txt" scope="row">문의 내용</th>
                           <td class="inpArea lastCol">
                               <div class="inpRow">
                                   <span class="yesTxtArea m_size botIptMsg txtA_wSizeF row_7">
                                       <textarea id="boardContent" name="boardContent">${qna.boardContent}</textarea>                                                                            
                                   </span>
                               </div>
                           </td>
                       </tr>
                       
                       <tr>
                           <th class="txt" scope="row">비밀번호</th>
                           <td class="inpArea lastCol">
	                               <div class="inpRow">
	                                  <div>
				                          	<input type="radio" id="x" name="usePw" class="pwCheck" value="Y" checked="<c:if test ="${qna.usePw =='Y'.charAt(0)}">checked</c:if>">
				                          	<label for="x"><span></span>사용</label>
											<input type="radio" name="usePw" id="x2" class="pwCheck" value="N" checked="<c:if test ="${qna.usePw =='N'.charAt(0)}">checked</c:if>">
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
               <a href="javascript:void(0);" id="btnAdviceSubmit" onclick="ModifySubmit();" class="btnC b_size btn_blue w_180"><span class="bWrap"><em class="txt">수정</em></span></a>
           </div>
    </form>
</div>
   
   
<script>


function ModifySubmit(){
	var form = document.RegisterForm;
	form.action = '<%=request.getContextPath()%>/help/modify';
	form.submit();
}


 pwDisplay();

 function pwDisplay(){ 

	   $('input[type=radio]').change(function() {
			if($('input[type=radio]:checked').val() == 'Y'){
				$('#pwSpan').css('display','block')
			}else
				 $('#pwSpan').css('display','none')
				 $('#boardPw').val('');
		   })

	}
</script>
    

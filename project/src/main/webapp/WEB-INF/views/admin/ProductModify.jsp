<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
                               <div class="inpRow">
                                   <div class="yesFileInpAra yesComLoadingArea clearfix">
                                       썸네일
                                       <div class="yesFileIpt">
                                           <label class="button" for="fileElem1">
                                               <div class="btnC m_size w_80" id="divFileBtn">
                                                   <span class="bWrap">
                                                       <em class="txt">파일선택</em>
                                                   </span>
                                               </div>
                                           </label>                                       
                                       </div>
                                       <input type="file" name="file1" id="fileElem1" style="display: block;">
                                   </div>
                                   <br>
                                   <div class="yesFileInpAra yesComLoadingArea clearfix">
                                       메인 이미지 
                                       <div class="yesFileIpt">
                                           <label class="button" for="fileElem2">
                                               <div class="btnC m_size w_80" id="divFileBtn">
                                                   <span class="bWrap">
                                                       <em class="txt">파일선택</em>
                                                   </span>
                                               </div>
                                           </label>                                       
                                       </div>
                                       <input type="file" name="file1" id="fileElem2" style="display: BLOCK;"> 
                                   </div>
                                   <br>
                                   <div class="yesFileInpAra yesComLoadingArea clearfix">
                                       상세 이미지 
                                       <div class="yesFileIpt">
                                           <label class="button" for="fileElem3">
                                               <div class="btnC m_size w_80" id="divFileBtn">
                                                   <span class="bWrap">
                                                       <em class="txt">파일선택</em>
                                                   </span>
                                               </div>
                                           </label>                                       
                                       </div>
                                       <input type="file" name="file1" id="fileElem3" style="display: block;">                  
                                   </div>
                               </div>

                           </td>
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


$(document).ready(function() {

	  
	//여기 아래 부분
	$('#infoTime').summernote({
		  height: 300,                 // 에디터 높이
		  minHeight: null,             // 최소 높이
		  maxHeight: null,             // 최대 높이
		  focus: true,                  // 에디터 로딩후 포커스를 맞출지 여부
		  lang: "ko-KR",					// 한글 설정
		  placeholder: '최대 2048자까지 쓸 수 있습니다',	//placeholder 설정
		  toolbar: [
			    // [groupName, [list of button]]
			    ['style', ['bold', 'italic', 'underline', 'clear']],
			    ['font', ['strikethrough', 'superscript', 'subscript']],
			    ['fontsize', ['fontsize']],
			    ['color', ['color']],
			    ['para', ['ul', 'ol', 'paragraph']],
			    ['height', ['height']]
			  ]
          
	});

	$('#infoNotice').summernote({
		  height: 300,                 // 에디터 높이
		  minHeight: null,             // 최소 높이
		  maxHeight: null,             // 최대 높이
		  focus: true,                  // 에디터 로딩후 포커스를 맞출지 여부
		  lang: "ko-KR",					// 한글 설정
		  placeholder: '최대 2048자까지 쓸 수 있습니다',	//placeholder 설정
		  toolbar: [
			    // [groupName, [list of button]]
			    ['style', ['bold', 'italic', 'underline', 'clear']],
			    ['font', ['strikethrough', 'superscript', 'subscript']],
			    ['fontsize', ['fontsize']],
			    ['color', ['color']],
			    ['para', ['ul', 'ol', 'paragraph']],
			    ['height', ['height']]
			  ]
        
	});

	$('#enterInfo').summernote({
		  height: 300,                 // 에디터 높이
		  minHeight: null,             // 최소 높이
		  maxHeight: null,             // 최대 높이
		  focus: true,                  // 에디터 로딩후 포커스를 맞출지 여부
		  lang: "ko-KR",					// 한글 설정
		  placeholder: '최대 2048자까지 쓸 수 있습니다',	//placeholder 설정
		  toolbar: [
			    // [groupName, [list of button]]
			    ['style', ['bold', 'italic', 'underline', 'clear']],
			    ['font', ['strikethrough', 'superscript', 'subscript']],
			    ['fontsize', ['fontsize']],
			    ['color', ['color']],
			    ['para', ['ul', 'ol', 'paragraph']],
			    ['height', ['height']]
			  ]
      
	});
	
});

</script>
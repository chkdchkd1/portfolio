<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
 <div class="csCenter_subRgt" style="width: 800px;">
     <form id="RegisterForm" class="RegisterForm" name="RegisterForm" method="post" enctype="multipart/form-data">
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
                                       <input id="openTitle" name="openTitle" type="text" autocomplete="off" maxlength="1000"> 
                                   </span>
                               </div>
                           </td>
                       </tr>
                       <tr>
                           <th class="txt" scope="row">카테고리</th>
                           <td class="inpArea lastCol">
                               <div class="inpRow">
                                       <select name="cateType" id="cateType">
                                           <option value="1">티켓오픈</option>
                                           <option value="2">변경/취소</option>
                                       </select> 
                               </div>
                           </td>
                       </tr>
                       <tr>
                           <th class="txt" scope="row">오픈 상품명</th>
                           <td class="inpArea lastCol">
                               <div class="inpRow">
                                   <span class="yesIpt m_size ipt_wSizeF">
                                       <input id="openProduct" name="openProduct" type="text" autocomplete="off" maxlength="1000"> 
                                   </span>
                               </div>
                           </td>
                       </tr>
                          <tr>
                           <th class="txt" scope="row">상품 오픈 시간</th>
                           <td class="inpArea lastCol">
                               <div class="inpRow">
                                   <span class="yesIpt m_size ipt_wSizeF">
                                       <input id="openDate" name="openDate" type="text" autocomplete="off" maxlength="1000"> 
                                   </span>
                               </div>
                           </td>
                       </tr>
                        <tr>
                           <th class="txt" scope="row">상품 이미지 </th>
                           <td class="inpArea lastCol">
                               <div class="inpRow">
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
	                                       <input type="text" name="fName" id="fName" readonly>
                                   </div>
                               </div>
                           </td>
                       </tr>
                       <tr>
                           <th class="txt" scope="row">상품 정보</th>
                           <td class="inpArea lastCol">
                               <div class="inpRow">
                                   <span class="yesTxtArea m_size botIptMsg txtA_wSizeF row_7">
                                       <textarea id="productInfo" name="productInfo"></textarea>
                                                                             
                                   </span>
                               </div>
                           </td>
                       </tr>                                    
                          <tr>
                           <th class="txt" scope="row">가격 정보</th>
                           <td class="inpArea lastCol">
                               <div class="inpRow">
                                   <span class="yesTxtArea m_size botIptMsg txtA_wSizeF row_7">
                                       <textarea id="priceInfo" name="priceInfo"></textarea>
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
                           <th class="txt" scope="row">안내 사항</th>
                           <td class="inpArea lastCol">
                               <div class="inpRow">
                                   <span class="yesTxtArea m_size botIptMsg txtA_wSizeF row_7">
                                       <textarea id="noticeInfo" name="noticeInfo"></textarea>
                                   </span>
                               </div>
                           </td>
                       </tr>
                   </tbody>
               </table>
           </div>
           <div class="csCenter_rowBtn">
               <a href="#" class="btnC b_size w_180"><span class="bWrap"><em class="txt">취소</em></span></a>
               <a href="javascript:void(0);" id="btnAdviceSubmit" onclick="RegisterSubmit();" class="btnC b_size btn_blue w_180"><span class="bWrap"><em class="txt">등록</em></span></a>
           </div>
    </form>
</div>

<script type="text/javascript">



function RegisterSubmit(){

	var form = document.RegisterForm;
	form.action = '<%=request.getContextPath()%>/admin/noticeRegister';
	form.submit();

}

$('select[name=cateType]').on("change", function(event) { 
	modifyOrCancel();
} );	



$(document).ready(function() {
	//여기 아래 부분
	$('#productInfo').summernote({
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

	$('#priceInfo').summernote({
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

	$('#noticeInfo').summernote({
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




    $(function()
    {
        $('#fileElem1').on('change',function ()
        {
            var filePath = $(this).val();
            var index = filePath.lastIndexOf("\\")
            $('#fName').val(filePath.substring(index+1));
           
        });
    });

    function modifyOrCancel(){

        if($('#cateType').val() == 2){
           $('.xb_size').addClass('cate-on')
        }else {
        	  $('.xb_size').removeClass('cate-on')
            }
    }


</script>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<input type="hidden" name ="isdelPage" value="${qna.boardDel}">
<c:if test = "${qna.boardDel == 'Y'.charAt(0)}">
  <div class="noti-view-control">
    <a style="cursor:pointer" href="<%=request.getContextPath() %>/help/list" class="noti-list">목록보기</a>
  </div>	
</c:if>
<c:if test = "${qna.boardDel == 'N'.charAt(0)}">
    <input type="hidden" name ="loginid" value="${user.id}">
    <input type="hidden" name="boardNum" value="${qna.boardNum}">    
    <div class="content-min-wrap">
                    <div id="NoticeRead" style="display: block;">
                        <div class="noti-view-tit">
                     
                            <p>${qna.boardTitle}</p>
                        </div>
                        <div class="noti-view-date">
                       		<span>작성자 : ${qna.boardWriter}</span>
                            <span>등록일 : ${qna.boardDate}</span>
                            <span>조회수 : ${qna.views}</span>
                        </div>
	                        <div class="noti-view-con">
	                            <div class="noti-view-coment">
	                         		<p class="noti-view-comen-tit"></p>
	                            		<div class="noti-view-comen-txt">
	                            	 	 ${qna.boardContent}                       
	                            		</div>
	                         	</div>
	                         </div>
					<c:if test ="${qna.boardWriter == user.id}">
					<a href="<%=request.getContextPath()%>/help/delete?num=${qna.boardNum}" class="btn-product-m2" style=" width: 50px; margin-top: 10px; border-color: #999; color: #999;">삭제</a>
					<a href="<%=request.getContextPath()%>/help/modify?num=${qna.boardNum}" class="btn-product-m2" style=" width: 50px; margin-top: 10px; border-color: #999; color: #999;">수정</a>
					</c:if>
						<c:if test ="${ user.id == 'admin' }">
							<a href="<%=request.getContextPath()%>/help/delete?num=${qna.boardNum}" class="btn-product-m2" style=" width: 50px; margin-top: 10px; border-color: #999; color: #999;">삭제</a>
						</c:if>
						                         
	                      <div class="mgz-view-cmarea" style="display: block;">
                            <ul class="mgz-view-comens">
                             <c:forEach var="comment" items="${comment}">
                                <li style=" <c:if test = "${comment.classComment == 1}"> background-color: #efeeee; padding-left: 30px;</c:if>">
                                    <div class="mgz-view-cmperson">
                                        <em>
                                        <c:if test = "${comment.isDel != 'Y'.charAt(0)}">${comment.mentWriter}</c:if>
                                        <c:if test = "${comment.isDel == 'Y'.charAt(0)}"></c:if>
                                        </em>
                                        ${comment.dateComment}
                                    </div>
                                    <div class="mgz-view-cmchat">
                                     <c:if test = "${comment.isDel == 'Y'.charAt(0)}">삭제된 댓글입니다. ( ${comment.delDateComment })</c:if>						
                                     <c:if test = "${comment.isDel != 'Y'.charAt(0)}">${comment.comment}</c:if>
                                     &nbsp;&nbsp;&nbsp;
                                        <c:if test = "${comment.mentWriter == user.id || user.id == 'admin'}">
                                        	<a onclick="deleteComment(this);" style="cursor:pointer">
                                        		<img src="<%=request.getContextPath()%>/resources/image/btn_cls.gif" alt="삭제">
                                        	</a>
                                        </c:if>										
                                    </div>
                                    <span class="rn-label rlb-12" style="<c:if test = "${comment.classComment == 0 && ( user.id == 'admin' || qna.boardWriter == user.id) }"> display: block;</c:if>">
                                    	<a class="rn-pop-btn" onclick="openReReply(this); return false;" style="cursor:pointer;" href="javascript:void(0)">답글</a>
                                    </span>
                                    <input type="hidden" name="index" value="${comment.indexComments}">                                    
                                </li>
                                </c:forEach>
                            </ul>
                            <c:if test = "${qna. boardWriter == user.id || user.id  == 'admin' }">
                            <div class="mgz-view-textarea">
	                            	<input type="hidden" name="mentWriter" value="${user.id}">                                                                	
	                                <textarea placeholder="댓글을 작성해주세요." cols="" rows="" class="txt_rep" id="txtReplyCont" name="comment"></textarea>
	                                <a onclick="InsertReply(); return false;" style="cursor:pointer;" href="javascript:void(0)" >등록</a>
                            </div>
                            </c:if>
                        </div>

                        <div class="noti-view-control">
                            <a style="cursor:pointer" href="<%=request.getContextPath() %>/help/list" class="noti-list">목록보기</a>
                        </div>	
                    </div>
                </div>
</c:if>
                
     <script>


     isDelPage();

     
	function InsertReply(){

		 //등록을 보내면 ajax를 통해서 댓글을 등록하고 등록하면 댓글 목록을 불러오기 
		
		
		var boNum = ${qna.boardNum};
		var mentWriter = $('input[name=mentWriter]').val();
		var comment = $('.txt_rep').val();

		var Data = JSON.stringify({"boNum" : boNum, "mentWriter":mentWriter, "comment":comment });

		
       $.ajax({
	       async:true,
	       type:'POST',
	       data:Data,
	       url:"<%=request.getContextPath()%>/help/commentRegister",
	       dataType:"json",
	       contentType:"application/json; charset=UTF-8",
	       success : function(data){
	    	   //댓글 등록 성공시 
	    	   if(data == 1) {
			  	   // 댓글 리스트를 부르는 함수 
			  	    commentList();
	    		   $('.txt_rep').val('');
		    	   }
	    	   } 
 
		}) 
	}

	function commentList(){

			// 게시글 번호를 주고 그 게시글의 댓글들을 읽어와서 코멘트창에 뿌려주기 

		var boNum = $('input[name=boardNum]').val();
		var id = $('input[name=loginid]').val();
		

		   $.ajax({
		       async:true,
		       type:'POST',
		       data:boNum,
		       url:"<%=request.getContextPath()%>/help/commentList",
		       dataType:"json",
		       contentType:"application/json; charset=UTF-8",
		       success : function(data){

			       console.log(data);

				 $('.mgz-view-comens').empty();

		    	    var str = '';
		    	   
		        	 for(var i =0; i<data.length; i++){
			        					        	
							str += '<li style="';
		
								if (data[i].classComment == 1){
									str += 'background-color: #efeeee; padding-left: 30px;';
								}
     		
								str += '"><div class="mgz-view-cmperson"><em>';

								if(data[i].isDel != 'Y'){

									str += data[i].mentWriter+'</em>' + 
	          						  		data[i].dateComment+ '</div><div class="mgz-view-cmchat">'+							
	           						 		data[i].comment+'&nbsp;&nbsp;&nbsp;'
										} else {

											str += ' </em>'+ data[i].dateComment+ '</div><div class="mgz-view-cmchat">'+
												'삭제된 댓글입니다. ('+data[i].delDateComment+')&nbsp;&nbsp;&nbsp;' 	;

											}

										
								if(data[i].mentWriter == id|| id == 'admin'){
                   					str += '<a onclick="deleteComment(this)" style="cursor:pointer"><img src="<%=request.getContextPath()%>/resources/image/btn_cls.gif"></a>';
								}
         										
                   				str  += '</div><span class="rn-label rlb-12" style="' ;

                   				if (data[i].classComment == 0){
                       					str += 'display: block;'
                   				}

                       			str += '"><a href="#" class="rn-pop-btn" onclick="openReReply(this); return false;" style="cursor:pointer;" href="javascript:void(0)">답글</a></span>'+
                       				'<input type="hidden" name="index" value="' + data[i].indexComments+ '"></li>';

		        	}

		        	$('.mgz-view-comens').html(str); 
		       }
	 
			})
			

		}


	function openReReply(e){

		if($(e).hasClass('on')) {
			 $(e).closest('ul').find('.mgz-view-textarea').parent('li').remove();
			 $(e).removeClass('on');
		}else {
			$(e).addClass('on');
			var indexComment = $(e).closest('li').find('input[name="index"]').val();
			var li = $(e).closest('li');
			var str = '<li> <div class="mgz-view-textarea">'+
						'<input type="hidden" name="mentWriter" value="${user.id}">'+
						'<input type="hidden" name="groupNum" value="'+indexComment+'">'+
						'<textarea placeholder="댓글을 작성해주세요." cols="" rows="" class="reReply" id="txtReplyCont" name="comment"></textarea>'+
			            '<a onclick="InsertReReply(); return false;" style="cursor:pointer;" href="javascript:void(0)">등록</a></div></li>'
			li.after(str);
			
		}           
		
		// 해당 버튼을 누른 댓글 밑에 답글 form 생기게 하기 부모의 incount 값 받기 

		}


	function InsertReReply(){


		var boNum = ${qna.boardNum};
		var mentWriter = $('input[name=mentWriter]').val();
		var comment = $('.reReply').val();
		var groupNum = $('input[name=groupNum]').val();

		var Data = JSON.stringify({"boNum" : boNum, "mentWriter":mentWriter, "comment":comment, "groupNum": groupNum});

       $.ajax({
	       async:true,
	       type:'POST',
	       data:Data,
	       url:"<%=request.getContextPath()%>/help/commentReplyRegister",
	       dataType:"json",
	       contentType:"application/json; charset=UTF-8",
	       success : function(data){
	    	   //댓글 등록 성공시 
	    	   if(data == 1) {
			  	   // 댓글 리스트를 부르는 함수 
			  	    commentList();
		    	   }
	    	   } 
 
		}) 


		}


	function deleteComment(e){

		var indexComment = $(e).closest('li').find('input[name="index"]').val();

		//번호를 주면 이번호의 정보를 불러와서 Y로 바꾸고 업데이트 

		$.ajax({
		       async:true,
		       type:'POST',
		       data:indexComment,
		       url:"<%=request.getContextPath()%>/help/commentDelete",
		       dataType:"json",
		       contentType:"application/json; charset=UTF-8",
		       success : function(data){
		    	    //댓글 삭제 성공시 
		    	   if(data == 1) {
				  	   // 댓글 리스트를 부르는 함수 
				  	    commentList();
			    	   } 
		    	   } 
	 
			}) 
			
		}


	function isDelPage(){

	var isdel = $('input[name=isdelPage]').val();

	if(isdel == 'Y')
		alert("삭제된 페이지 입니다.")
		}
		
  	</script>
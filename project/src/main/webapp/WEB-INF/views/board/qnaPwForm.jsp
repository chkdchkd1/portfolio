<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

   <form id="boardPwch" method="POST" name = "boardPwch" onSubmit ="return false;">
	         <div class="box-main">
	           <div class="box-container" style="width:250px;">
	               <div class="l-box">
	                   <input type="password" name="pw" placeholder="비밀번호를 입력하세요" style="width:250px;">
	                   <input type="hidden" name="num" value="${num}">
	               </div>
	               <button class="btn-login" type="submit" style="color:white;">입력</button>
	               <button class="btn-login" type="button" onclick="location.href='<%=request.getContextPath()%>/help/list'">돌아가기 </button>
	           </div>
	       </div>
	</form>
	
	<script>


	
	$('button[type=submit]').click(function(){

		  var Data = $('form[name=boardPwch]').serialize();
		  var pw = $('input[name=pw]').val();

			 $.ajax({
	    			async:true, 
	    	        url : "<%=request.getContextPath()%>/checkBoardPw",
	    	        type : 'post',
	    	        data : Data,
	    	        success : function(data){

	    	            if(data != -1){
		    	            var url = '<%=request.getContextPath()%>/help?num=';
	    	            	 location.href = url+data;

		    	            }
	    	            else{
							alert("잘못된 비밀번호 입니다.")
		    	            }

	    	        }
			  	
	    	    });
  	    
       })
       
     
	

	</script>
    
    
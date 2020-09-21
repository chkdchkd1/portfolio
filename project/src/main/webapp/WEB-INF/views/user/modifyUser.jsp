<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

 <div class="csCenter_subRgt" style="width: 800px;">
<div class ="form-line">
 <form id = "ch2" name="ch2" method="post">
	<div class="container-body">
        <div class="container-id">
            <div class="text-id">아이디</div>
            <div class="box-id">
                <input type="text" name="id" id="id" value="${user.id}" readonly> 
            </div>
        </div>
        <label id="id-error" class="error" for=""></label>
        <label id="id-error" class="error" for="id"></label>
        <div class="container-pw">
            <div class="text-pw">기존 비밀번호</div>  
            <div class="box-pw">
                <input type="password" name="pw" id="pw">
            </div>
        </div>
         <label id="pw-error" class="error" for="pw"></label>
         <div class="container-id">
            <div class="text-id">이름</div>
            <div class="box-id">
                <input type="text" name="name" id="name"  value="${user.name}" readonly> 
            </div>
        </div>
        <label id="name-error" class="error" for="name"></label>
         <div class="container-gender">
            <div class="text-gender">성별</div>
            <div class="box-gender">
                <select name="gender" id="gender" >
                    <option value="non-set" <c:if test="${user.gender eq 'non-set'}">selected</c:if>>
                    	선택안함</option>
                    <option value="female" <c:if test="${user.gender eq 'female'}">selected</c:if>>여성</option>
                    <option value="male" <c:if test="${user.gender eq 'male'}">selected</c:if>>남성</option>
                </select>
            </div>
        </div>
        <div class="container-birth">
            <div class="text-birth">생년월일</div>
            <div class="box-birth">
                <div class="box-year">
                    <input type="text" name="year" id="year" placeholder="년(2자) ex)1984 -> 84">
                </div>
                
                <div class="box-month"> 
                    <select name="month" id="month">
                        <option value="">월</option>
                        <option value="01">1</option>
                        <option value="02">2</option>
                        <option value="03">3</option>
                        <option value="04">4</option>
                        <option value="05">5</option>
                        <option value="06">6</option>
                        <option value="07">7</option>
                        <option value="08">8</option>
                        <option value="09">9</option>
                        <option value="10">10</option>
                        <option value="11">11</option>
                        <option value="12">12</option>
                    </select>
                </div>
                <div class="box-day">
                    <input type="text" name="day" id="day" placeholder="일(2자)" > </div>
                </div>
                <label id="day-error" class="error" for="day"></label>
               	<label id="year-error" class="error" for="year"></label>
            </div>
            <input type="hidden" name ="birth" id= "birth" value="${user.birth}">
            
        <div class="container-phone">
            <div class="text-bold">휴대전화 </div>
            <div class="box-phone">
                <div class="box-number">
                    <div class="box-number-in">
                        <input type="text" name="phone" id="phone" placeholder="전화번호 입력" value="${user.phone}">
                    </div>
                </div>
            </div>
        <label id="number-error" class="error" for="phone"></label>    
        </div>
        <div class="container-email">
            <div class="text-bold">이메일</div>
            <div class="box-email">
                <input type="text" name="email" id="email" value="${user.email}">
            </div>
        </div>
        <label id="email-error" class="error" for="email"></label>
           <button type="button" class="btn-submit">수정하기</button>
      </div>
      </form>
      </div>
      </div>

      
      <script>

      $(document).ready(function(){

    	  var b = $('input[name=birth]').val();  
    	  var y = b.substring(0,2);
    	  var m = b.substring(2,4);
    	  console.log(m);
    	  var d = b.substring(4,6);
    	  $('input[name=year]').val(y);
    	  $('select[name=month]').val(m);
    	  $('input[name=day]').val(d);

   
      });



      $('.btn-submit').click(function(){

     	 	var year = $('#year').val();
     	 	var month = $('#month').val();
     	 	var day = $('#day').val();
     	 	var birth = ''+year+month+day;

     	 	$('#birth').val(birth);

     		if( $('#pw').val() == "" ||  $('#phone').val() == "" || $('#birth').val() == "" || $('#email').val() == ""){
     	 		alert("필수정보를 입력하세요 ")
     	 		return false; 
     	 		} 

     		 
     		var id = $('#id').val();
     		var pw = $('#pw').val();

  		  	var data = JSON.stringify({ "id": id, "pw": pw });
   		

     				$.ajax({
     					async:true,
     					type:'POST',
     					data:data,
     					url:"<%=request.getContextPath()%>/pwCheck",
     					dataType:"json",
     					contentType:"application/json; charset=UTF-8",
     					success : function(data){
     					
     						if(data['isCheck'] ){
     							//비밀번호 일치 
     							ModifyInfoSubmit();
     							alert('회원정보가 수정되었습니다.') 
     							
     						}else{
     							//아이디 사용 불가능 
     							alert('잘못된 비밀번호 입니다.') 
     						} 
     									}
     				});
     				

     })


      	function ModifyInfoSubmit(){
      	 	
      		 var form = document.ch2;
      		form.action = '<%=request.getContextPath()%>/modifyMyInfo';
      		form.submit();
      

      	 	}



      $("#ch2").validate({
		  rules: {
			  	id:{
		            required : true
				  	
				  	},
				  	
		        pw: {
		            required : true,
		            minlength : 8,
		            regex: /^(?=\w{8,20}$)\w*(\d[A-z]|[A-z]\d)\w*$/
		        },
		        
		        name: {
		            required : true,
		            minlength : 2
		        },
		        
		        email: {
		            required : true,
		            minlength : 2,
		            email : true
		        },

		        phone: {
		            required : true,
		            digits : true,
		            rangelength : [11,11]
		            
		        },

		        year:{
		        	required : true,
		        	digits : true,
		        	rangelength : [2,2]
			        },

		     	day:{
		        	required : true,
		        	digits : true,
		        	rangelength : [2,2]
			        }


		    },
		    //규칙체크 실패시 출력될 메시지
		    messages : {
			    id:{
			    	 required : "필수로 입력하세요"
				    },
		       
		        pw: {
		            required : "필수로 입력하세요",
		            minlength : "최소 {0}글자이상이어야 합니다",
		            regex : "영문자, 숫자로 이루어져있으며 최소 하나이상 포함해야합니다."
		        },
		      
		        name: {
		            required : "필수로 입력하세요",
		            minlength : "최소 {0}글자이상이어야 합니다"
		        },
		       
		        email: {
		            required : "필수로 입력하세요",
		            minlength : "최소 {0}글자이상이어야 합니다",
		            email : "메일규칙에 어긋납니다"
		        },
		        phone:{
		        	required : "필수로 입력하세요",
		        	digits : "숫자만 입력하세요",
		        	rangelength : "휴대전화 11자리를 입력해주세요 "
			        },

		    	year:{
		        	required : "생년을 입력하세요",
		        	digits : "숫자만 입력하세요",
		        	rangelength : " 생년을 2자리로 입력해주세요 "
			        },

			        
		      	day:{
		        	required : "생일을 입력하세요",
		        	digits : "숫자만 입력하세요",
		        	rangelength : "생일 일수를 2자리로 입력해주세요 "
			        }
		        
		    }
	    });




$.validator.addMethod(
    "regex",
    function(value, element, regexp) {
        var re = new RegExp(regexp);
        return this.optional(element) || re.test(value);
    },
    "Please check your input."
);


      

       


      // 비번 넣어서 다르면 수정안되게 하기 
      
       </script>
      
      
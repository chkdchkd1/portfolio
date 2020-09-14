<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>side-left-menu</title>
</head>
<body>
        <div class="left-container">
          <form action="<%=request.getContextPath()%>/goods">       
            <div class="search-box">
                <input type="text" placeholder="  Search" name="search" value="${pm.criteria.search}" autocomplete="off"/>
                <button class="btn-search"><i class="fas fa-search"></i></button>
            </div>
           </form>
            <ul class="nav-list">
                <li class="nav-item"><a href="<%= request.getContextPath()%>/" class="nav-link"><span>메인페이지</span></a></li>
                <li class="nav-item"><a href="<%= request.getContextPath()%>/exhibition/list" class="nav-link"><span>전시</span></a></li>
                <li class="nav-item"><a href="<%= request.getContextPath()%>/event/list" class="nav-link"><span>행사 / 축제</span></a></li>
                <li class="nav-item"><a href="<%= request.getContextPath()%>/notice/list" class="nav-link"><span>공지사항</span></a></li>
                <li>
                	<span class="nav-text">예매 정보</span>
                    <ul>
                        <li class="nav-item2"><a href="#" class="nav-link">날짜별 예매</a></li>
                        <li class="nav-item2"><a href="#" class="nav-link">지역별 예매</a></li>
                    </ul>
                </li>
                <li class="nav-item"><a href="#" class="nav-link"><span>고객센터</span></a>
            </ul>
          </div>
<script>

$('.btn-search').click(function(){
	if($('input[name=search]').val() == null || $('input[name=search]').val() == ''){
		alert("검색어를 입력하세요")
		return false;
	}
})
</script>
</body>
</html>
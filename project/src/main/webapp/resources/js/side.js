$(function(){
   
    /* 상품 상세보기 페이지 */

    // datepicker Initialization
    $('.datepicker-here').datepicker({
        showOtherMonths: false,
    });
    
    // 제휴할인카드 팝업
    $('.rn-product-dc2').click(function(e){
        e.preventDefault();
        $('.rn-pop').css('display','block');
    })
    $('.rn-pop-close').click(function(e){
        e.preventDefault();
        $('.rn-pop').css('display','none');
    })
    
    $('.rn-07 a').click(function(e){
        e.preventDefault();
        $('.rn-07 a').removeClass('on')
        $(this).addClass('on')
    })

    // function tapclick (){
    //     const hasClass = document.
    //     document.querySelector('#rn-tab05').scrollIntoView({ behavior: 'smooth' });
    // 특정 위치로 스크롤 마저 구현
    // }
    // tapclick();

    // 예약하기 새창열기 
    function openRservation(){
        window.open("side-left-resevation.html", "예약페이지", "width=985,height=650");
    }
})
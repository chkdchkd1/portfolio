$(function(){
   
    /* 상품 상세보기 페이지 */


    
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

    
})
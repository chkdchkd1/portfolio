<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<div class="swiper-box">
   <div class="swiper-container">
     <div class="swiper-wrapper">
       <div class="swiper-slide"></div>
       <div class="swiper-slide"></div>
       <div class="swiper-slide"></div>
       <div class="swiper-slide"></div>
       <div class="swiper-slide"></div>
     </div>
     <!-- Add Pagination -->
     <div class="swiper-pagination"></div>
     <!-- Add Arrows -->
     <!-- <div class="swiper-button-next"></div>
     <div class="swiper-button-prev"></div> -->
   </div>
 </div>
   <!-- Swiper JS -->
   <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
   <!-- Initialize Swiper -->
   <script>
     var swiper = new Swiper('.swiper-container', {
       spaceBetween: 30,
       centeredSlides: true,
       autoplay: {
         delay: 4000,
         disableOnInteraction: false,
       },
       pagination: {
         el: '.swiper-pagination',
         clickable: true,
       },
       navigation: {
         nextEl: '.swiper-button-next',
         prevEl: '.swiper-button-prev',
       },
     });
   </script>
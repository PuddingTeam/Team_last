<%@page import="Login.model.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@include file="../../Maintop.jsp"  %>
<style>
td{
text-align: center;
}
</style>
<div class="breadcumb-area">
      <div class="container h-100">
         <div class="row h-100 align-items-center">
            <div class="col-12">
               <div class="bradcumb-title text-center">
                  <h2>
                     <font style="text-decoration: underline;">Orders</font>
                  </h2>
               </div>
            </div>
         </div>
      </div>
   </div>
   
   <div id="page">

      <!-- Main -->
      <div id="main" class="container">
         <div class="row">
            <div class="12u" style="width:  100%">
               <section>
                  <header>
                  <br>
    <%
   Customer login = (Customer)session.getAttribute("loginInfo");
   String userid=login.getCustomer_id();
   %>
   <script type="text/javascript">
      function orders(){
         var answer = confirm("결제하시겠습니까?");
      if(answer){
         location.href="insertorder.od?orderuser=<%=userid%>";
      }else {
         location.href="order.od?userid=<%=userid%>";
      }  
      }
   
   </script>
   
                     <h2>Orders</h2>
                                    <p class="subtitle">결제 페이지</p>
                     <br>
                  </header>
                  <table align="center" width="100%">
                     <tr>
    <td colspan="5" style="text-align: right; font-weight: bolder;">주문자 정보 : <%=userid %>님 </td>
  </tr>
  <tr style="background: #eeecea">
    <td width="100px" >앨범 사진</td>
    <td>곡정보</td>
    <td>가격</td>
    <td width="90px">삭제</td>
  </tr>
    <c:if test="${!empty lists}">
  <c:forEach items="${lists}" var="cart">
  <tr >
     <td align="center" style="padding: 0px;"><img alt="앨범이미지" width="100px" height="100px"src="<%=request.getContextPath() %>/resources/imgs/${cart.cart_album}">
         </td>
     <td style="text-align: left;padding-left: 15px;"><font style="font-weight: bolder;" >${cart.cart_title } - ${cart.cart_singer }</font></td>
     <td align="center">${cart.cart_price } </td>    
     <td align="center"><a href="cartdelete.ms?cno=${cart.cart_num }"><img style="width: 18px" src="<%=request.getContextPath() %>/resources/img/icon/휴지통.png" ></a> </td>
  </tr>
  </c:forEach>
  <tr>
     <td colspan="5" style="text-align: right;font-weight: bolder;padding-top: 17px;"> 
     <input type="button" value="결제하기" onClick="orders()"/><img style="width: 35px" src="<%=request.getContextPath() %>/resources/img/icon/구매.png" ></a> </td>
  </tr>
  </c:if>  
     <c:if test="${!empty music}">
  <tr >
     <td align="center" style="padding: 0px;"><img alt="앨범이미지" width="100px" height="100px"src="<%=request.getContextPath() %>/resources/imgs/${music.music_image}">
         </td>
     <td style="text-align: left;padding-left: 15px;"><font style="font-weight: bolder;" >${music.music_title } - ${music.music_singer }</font></td>
     <td align="center">${music.music_price } </td>    
     <td align="center"><a href="cartdelete.ms?cno=${music.mno }"><img style="width: 18px" src="<%=request.getContextPath() %>/resources/img/icon/휴지통.png" ></a> </td>
  </tr>
  <%-- <tr>
     <td colspan="5" style="text-align: right;font-weight: bolder;padding-top: 17px;">TOTAL :${amount} </td>
  </tr> --%>
  <tr>
     <td colspan="5" style="text-align: right;font-weight: bolder;padding-top: 17px;"> 
     <a href="insertorderone.od?orderuser=<%=userid%>&mno=${music.mno}"><img style="width: 35px" src="<%=request.getContextPath() %>/resources/img/icon/구매.png" ></a> </td>
  </tr>
  
  </c:if>
</table>
            </div>
         </div>
      </div>
      
      </div>
      <!-- Main -->

      <div class="container">
         <div class="row">
            <div class="col-12">
               <!-- Copywrite Text -->
               <div class="copy_right_text text-center">
                  <p>
                     Copyright @2018 All rights reserved | This template is made with
                     <i class="fa fa-heart-o" aria-hidden="true"></i> by <a
                        href="${path}/resources/https://colorlib.com" target="_blank">Colorlib</a>
                  </p>
               </div>
            </div>
         </div>
      </div>
   <!-- ****** Footer Menu Area End ****** -->

   <!-- Jquery-2.2.4 js -->
   <script src="${path}/resources/js/jquery/jquery-2.2.4.min.js"></script>
   <!-- Popper js -->
   <script src="${path}/resources/js/bootstrap/popper.min.js"></script>
   <!-- Bootstrap-4 js -->
   <script src="${path}/resources/js/bootstrap/bootstrap.min.js"></script>
   <!-- All Plugins JS -->
   <script src="${path}/resources/js/others/plugins.js"></script>
   <!-- Active JS -->
   <script src="${path}/resources/js/active.js"></script>
</body>
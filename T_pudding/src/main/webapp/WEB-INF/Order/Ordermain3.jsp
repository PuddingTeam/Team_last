<%@page import="Login.model.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<!DOCTYPE HTML>

<head>
<style type="text/css">
td{
text-align: center;
padding: 8px;
    border-bottom: 1px solid #a0a0a0 ;

}
</style>
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
   content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- Title -->
<title>푸딩메인</title>

<!-- Favicon -->
<link rel="icon" href="${path}/resources/img/core-img/favicon.ico">

<!-- Core Stylesheet -->
<link href="${path}/resources/style.css" rel="stylesheet">

<!-- Responsive CSS -->
<link href="${path}/resources/css/responsive/responsive.css"
   rel="stylesheet">
   
   
<link href="${path}/resources/css/responsive/responsive.css"
   rel="stylesheet">
<link href="${path}/resources/assets/css/bootstrap.css" rel="stylesheet" />
<link href="${path}/resources/assets/css/login-register.css"
   rel="stylesheet" />
<link rel="stylesheet"
   href="${path}/resources/http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
<script src="${path}/resources/assets/js/jquery-1.10.2.js"
   type="text/javascript"></script>
<script src="${path}/resources/assets/js/bootstrap.js"
   type="text/javascript"></script>
<script src="${path}/resources/assets/js/login-register.js"
   type="text/javascript"></script>

</head>

<body>
   <!-- Preloader Start -->
   <div id="preloader">
      <div class="yummy-load"></div>
   </div>
   <!-- ****** Top Header Area Start ****** -->
   <div class="top_header_area">
      <div class="container">
         <div class="row">
            <div class="col-5 col-sm-6">
               <!--  Top Social bar start -->

            </div>
            <!--  Login Register Area -->
            <div class="col-7 col-sm-6">
               <div
                  class="signup-search-area d-flex align-items-center justify-content-end">
                  <!-- Search Button Area -->
                  <div class="search_button">
                     <a class="searchBtn" href="${path}/resources/#"><i
                        class="fa fa-search" aria-hidden="true"></i></a>
                  </div>
                  <!-- Search Form -->
                  <div class="search-hidden-form">
                     <form action="" method="get">
                        <input type="search" name="search" id="search-anything"
                           placeholder="Search Anything..."> <input type="submit"
                           value="" class="d-none"> <span class="searchBtn"><i
                           class="fa fa-times" aria-hidden="true"></i></span>
                     </form>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
   <!-- ****** Top Header Area End ****** -->

   <!-- ****** Header Area Start ****** -->
   <header class="header_area">
      <div class="container">
         <div class="row">
            <!-- Logo Area Start -->
            <div class="col-12">
               <div class="logo_area text-center">
                  <a href="Main.ms" class="yummy-logo">PUDDING</a>
               </div>
            </div>
         </div>

         <div class="row">
            <div class="col-12">
               <nav class="navbar navbar-expand-lg">
                  <button class="navbar-toggler" type="button"
                     data-toggle="collapse" data-target="#yummyfood-nav"
                     aria-controls="yummyfood-nav" aria-expanded="false"
                     aria-label="Toggle navigation">
                     <i class="fa fa-bars" aria-hidden="true"></i> Menu
                  </button>
                  <!-- Menu Area Start -->
                  <div class="collapse navbar-collapse justify-content-center"
                     id="yummyfood-nav">
                     <ul class="navbar-nav" id="yummy-nav">
                        <li class="nav-item "><a class="nav-link"
                           href="Main.ms">Home <span
                              class="sr-only">(current)</span></a></li>
                        <li class="nav-item dropdown"><a
                           class="nav-link dropdown-toggle" href="${path}/resources/#"
                           id="yummyDropdown" role="button" data-toggle="dropdown"
                           aria-haspopup="true" aria-expanded="false"> Pudding chart</a>
                            <div class="dropdown-menu" aria-labelledby="yummyDropdown">
                                        <a class="dropdown-item" href="puddingmusic_chart.ms">노래 목록</a>
                                        <a class="dropdown-item" href="puddingmusic_heartchart.ms">좋아요순위</a>
                                        <a class="dropdown-item" href="puddingmusic_recountchart.ms">인기도순위</a>
                                    </div>
                                    </li>
                        <li class="nav-item"><a class="nav-link" href="c_Djlist.ms">Pudding
                              DJ</a></li>
                        <li class="nav-item active">                                   
                         <a class="nav-link" href="listcart.ms">Wishlist</a>
                        </li>
                        <li class="nav-item"><a class="nav-link"
                           href="boarderList.bd">Boarder</a></li>
                           <li class="nav-item"><a class="nav-link"
                           href="C_QnA_list.ad">QnA</a></li>
                        <li class="nav-item"><a class="nav-link" href="CNotice.ad">Notice</a>
                         <c:if test="${loginInfo == null}">
                                <li class="nav-item">
                                    <a class="nav-link" href="loginForm.me">login</a>
                                </li>
                                </c:if>
                                <c:if test="${loginInfo != null}">
                                <li class="nav-item">
                                    <a class="nav-link" href="logout.jsp">logout</a>
                                </li>
                                </c:if>
                               
                                <li class="nav-item">
                                    <a class="nav-link" href="myPageList.me">MY PAGE</a>
                                </li>
                     </ul>
                  </div>
               </nav>
            </div>
         </div>
      </div>
   </header>
  <style>
  .right-box {
  
  float: right;
}  
.left-box {
  
  float:left;
  width: 600px;
  margin-left: 250px;
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
            <div class="12u">
               <section style="width: 1200px;">
                  <header>
                  <br>
    <%
   Customer login = (Customer)session.getAttribute("loginInfo");
   String userid=login.getCustomer_id();
   String useremail=login.getCustomer_email();
   String userphone = login.getCustomer_hpnumber();
   String username = login.getCustomer_name();
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
                  <div class='right-box'>
                     <table>
                        <tr> <th align="center"> 주문자 정보 </th>
                        </tr>
                        <tr>
                           <td style="text-align: right; font-weight: bolder;"> 아이디 : <%=userid %>님       </td>
                        </tr>
                        <tr>
                           <td style="text-align: right; font-weight: bolder;"> 이름 : <%=username %>       </td>
                        </tr>
                        <tr>
                           <td style="text-align: right; font-weight: bolder;"> 핸드폰 : <%=userphone %>      </td>
                        </tr>
                        <tr>
                           <td style="text-align: right; font-weight: bolder;"> 이메일 : <%=useremail %>      </td>
                        </tr>
                     </table>
                  
                  </div>
                  <div class='left-box'>
                  <table align="center" width="100%">
                    
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
  <%-- <tr>
     <td colspan="5" style="text-align: right;font-weight: bolder;padding-top: 17px;">TOTAL :${amount} </td>
  </tr> --%>
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
     <a href="insertorderone.od?orderuser=<%=userid%>&mno=${music.mno}">결제하기<img style="width: 35px" src="<%=request.getContextPath() %>/resources/img/icon/구매.png" ></a> </td>
  </tr>
  
  </c:if>
</table>
</div>

            </div>
         </div>
      </div>
      
      </div>
      
      <!-- Main -->

     <%@include file="../../Mainbottom.jsp"  %>
<%@page import="Login.model.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
		<%@include file="../../Maintop.jsp"%>
<style>
<!--
td{
text-align: center;
}
-->
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
				<div class="12u" style="width: 100%">
					<section >
						<header>
						<br>
						
							<h2>Orders</h2>
					                     <p class="subtitle">주문 완료<br>
					                     구매한 노래를 감상할 수 있습니다.</p>
							<br>
						</header>
						<table align="center" width="100%">
							<tr>
							    <%
   Customer login = (Customer)session.getAttribute("loginInfo");
   String userid=login.getCustomer_id();
   %>
    <td colspan="5" style="text-align: right; font-weight: bolder;"><%=userid %>님의 주문이 완료되었습니다 </td>
  </tr>
  <tr style="background: #eeecea">
    <td width="100px" >앨범 사진</td>
    <td>곡정보</td>
    <td>&nbsp;</td>
  </tr>
    <c:if test="${!empty list}">
  <c:forEach items="${list}" var="cart">
  <tr >
  	<td align="center" style="padding: 0px;"><img alt="앨범이미지" width="100px" height="100px"src="<%=request.getContextPath() %>/resources/imgs/${cart.cart_album}">
			</td>
  	<td style="text-align: left;padding-left: 15px;"><font style="font-weight: bolder;" >${cart.cart_title } - ${cart.cart_singer }</font></td>
  	<td align="center">${cart.cart_price } </td> 	
  </c:forEach>
  </c:if>
     <c:if test="${!empty music}">
  <tr >
  	<td align="center" style="padding: 0px;"><img alt="앨범이미지" width="100px" height="100px"src="<%=request.getContextPath() %>/resources/imgs/${music.music_image}">
			</td>
  	<td style="text-align: left;padding-left: 15px;"><font style="font-weight: bolder;" >${music.music_title } - ${music.music_singer }</font></td>
  	<td align="center"><img style="width: 15px; padding-right: 10px" src="<%=request.getContextPath() %>/resources/img/icon/돈.png">${music.music_price } </td> 	
  </tr>
  
  </c:if>
  <tr>
  	<td colspan="5" style="text-align: right;font-weight: bolder;padding-top: 17px;"> 
  			 <a href="Main.ms"><img style="width: 40px; padding-right: 10px; " src="<%=request.getContextPath() %>/resources/img/icon/집.png" ></a>
  	<a href="puddingmusic_chart.ms"><img style="width: 40px; padding-right: 10px" src="<%=request.getContextPath() %>/resources/img/icon/음표.png" ></a>
  	</td>
  </tr>
</table>
				</div>
			</div>
		</div>
		
		</div>
		<!-- Main -->

		<%@include file="../../Mainbottom.jsp"%>
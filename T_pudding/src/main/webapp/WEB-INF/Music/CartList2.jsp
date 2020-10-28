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
							<font style="text-decoration: underline;">Wishlist</font>
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
   %>		
							<h2>Wishlist</h2>
					                     <p class="subtitle">장바구니 목록 보기</p>
							<br>
						</header>
						<table align="center" width="100%">
							<tr>
    <td colspan="5" style="text-align: right; font-weight: bolder;"><img style="width: 30px" src="<%=request.getContextPath() %>/resources/img/icon/작성자.png" > &nbsp; <%=userid %> 님 </td>
  </tr>
  <tr style="background: #eeecea">
    <td width="100px" >앨범 사진</td>
    <td>곡정보</td>
    <td>가격</td>
    <td width="90px">삭제</td>
  </tr>
  
  <c:forEach items="${cartlists}" var="cart">
  <tr >
  	<td align="center" style="padding: 0px;"><img alt="앨범이미지" width="100px" height="100px"src="<%=request.getContextPath() %>/resources/imgs/${cart.cart_album}">
			</td>
  	<td style="text-align: left;padding-left: 15px;"><font style="font-weight: bolder;" >${cart.cart_title } - ${cart.cart_singer }</font></td>
  	<td align="center">${cart.cart_price } </td> 	
  	<td align="center"><a href="cartdelete.ms?cno=${cart.cart_num }"><img style="width: 18px" src="<%=request.getContextPath() %>/resources/img/icon/휴지통.png" ></a> </td>
  </tr>
  </c:forEach>
  <tr>
  	<td colspan="5" style="text-align: right;font-weight: bolder;padding-top: 17px;">TOTAL :${amount} </td>
  </tr>
</table>
<div align="right" style="padding-top: 15px;">
	<a href="order.od?userid=<%=userid%>">결제하기
	<img style="width: 35px" src="<%=request.getContextPath() %>/resources/img/icon/구매.png" >
	</a> &nbsp;&nbsp; 
  	<a href="puddingmusic_chart.ms">추가주문하기
  	<img style="width: 35px" src="<%=request.getContextPath() %>/resources/img/icon/장바구니.png" ></a> </div>
				</div>
			</div>
		</div></div>
		<!-- Main -->

		<%@include file="../../Mainbottom.jsp"  %>
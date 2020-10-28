<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@include file="../../AdminTop.jsp"%>
	<!-- ****** Breadcumb Area Start ****** -->
	<div class="breadcumb-area" >
		<div class="container h-100">
			<div class="row h-100 align-items-center">
				<div class="col-12">
					<div class="bradcumb-title text-center">
						<h2>
							<font >구매내역 조회</font>
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
					<section>
						<header>
						<br><br>
							<h2>구매 내역 조회</h2>
						<p class="subtitle">구매내역 조회</p>
						</header>
					</section>
					<table width="100%">
							<tr>
								<td  style="border-bottom: none;" colspan="6" align="right">
									<form action="searchlist.ad" method="post">
									<select name="whatColumn">
										<option value="all">전체 검색
										<option value="orders_title">제목 검색
										<option value="orders_singer">가수 검색
										<option value="orders_userid">회원 검색
									</select> 
										<input type="text" name="keyword"> &nbsp;
										<input type="submit" value="조회">
								</form>
								</td>
							</tr></table>
			<section class="archive-area section_padding_80">
		<div class="container">
			<div class="row">

				<c:forEach items="${lists }" var="order">
					<div class="col-12 col-md-6 col-lg-4">
						<div class="single-post wow fadeInUp" data-wow-delay="0.1s">
							<!-- Post Thumb -->
							<div class="post-thumb">
								<img src="${path}/resources/imgs/${order.orders_album }"
									alt="노래이미지" style="width: 350px;">
							</div>
							<!-- Post Content -->
							<div class="post-content">
								<div class="post-meta d-flex">
									<!-- Post Comment & Share Area -->
								</div>
									<h4 class="post-headline"> 
	<img style="width: 40px" src="<%=request.getContextPath() %>/resources/img/icon/작성자.png">
	${order.orders_userid }<br>
								<font style="font-size: 20px">	${order.orders_singer } - ${order.orders_title }</font></h4>
								<div style="text-align: right;">
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			
		</div>
	</section>		
			
						 						 

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
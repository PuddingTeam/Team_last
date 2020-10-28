<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../../Maintop.jsp"%>
	<div class="breadcumb-area">
		<div class="container h-100">
			<div class="row h-100 align-items-center">
				<div class="col-12">
					<div class="bradcumb-title text-center">
						<h2>
							<font style="text-decoration: underline;">Music List</font>
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
							<h2>Music List</h2>
							<p class="subtitle">노래 목록</p>
<br>
							<br>
						</header>
						<div class="row">

							<c:forEach items="${lists }" var="music">
								<div class="col-12 col-md-6 col-lg-4">
									<div class="single-post wow fadeInUp" data-wow-delay="0.1s">
										<!-- Post Thumb -->
										<div class="post-thumb">
											<a href="pudding_chartcontent.ms?mno=${music.mno }"><img
												src="${path}/resources/imgs/${music.music_image }"
												alt="노래이미지" style="width: 350px;"></a>
										</div>
										<!-- Post Content -->
										<div class="post-content">
											<div class="post-meta d-flex">
												<div class="post-author-date-area d-flex">
													<!-- Post Author -->

													<!-- Post Date -->
													<div class="post-author">${music.music_ganre }&nbsp;
														|| &nbsp;</div>
													<div class="post-date">${music.music_date }</div>
												</div>
												<!-- Post Comment & Share Area -->
												<div class="post-comment-share-area d-flex">
													<!-- Post Favourite -->
													<div class="post-favourite">
														<a href="chartheart.ms?musicheart=${music.music_heart }&mno=${music.mno}"><img style="width: 18px" src="<%=request.getContextPath() %>/resources/img/icon/하트.png">${music.music_heart}</a>
													</div>
													<!-- Post Comments -->
													<div class="post-comments">
														<a href="${path}/resources/#"><img style="width: 18px" src="<%=request.getContextPath() %>/resources/img/icon/눈.png">${music.music_recount }</a>
													</div>
													<!-- Post Share -->

												</div>
											</div>
											<a href="pudding_chartcontent.ms?mno=${music.mno }">
												<h4 class="post-headline"> ${music.music_title }-
													${music.music_singer } </h4>
											</a>

										</div>
									</div>
								</div>
							</c:forEach>


						</div>
				</div>
				</section>
				<!-- ****** Archive Area End ****** -->
				<!-- ****** Our Creative Portfolio Area End ****** -->

				<!-- ****** Footer Social Icon Area Start ****** -->

				<!-- ****** Footer Social Icon Area End ****** -->

				<!-- ****** Footer Menu Area Start ****** -->
<footer class="footer_area">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="footer-content">
						<!-- Logo Area Start -->
						<div class="footer-logo-area text-center">
							<a href="${path}/resources/index.html" class="yummy-logo">PUDDING</a>
						</div>
						<!-- Menu Area Start -->
						<nav class="navbar navbar-expand-lg">
							<button class="navbar-toggler" type="button"
								data-toggle="collapse" data-target="#yummyfood-footer-nav"
								aria-controls="yummyfood-footer-nav" aria-expanded="false"
								aria-label="Toggle navigation">
								<i class="fa fa-bars" aria-hidden="true"></i> Menu
							</button>
							<!-- Menu Area Start -->
		<div class="collapse navbar-collapse justify-content-center"
							id="yummyfood-nav">
							<ul class="navbar-nav" id="yummy-nav">
								<li class="nav-item "><a class="nav-link" href="Main.ms">Home
										<span class="sr-only">(current)</span>
								</a></li>
								<li class="nav-item dropdown"><a
									class="nav-link dropdown-toggle" href="${path}/resources/#"
									id="yummyDropdown" role="button" data-toggle="dropdown"
									aria-haspopup="true" aria-expanded="false"> Pudding chart</a>
									<div class="dropdown-menu" aria-labelledby="yummyDropdown">
										<a class="dropdown-item" href="puddingmusic_chart.ms">노래
											목록</a> <a class="dropdown-item" href="puddingmusic_heartchart.ms">좋아요순위</a>
										<a class="dropdown-item" href="puddingmusic_recountchart.ms">인기도순위</a>
									</div></li>
								<li class="nav-item"><a class="nav-link" href="c_Djlist.ms">Pudding
										DJ</a></li>
								<li class="nav-item "><a class="nav-link"
									href="listcart.ms">Wishlist</a></li>
								<li class="nav-item"><a class="nav-link"
									href="boarderList.bd">Boarder</a></li>
								<li class="nav-item"><a class="nav-link"
									href="C_QnA_list.ad">QnA</a></li>
								<li class="nav-item"><a class="nav-link" href="CNotice.ad">Notice</a>
									<c:if test="${loginInfo == null}">
										<li class="nav-item"><a class="nav-link"
											href="loginForm.me">login</a></li>
									</c:if> 
									<c:if test="${loginInfo != null}">
										<li class="nav-item"><a class="nav-link"
											href="logout.jsp">logout</a></li>
									</c:if> 
									<c:if test="${loginInfo.customer_id == 'admin'}">
										<li class="nav-item"><a class="nav-link"
											href="admin_customerlist.me">admin page</a></li>
									</c:if> 
									<c:if test="${loginInfo.customer_id != 'admin'}">
										<li class="nav-item"><a class="nav-link"
											href="myPageList.me">my page</a></li>
									</c:if>
							</ul>
						</div>
						</nav>
					</div>
				</div>
			</div>
		</div>

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
	</footer>

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
		
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../../Maintop.jsp"  %>

	<!-- ****** Welcome Post Area Start ****** -->
	<section class="welcome-post-sliders owl-carousel">

		<!-- Single Slide -->
		<div class="welcome-single-slide">
			<!-- Post Thumb -->
			<img src="${path}/resources/img/bg-img/slide-3.jpg" alt="">
			<!-- Overlay Text -->
			<div class="project_title">
				<div class="post-date-commnents d-flex">
					<a href="#">OCT 16, 2009</a> <a href="#">하이라이트(비스트)</a>
				</div>
				<a href="puddingmusic_singerchart.ms?music_singer=하이라이트">
					<h5>'하이라이트' 관련 음악 듣기</h5>
				</a>
			</div>
		</div>
		<!-- Single Slide -->
		<div class="welcome-single-slide">
			<!-- Post Thumb -->
			<img src="${path}/resources/img/bg-img/slide-1.jpg" alt="">
			<!-- Overlay Text -->
			<div class="project_title">
				<div class="post-date-commnents d-flex">
					<a href="#">SEP 18, 2008</a> <a href="#">IU(이지은)</a>
				</div>
				<a href="puddingmusic_singerchart.ms?music_singer=IU">
					<h5>'아이유' 관련 음악 듣기</h5>
				</a>
			</div>
		</div>



		<!-- Single Slide -->
		<div class="welcome-single-slide">
			<!-- Post Thumb -->
			<img src="${path}/resources/img/bg-img/slide-2.jpg" alt="">
			<!-- Overlay Text -->
			<div class="project_title">
				<div class="post-date-commnents d-flex">
					<a href="#">JAN 20, 2014</a> <a href="#">GOT7(갓세븐)</a>
				</div>
				<a href="puddingmusic_singerchart.ms?music_singer=GOT7">
					<h5>'갓세븐' 관련 음악 듣기</h5>
				</a>
			</div>
		</div>
		<!-- Single Slide -->
		<div class="welcome-single-slide">
			<!-- Post Thumb -->
			<img src="${path}/resources/img/bg-img/slide-4.jpg" alt="">
			<!-- Overlay Text -->
			<div class="project_title">
				<div class="post-date-commnents d-flex">
					<a href="#">OCT 19, 2015</a> <a href="#">TWICE(트와이스)</a>
				</div>
				<a href="puddingmusic_singerchart.ms?music_singer=TWICE">
					<h5>'트와이스' 관련 음악 듣기</h5>
				</a>
			</div>
		</div>

		<!-- Single Slide -->
		<div class="welcome-single-slide">
			<!-- Post Thumb -->
			<img src="${path}/resources/img/bg-img/slide-5.jpg" alt="">
			<!-- Overlay Text -->
			<div class="project_title">
				<div class="post-date-commnents d-flex">
					<a href="#">AUG 30, 2013</a> <a href="#">Ariana Grande(아리아나
						그란데)</a>
				</div>
				<a href="puddingmusic_singerchart.ms?music_singer=ariana grande">
					<h5>'Ariana Grande' 관련 음악 듣기</h5>
				</a>
			</div>
		</div>

	</section>
	<!-- ****** Welcome Area End ****** -->

	<!-- ****** Categories Area Start ****** -->
	<section class="categories_area clearfix" id="about" style="padding-bottom: 10px;">
	
		<div class="container">
								<h4 class="font-shadow-into-light">Pudding's DJ <img width="40px;" src="${path}/resources/img/icon/Dj.png"></h4>
			<div class="row">
				<c:forEach items="${list }" varStatus="status" begin="0" step="1"
					end="2" var="lists">
					<div class="col-12 col-md-6 col-lg-4">
						<div class="single_catagory wow fadeInUp" data-wow-delay=".3s">
							<img src="${path}/resources/img/catagory-img/${status.count}.jpg"
								alt="">
							<div class="catagory-title">
								<a href="C_dj_C.ms?dj_no=${lists.dj_no}">
									<h5>${lists.dj_code }</h5>
								</a>
							</div>
						</div>
					</div>
				</c:forEach>

			</div>
			<a href="c_Djlist.ms" class="read-more" style="padding-left: 1060px;">MORE</a>
		</div>
	</section>
	<!-- ****** Categories Area End ****** -->

	<!-- ****** Blog Area Start ****** -->


	<section class="blog_area section_padding_0_80">
		<div class="container">
							<h4 class="font-shadow-into-light">Pudding's Pick <img width="30px;" src="${path}/resources/img/core-img/푸딩.png"></h4>
			<div class="row justify-content-center">
				<div class="col-12 col-lg-8">
					<div class="row">
						<!-- ****** Blog Area Start ****** -->

						<div class="col-12" style="border-style: dashed; border-color: #b9b8b6; border-radius:20px; border-width:5px; margin-bottom: 60px;" >
							<div class="single-post wow fadeInUp" data-wow-delay=".2s">
								<!-- Post Thumb -->
								<div class="post-thumb">
									<img style="border: 1px solid gray; margin-top: 20px;"
										src="${path}/resources/img/blog-img/1.png" alt="장범준 사진">
								</div>
								<!-- Post Content -->
								<div class="post-content" style="margin-bottom: 10px">
									<div class="post-meta d-flex">
										<div class="post-author-date-area d-flex">
											<!-- Post Author -->
											<div class="post-author">
												<a href="${path}/resources/#">By 장범준</a>
											</div>
											<div class="post-date">
												<a href="${path}/resources/#">May 24, 2016</a>
											</div>
										</div>
										<!-- Post Comment & Share Area -->
										<div class="post-comment-share-area d-flex">
											<!-- Post Favourite -->
											<!-- Post Share -->
										</div>
									</div>
									<a href="pudding_chartcontent.ms?mno=100">
											<h2 class="post-headline">장범준 2집 [봄비]</h2>
									</a>
										<p>
											<font size="2">‘장범준 트리오’ CD는 기타리프와 드럼, 베이스 기반의 심플한
												음악으로 녹음 당시 메트로놈(클릭) 없이 러프하고 라이브스러운 느낌으로 녹음했습니다. 끊어서 녹음하지 않고
												기타, 드럼, 베이스, 보컬까지 최대한 한 호흡으로 갈 수 있도록 녹음했습니다. 덕분에 지금까지 했던 어떤
												녹음보다도 즐거운 마음을 가지고 작업을 할 수 있었습니다.</font>
										</p>
								</div>
							</div>
						</div>
						<c:forEach items="${listrecount }" begin="0" step="1" end="5"
							var="recount">

							<!-- Single Post -->
							<div class="col-12 col-md-6">
								<div class="single-post wow fadeInUp" data-wow-delay="1s">
									<!-- Post Thumb -->
									<div class="post-thumb">
										<img
											src="<%=request.getContextPath() %>/resources/imgs/${recount.music_image}"
											alt="앨범이미지">
									</div>
									<!-- Post Content -->
									<div class="post-content">
										<div class="post-meta d-flex">
											<div class="post-author-date-area d-flex">
												<!-- Post Author -->
												<div class="post-author">${recount.music_ganre } ||</div>
												<!-- Post Date -->
												<div class="post-date">&nbsp;${recount.music_date }</div>
											</div>
											<!-- Post Comment & Share Area -->
											<div class="post-comment-share-area d-flex">
												<!-- Post Favourite -->
												<div class="post-favourite">
													<a
												href="mainheart.ms?musicheart=${recount.music_heart }&mno=${recount.mno}"><i class="fa fa-heart-o"
														aria-hidden="true"></i> ${recount.music_heart }</a>
												</div>
												<!-- Post Comments -->
												<!-- Post Share -->
											</div>
										</div>
										<a href="pudding_chartcontent.ms?mno=${recount.mno }">
											<h4 class="post-headline"> ${recount.music_title }-${recount.music_singer }</h4>
										</a>
									</div>
								</div>
							</div>

						</c:forEach>
					</div>
				</div>

				<!-- ****** Blog Sidebar ****** -->
				<div class="col-12 col-sm-8 col-md-6 col-lg-4">
					<div class="blog-sidebar mt-5 mt-lg-0">
						<!-- Single Widget Area -->
						<div class="single-widget-area subscribe_widget text-center" style="margin-bottom: 20px;">

							<div class="widget-title">
								<h6>PUDDING CHART</h6>
							</div>

							<h4 class="font-shadow-into-light">LIKE TOP 10 <img width="30px;" src="${path}/resources/img/icon/트로피.png"></h4>
							<table align="center" style="width: 100%">
									<c:forEach items="${listheart }" begin="0" step="1" end="9"	var="heart">
										<tr>
											<td align="center" width=""><a
												href="pudding_chartcontent.ms?mno=${heart.mno }"> <img
													alt="앨범이미지" width="80px" height="80px"
													src="<%=request.getContextPath() %>/resources/imgs/${heart.music_image}"></a>
											</td>
											<td colspan="2" style="font-size: 3;text-align: left; padding-left: 10px; " >
											<font style="font-weight: bold;">${heart.music_title }</font>
												<br>${heart.music_singer }</td>
											<td align="center"><a href="addcart.ms?mno=${heart.mno}">
													<img style="width: 18px" src="<%=request.getContextPath() %>/resources/img/icon/장바구니.png">
											</a></td>
											<td align="center"><a
												href="mainheart.ms?musicheart=${heart.music_heart }&mno=${heart.mno}">
									<img style="width: 18px" src="<%=request.getContextPath() %>/resources/img/icon/하트.png">
											</a>${heart.music_heart }</td>
										</tr>
									</c:forEach>
									<tr><td colspan="5" style="text-align: right; border-bottom: none;"><a href="puddingmusic_heartchart.ms" class="read-more" >MORE</a>
								</td></tr>
							</table>
						</div>
						<br>

						<!-- Single Widget Area -->
						<div class="single-widget-area subscribe_widget text-center">

							<h4 class="font-shadow-into-light">READE TOP 10 <img width="30px;" src="${path}/resources/img/icon/트로피.png"></h4>
							<table align="center" style="width: 100%">
								<c:forEach items="${listrecount }" begin="0" step="1" end="9"
									var="recount">
									<tr>
										<td align="center" width=""><a
											href="pudding_chartcontent.ms?mno=${recount.mno }"><img
												alt="앨범이미지" height="80px"
												src="<%=request.getContextPath() %>/resources/imgs/${recount.music_image}"></a></td>
											<td colspan="2" style="font-size: 3;text-align: left; padding-left: 10px; " >
											<font style="font-weight: bold;">${recount.music_title }</font>
												<br>${recount.music_singer }</td>
										<td align="center"><a
											href="addcart.ms?mno=${recount.mno}"> <img
												style="width: 18px"
												src="<%=request.getContextPath() %>/resources/img/icon/장바구니.png">
										</a></td>
										<td align="center"><img style="width: 18px" src="<%=request.getContextPath() %>/resources/img/icon/눈.png"> ${recount.music_recount}
									</tr>
								</c:forEach>
								<tr><td colspan="5" style="text-align: right; border-bottom: none;"><a href="puddingmusic_recountchart.ms" class="read-more" >MORE</a>
								</td></tr>
								
							</table>
							<br>
							
						</div>
					</div>
				</div>
			</div>
	</section>
	<!-- ****** Blog Area End ****** -->

	<!-- ****** Instagram Area Start ****** -->
	<div
		class="instargram_area owl-carousel section_padding_100_0 clearfix"
		id="portfolio">

		<c:forEach items="${listheart }" var="heart">
			<!-- Instagram Item -->
			<div class="instagram_gallery_item">
				<!-- Instagram Thumb -->
				<img
					src="<%=request.getContextPath() %>/resources/imgs/${heart.music_image}"
					alt="앨범사진">
				<!-- Hover -->
				<div class="hover_overlay">
					<div class="yummy-table">
						<div class="yummy-table-cell">
							<div class="follow-me text-center">
								<a href="pudding_chartcontent.ms?mno=${heart.mno }"><i
									class="fa fa-heart-o" aria-hidden="true"></i>
									${heart.music_title}<i class="fa fa-heart-o" aria-hidden="true"></i></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>



	</div>

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

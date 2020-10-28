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
						<br> <br>
						<h2>좋아요 순위</h2>
						<p class="subtitle">노래 목록</p>

						<br>
					</header>
					<table align="center" width="100%" style="padding-top: 10px;">
						<tr>
							<td style="text-align: center;">번호</td>
							<td style="text-align: center;" colspan="2">곡정보</td>
							<td style="text-align: center;">가수</td>
							<td style="text-align: center;">좋아요</td>
							<td style="text-align: center;">조회수</td>
							<c:if test="${loginInfo.customer_id == 'admin'}">
							</c:if>
							<c:if test="${loginInfo.customer_id != 'admin'}">
								<td align="center" class="first">장바구니</td>
								<td align="center" class="first">주문하기</td>
							</c:if>
						</tr>

						<div class="row" style="margin-bottom: 30px;">
							<c:forEach varStatus="status" items="${lists }" var="music">

								<c:if test="${status.count<4 }">
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
															<a
																href="puddingmusic_recountheartadd.ms?musicheart=${music.music_heart }&mno=${music.mno}"><img
																style="width: 18px"
																src="<%=request.getContextPath()%>/resources/img/icon/하트.png">${music.music_heart}</a>
														</div>
														<!-- Post Comments -->
														<div class="post-comments">
															<a href="${path}/resources/#"> <img
																style="width: 18px"
																src="<%=request.getContextPath()%>/resources/img/icon/눈.png">
																${music.music_recount }
															</a>
														</div>
														<!-- Post Share -->

													</div>
												</div>
												<a href="pudding_chartcontent.ms?mno=${music.mno }">
													<h4 class="post-headline">
														${music.music_title }- ${music.music_singer }
														<c:if test="${status.count==1 }">
															<img style="width: 35px"
																src="<%=request.getContextPath()%>/resources/img/icon/1등.png">
														</c:if>
														<c:if test="${status.count==2 }">
															<img style="width: 35px"
																src="<%=request.getContextPath()%>/resources/img/icon/2등.png">
														</c:if>
														<c:if test="${status.count==3 }">
															<img style="width: 35px"
																src="<%=request.getContextPath()%>/resources/img/icon/3등.png">
														</c:if>
													</h4>

												</a>

											</div>
										</div>
									</div>

								</c:if>
								<c:if test="${status.count>3 }">
		<tr>
			<td align="center">
				${status.count }
			</td>
			
			<td style="width: 102px; padding: 0px;" >
			<a href="pudding_chartcontent.ms?mno=${music.mno }">
			<img alt="앨범이미지" width="100px" height="100px"
				src="<%=request.getContextPath() %>/resources/imgs/${music.music_image}">
				</a>
				</td>
				<td align="left" style="padding-left: 15px;">
				<font size="1">${music.music_ganre }
				</font> <br><font size="3">${music.music_title }</font>
			</td>
			<td align="center">
				${music.music_singer }
			</td>
			
			<td align="center">
			<c:if test="${loginInfo.customer_id == 'admin'}">
			<img style="width: 18px" src="<%=request.getContextPath() %>/resources/img/icon/하트.png"> ${music.music_heart }
			</c:if>
			<c:if test="${loginInfo.customer_id != 'admin'}">
			<a href="puddingmusic_heartadd.ms?musicheart=${music.music_heart }&mno=${music.mno}">							
			<img style="width: 18px" src="<%=request.getContextPath() %>/resources/img/icon/하트.png"></a> ${music.music_heart }
			</c:if>
			</td> 
			<td align="center"> <img style="width: 18px" src="<%=request.getContextPath() %>/resources/img/icon/눈.png">
			 ${music.music_recount } 
			</td>
			<c:if test="${loginInfo.customer_id == 'admin'}">									
									</c:if>
			<c:if test="${loginInfo.customer_id != 'admin'}">																							
			<td align="center">
				<a href="addcart.ms?userid=${user }&mno=${music.mno}"><img style="width: 18px" src="<%=request.getContextPath() %>/resources/img/icon/장바구니.png"></a>
			</td>			
			<td align="center">
				<a href="directorder.od?userid=${user }&mno=${music.mno}"><img style="width: 20px" src="<%=request.getContextPath() %>/resources/img/icon/구매.png" ></a>
			</td>
			</c:if>
		</tr> 
								</c:if>
							</c:forEach>
							
						</div>
						
					</table>
			</div>
		</div>
		<!-- ****** Contact Area End ****** -->



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
								<a href="index.html" class="yummy-logo">PUDDING</a>
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
									id="yummyfood-footer-nav">
									<ul class="navbar-nav" id="yummy-nav">
										<li class="nav-item "><a class="nav-link" href="Main.ms">Home
												<span class="sr-only">(current)</span>
										</a></li>
										<li class="nav-item dropdown active"><a
											class="nav-link dropdown-toggle" href="${path}/resources/#"
											id="yummyDropdown" role="button" data-toggle="dropdown"
											aria-haspopup="true" aria-expanded="false"> Pudding chart</a>
											<div class="dropdown-menu" aria-labelledby="yummyDropdown">
												<a class="dropdown-item" href="puddingmusic_chart.ms">노래
													목록</a> <a class="dropdown-item"
													href="puddingmusic_heartchart.ms">좋아요순위</a> <a
													class="dropdown-item" href="puddingmusic_recountchart.ms">인기도순위</a>
											</div></li>
										<li class="nav-item"><a class="nav-link"
											href="c_Djlist.ms">Pudding DJ</a></li>
										<li class="nav-item "><a class="nav-link"
											href="listcart.ms">Wishlist</a></li>
										<li class="nav-item"><a class="nav-link"
											href="boarderList.bd">Boarder</a></li>
										<li class="nav-item"><a class="nav-link"
											href="C_QnA_list.ad">QnA</a></li>
										<li class="nav-item"><a class="nav-link"
											href="CNotice.ad">Notice</a> <c:if
												test="${loginInfo == null}">
												<li class="nav-item"><a class="nav-link"
													href="loginForm.me">login</a></li>
											</c:if> <c:if test="${loginInfo != null}">
												<li class="nav-item"><a class="nav-link"
													href="logout.jsp">logout</a></li>
											</c:if>
										<li class="nav-item"><a class="nav-link"
											href="myPageList.me">MY PAGE</a></li>
									</ul>
								</div>
							</nav>
						</div>
					</div>
				</div>
			</div>

			<%@include file="../../Mainbottom.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@include file="../../Maintop.jsp"%>
<style>
.img1{box-shadow: 5px 5px 5px #000;}

</style>
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
				<div class="12u" style="width: 100%">
					<section>
						<header>
							<br>

							<h2>Music Detail</h2>
							<p class="subtitle">음악 상세보기</p>

				<br>
			</header>

			<table align="center" style="width: 100%">
				<tr>
					<td rowspan="2" style="width: 452px; height: 452px;" align="center"><img
						alt="앨범이미지" width="450px" height="450px" class="img1" style="margin-bottom: 10px;"
						src="<%=request.getContextPath() %>/resources/imgs/${music.music_image}">
					</td>
				</tr>

				<tr>
					<td style="padding: 80px"><font size="5"
						style="font-weight: 700; line-height: 2;">${music.music_title }</font><font style="float: right;">
						
							<c:if test="${loginInfo.customer_id == 'admin'}">	
									<img style="width: 40px" src="<%=request.getContextPath() %>/resources/img/icon/하트.png"> ${music.music_heart }	&nbsp;			
									</c:if>
									
						<c:if test="${loginInfo.customer_id != 'admin'}">									
						<a href="heart.ms?musicheart=${music.music_heart }&mno=${music.mno}">
							<img style="width: 40px" src="<%=request.getContextPath() %>/resources/img/icon/하트.png"></a> ${music.music_heart } &nbsp;
									</c:if>
							
					  <img style="width: 40px" src="<%=request.getContextPath() %>/resources/img/icon/눈.png">&nbsp;${music.music_recount}&nbsp;&nbsp;
					  
					
							</font>
						<br> <font size="3"
						style="font-weight: 500; line-height: 2;">
							${music.music_singer }</font> <br> <font size="3"
						style="font-weight: 300; line-height: 1.6;"> 곡 장르 : ${music.music_ganre }<br>
					</font> 
					<font size="3" style="font-weight: 300; line-height: 2;">
							발메일 ${music.music_date } 
												</font>
							
					<font size="3" style="font-weight: 300; line-height: 2; float: right;">
							<c:if test="${loginInfo.customer_id == 'admin'}">
							</c:if>	
							<c:if test="${loginInfo.customer_id != 'admin'}">									
							<a href="addcart.ms?userid=${user }&mno=${music.mno}"><img style="width: 36px" src="<%=request.getContextPath() %>/resources/img/icon/장바구니.png"></a>&nbsp;&nbsp;
							<a href="directorder.od?userid=${user }&mno=${music.mno}"><img style="width: 40px" src="<%=request.getContextPath() %>/resources/img/icon/구매.png"></a>
									</c:if>
										
							<a href="<%=request.getContextPath()%>/resources/txt/${music.music_lyics}" onclick="window.open(this.href,'txt','width=500,height=500'); return false;">
							<img style="width: 40px" src="<%=request.getContextPath() %>/resources/img/icon/가사.png"></a>
							<c:if test="${!empty orderplay.orders_mno }">
							<a href="<%=request.getContextPath()%>/resources/song/${music.music_song}" download>
							<img style="width: 40px" src="<%=request.getContextPath() %>/resources/img/icon/음악다운.png"></a>
												</c:if>
												</font>
					<br><br>
					<c:if test="${empty orderplay.orders_mno}">
					<br>
					</c:if>
					<c:if test="${!empty orderplay.orders_mno}">
					<audio
							 style="width: 100%" controls="controls"
							src="<%=request.getContextPath() %>/resources/song/${music.music_song}">
					</audio>
					
					
					
					</c:if>
					<br>
						
							
					</td>
				</tr>
		<tr>
					<td colspan="6"  style="text-align: center; padding: 10px;">${lyics }</td>
				</tr>
		</table>
		</div>
	</div>
	<!-- ****** Contact Area End ****** -->



	<!-- ****** Our Creative Portfolio Area End ****** -->

	<!-- ****** Footer Social Icon Area Start ****** -->

	<!-- ****** Footer Social Icon Area End ****** -->

					<%@include file="../../Mainbottom.jsp"  %>
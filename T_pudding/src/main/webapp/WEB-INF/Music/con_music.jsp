<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@include file="../../AdminTop.jsp"%>
	<!-- ****** Header Area End ****** -->
	<script type="text/javascript">
		function goDel(mno) { // 
			var answer = confirm("정말 삭제하시겠습니까?");
			if (answer) {
				location.href = "delete.ms?mno=" + mno;
			}
		}
	</script>

	<!-- ****** Breadcumb Area Start ****** -->
	<div class="breadcumb-area">
		<div class="container h-100">
			<div class="row h-100 align-items-center">
				<div class="col-12">
					<div class="bradcumb-title text-center">
						<h2>
							<font>노래 상세보기</font>
						</h2>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- ****** Breadcumb Area End ****** -->

	<!-- Main -->

		<!-- Main -->
		<div id="main" class="container">
			<div class="row">
				<div class="12u" style="width: 100%">
					<section>
						<header>
						<br><br>
							<h2>노래 상세보기</h2>
							<br><Br>
						</header>
	<table align="center" style="width: 100%">
				<tr>
					<td rowspan="2" style="width: 452px; height: 452px;" align="center"><img
						alt="앨범이미지" width="450px" height="450px"
						src="<%=request.getContextPath() %>/resources/imgs/${music.music_image}">
					</td>
				</tr>

				<tr>
					<td style="padding: 80px"><font size="5"
						style="font-weight: 700; line-height: 2;">${music.music_title }</font>
						 <font style="float: right;">
							<img style="width: 40px" src="<%=request.getContextPath() %>/resources/img/icon/하트.png"> ${music.music_heart } &nbsp;
					  <img style="width: 40px" src="<%=request.getContextPath() %>/resources/img/icon/눈.png">${music.music_recount}&nbsp;
					 
					  <a href="#" onclick="goDel('${music.mno}')"> <img style="width: 35px" src="<%=request.getContextPath() %>/resources/img/icon/휴지통.png"></a>&nbsp;
					  <a href="update.ms?mno=${music.mno}"> <img style="width: 35px" src="<%=request.getContextPath() %>/resources/img/icon/수정.png"></a>&nbsp;
						</font>
						<br> <font size="3"
						style="font-weight: 500; line-height: 2;">
							${music.music_singer }</font> <br> <font size="3"
						style="font-weight: 300; line-height: 1.6;"> 곡 장르
							${music.music_ganre }<br>
					</font> <font size="3" style="font-weight: 300; line-height: 2;">
							발메일 ${music.music_date }<br>
					</font> 
					 
					
					<br> 
					
					<audio
							 style="width: 100%" controls="controls"
							src="<%=request.getContextPath() %>/resources/song/${music.music_song}">
					</audio>
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


					<%@include file="../../Mainbottom.jsp"  %>
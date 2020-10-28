<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../../AdminTop.jsp"  %>
<style type="text/css">
td{
/* padding: 15px; */
    border-bottom: 1px solid #a0a0a0 ;

}
.first{
text-align: center;
font-weight: bolder;
color: gray;
}
</style>
	<div class="breadcumb-area">
		<div class="container h-100">
			<div class="row h-100 align-items-center">
				<div class="col-12">
					<div class="bradcumb-title text-center">
						<h2>
							<font>DJ 목록</font>
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

							<h2>Pydding DJ</h2>
							<p class="subtitle">"${DJ}" 목록</p>

						</header>
					<a href="Djlist.ms"><img style="width: 50px; float: right;"  src="<%=request.getContextPath() %>/resources/img/icon/Back.png">  </a> 
						<section class="archive-area section_padding_80">
		<div class="container">
			<div class="row">	
<c:forEach items="${list }" var="music">
					<!-- Single Post -->
					<%-- <c:forEach varStatus="status"  var="i" items="abc" >
				<c:if test="cnt<3*${status.count}"> --%>
					<div class="col-12 col-md-6 col-lg-4">
						<div class="single-post wow fadeInUp" data-wow-delay="0.1s">
							<!-- Post Thumb -->
							<div class="post-thumb">
								<img src="${path}/resources/imgs/${music.music_image }"
									alt="노래이미지" style="width: 350px;">
							</div>
							<!-- Post Content -->
							<div class="post-content">
								<div class="post-meta d-flex">
									<div class="post-author-date-area d-flex">
										<!-- Post Author -->

										<!-- Post Date -->
										<div class="post-author">${music.music_ganre } &nbsp; ||
											&nbsp;</div>
										<div class="post-date">${music.music_date }</div>
									</div>
									<!-- Post Comment & Share Area -->
									
								</div>
									<h4 class="post-headline">${music.music_title } -
										${music.music_singer }</h4>
							</div>
						</div>
					</div>
				</c:forEach>
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
                        <!-- Menu Area Start -->
                        
                    </div>
                </div>
            </div>
        </div>
<%@include file="../../Mainbottom.jsp"  %>
        
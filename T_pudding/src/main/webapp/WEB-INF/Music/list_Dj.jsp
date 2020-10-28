<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../../AdminTop.jsp"  %>
<script type="text/javascript">
function goDel(dj_no){ // 
    var answer = confirm("정말 삭제하시겠습니까?"); 
    if(answer){
       location.href = "deleteDj.ms?dj_no="+dj_no;
    }
 }
</script>
	<div class="breadcumb-area">
		<div class="container h-100">
			<div class="row h-100 align-items-center">
				<div class="col-12">
					<div class="bradcumb-title text-center">
						<h2>
							<font>DJ리스트</font>
						</h2>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="breadcumb-nav">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<nav aria-label="breadcrumb"></nav>
				</div>
			</div>
		</div>
	</div>
	<!-- ****** Breadcumb Area End ****** -->
	<!-- ****** Archive Area Start ****** -->
		<section class="categories_area clearfix" id="about">
		<div class="container">
			<div class="row">
			<c:forEach items="${lists }" varStatus="status" var="lists">
				<div class="col-12 col-md-6 col-lg-4">
					<div class="single_catagory wow fadeInUp" data-wow-delay=".3s">
			<a href="#" onclick="goDel('${lists.dj_no }')">
			<img style="width: 30px; float: right; margin: 10px" src="<%=request.getContextPath() %>/resources/img/icon/휴지통.png"> </a><br>
						<img src="${path}/resources/img/catagory-img/${status.count}.jpg" alt="">
						<div class="catagory-title">
							<a href="A_dj_C.ms?dj_no=${lists.dj_no}">
								<h5>${lists.dj_code }</h5>
							</a>
						</div>
					</div>
				</div>
				</c:forEach>
			</div>
			<input type="button" onclick="location.href='addDj.ms'" style="float: right;" value="노래 추가하기">
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
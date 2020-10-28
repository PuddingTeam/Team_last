<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@include file="../../Maintop.jsp"  %>
<style type="text/css">
#accordian li {
	list-style: none;
}

#accordian li>h1 {
	cursor: pointer;
}

li>ul {
	display: none;
}

li>ul>li {
	color: #808080;
}
</style>

<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.10.2.js"></script>
<div class="breadcumb-area">
	<div class="container h-100">
		<div class="row h-100 align-items-center">
			<div class="col-12">
				<div class="bradcumb-title text-center">
					<h2>
						<font style="text-decoration: underline;">QnA</font>
					</h2>
				</div>
			</div>
		</div>
	</div>
</div>

<body>
	<div id="main" class="container">
		<div class="row">
			<div class="12u" style="width: 100%">
				<section>
					<header>
						<br> <br>
						<h2>QnA</h2>
						        <p class="subtitle">QnA 입니다.</p>
				</header>

					<div id="accordian">
						<ul>
						<c:forEach items="${lists }" var="Qna" varStatus="num" >
								<li style="background-color: #e9ecef; border-radius: 0.5em;">
									<h3 style="padding: 10px">[${Qna.qna_category}] ${Qna.qna_qustion}
									
									</h3>
									<ul>
										<li style="background: white; padding: 20px;">${Qna.qna_answer}</li>
									</ul>
								</li>
							</c:forEach>
						</ul>
					</div>
								<font style="float: center;">${pageInfo.pagingHtml}</font>		

					<script type="text/javascript">
						$(function() {
							$("#accordian h3").click(
									function() {
										$("#accordian ul ul").slideUp();
										$('.ico_ar').css('transform', 'none');
										if (!$(this).next().is(":visible")) {
											$(this).next().slideDown();
											$(this).find('.ico_ar:eq(0)').css(
													'transform',
													'rotate(180deg)');
										}
									})
						})

						function goDel(qna_no) { // 
							var answer = confirm("정말 삭제하시겠습니까?");
							if (answer) {
								location.href = "deleteqna.ad?qnano=" + qna_no;
							}
						}
					</script>
			</div>
</body>
</html>

<div class="container">
	<div class="row">
		<div class="col-12">
			<!-- Copywrite Text -->
			<div class="copy_right_text text-center">
				<p>
					Copyright @2018 All rights reserved | This template is made with <i
						class="fa fa-heart-o" aria-hidden="true"></i> by <a
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
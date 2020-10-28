<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../../AdminTop.jsp"%>
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
						<font>QnA 페이지</font>
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
						<h2>QNA</h2>
						<p class="subtitle">QNA 목록보기</p>
					</header>

					<div id="accordian">
						<ul>
							<c:forEach items="${lists }" var="qna">
								<li style="background-color: #e9ecef; border-radius: 0.5em;">
									<h3 style="padding: 10px">[${qna.qna_category }]${qna.qna_qustion }
										<font
											style="float: right; font-size: 15px;"> &nbsp;
											&nbsp; <a href="updateqna.ad?qna_no=${qna.qna_no }"> 
											<img
												style="width: 18px"
												src="<%=request.getContextPath()%>/resources/img/icon/수정.png">
										</a>&nbsp; <img onclick="goDel('${qna.qna_no }')"
											style="width: 18px"
											src="<%=request.getContextPath() %>/resources/img/icon/휴지통.png">
										</font>
									</h3>
									<ul>
										<li style="background: white; padding: 20px;">${qna.qna_answer }</li>
									</ul>
								</li>
							</c:forEach>
						</ul>
					</div>
								<font style="float: center;">${pageInfo.pagingHtml}</font>		
					
					<input type="button" style="float: right;"
						onclick="location.href='addQnA.ad'" value="QnA 추가하기">


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

function goDel(qna_no){ 
    var answer = confirm("정말 삭제하시겠습니까?"); 
    if(answer){
       location.href = "deleteqna.ad?qna_no="+qna_no;
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
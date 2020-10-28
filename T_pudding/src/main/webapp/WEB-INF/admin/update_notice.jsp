<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../../AdminTop.jsp"%>
	<!-- ****** Header Area End ****** -->
<style type="text/css">
.err {
	font-size: 9pt;
	color: red;
	font-weight: bold;
}
</style>

	<!-- ****** Breadcumb Area Start ****** -->
	<div class="breadcumb-area" >
		<div class="container h-100">
			<div class="row h-100 align-items-center">
				<div class="col-12">
					<div class="bradcumb-title text-center">
						<h2>
							<font >공지사항 수정하기</font>
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
				<div class="12u"  width="100%">
					<section>
						<header>
						<br>
							<h2>공지사항 수정</h2>
						<p class="subtitle">공지사항 수정</p>
						</header>
					</section>
					<form:form commandName="notice" action="updateNotice.ad"
						method="post">
						<table  width="100%"  >
							<tr><td style="border-bottom: none;">
										<input type="hidden" value="${notice.noticeno}" name = "noticeno">
								<input type="text" name="notice_title"
									style="width: 100%; height: 55.98438px;"
									placeholder="제목을 입력하세요." value="${notice.notice_title }">
							<form:errors cssClass="err" path="notice_title" /></td>
							</tr>
							<tr>
								<td style="height: 430px; border-bottom: none;">
								<textarea cols="100%"
										style="resize: none; width: 1200px; height: 406px;"
										placeholder="내용을 입력하세요." name="notice_content">${notice.notice_content }</textarea> 
								<form:errors cssClass="err" path="notice_content" />	</td>							
							</tr>
							<tr>
								<td colspan="2" style="border-bottom: none;" align="center">
								<input type="submit" value="수정하기"> 
							    <input type="button" value="목록이동하기" onclick="location.href='addNotice.ad'"> </td>
							</tr>
						</table>
					</form:form>
				</div>
			</div>
		</div>
		<!-- Main -->


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
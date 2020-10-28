<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../../Maintop.jsp"  %>
<style>
td{
border-bottom: 8px solid #fff;
border-radius: 20px;
}

</style>
	<!-- ****** Header Area End ****** -->

	<!-- ****** Breadcumb Area Start ****** -->
	<div class="breadcumb-area" >
		<div class="container h-100">
			<div class="row h-100 align-items-center">
				<div class="col-12">
					<div class="bradcumb-title text-center">
						<h2>
							<font style="text-decoration: underline;">Boarder</font>
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
				<div style="width: 100%" class="12u">
					<section>
						<header>
						<br>
                     <h2>Reply update</h2><p class="subtitle">곡에대한 이야기를 나눌수 있습니다.</p>
                     
                     <br>
                  </header>
  
		<form method="post" action="recontentupdate.bd">
		<table style="width: 100%">
		<input type="hidden" name="boardno" value="${boardno }">
		<!-- 글번호 -->
		<tr>
		 <td align="center"  style="background: #eeecea; font-weight: bold; " >작성자<input type="hidden"  name="recontentno" value="${recontent.recontentno }"></td>
		<td><input type="text" disabled="disabled" style="width: 100%" readonly="readonly" name="recontent_writer" value="${recontent.recontent_writer } "></td>
		</tr>
		<tr>
    <td align="center"  style="background: #eeecea; font-weight: bold; " >댓글 내용</td>
		<td><textarea name="recontent_content" id="abc" style="width: 100%" rows="5" cols="50">${recontent.recontent_content }</textarea></td>
		</tr>
		<tr>
		 <td align="center"  style="background: #eeecea;  font-weight: bold; " >비밀번호</td>
		<td><input type="password" name="recontent_passwd" placeholder="비밀번호를 입력하세요"></td>
		</tr>
		<tr>
		<td colspan=2 style="text-align: right;"><input type="submit" value="댓글수정하기"></td>
		</tr>
		</table>
		</form>
		
</div>
<!-- /Main -->

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
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
	<div class="breadcumb-area">
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
				<div class="12u" style="width: 100%">
					<section >
						<header>
						<br>
                     <h2>글쓰기</h2>
                     <p class="subtitle">곡에대한 이야기를 나눌수 있습니다.</p>
                     
                     <br>
                  </header>
  
    <form:form commandName="bo" method="post" action="insert.bd" >   <!--  form에쓸때는 onSubmit, submit에 쓸때는 onClick -->
    <table width="100%" cellspacing="0">
<!--     <tr>
    <td align="center">이름</td>
    <td><input type="text"style="width: 100%;"  maxlength="10" name="board_writer" value="홍길동"></td>
   </tr> -->
    <tr>
    <td style=" background: #eeecea; font-weight: bold; " align="center">
    <input type="hidden" value="${loginInfo.customer_id }" name="board_writer">
    제목</td>
    <td><input type="text" style="width: 100%;" placeholder="제목을 입력하세요" name="board_title"></td>
   </tr>

    <tr>
    <td align="center"  style="background: #eeecea; font-weight: bold; " >내용</td>
    <td><textarea placeholder="내용을 입력하세요" style="margin: 0px; width: 100%;; height: 259px; resize: none;" name="board_content" id="abc" ></textarea> </td>
   </tr>
   
    <tr>
    <td  align="center"  style="background: #eeecea; font-weight: bold; " >비밀번호 </td>
    <td ><input  type="password" style="width: 100%;" maxlength="12" name="board_passwd" placeholder="비밀번호를 입력하세요"></td>
   </tr>
   <tr>
    <tr>
    <td colspan="2" align="center">
    <input type="submit" value="글쓰기" >
    <input type="reset" value="다시작성">
    <input type="button" value="목록보기" onClick="location.href='boarderList.bd'">
    
    </td>
   </tr>
    
    </table>
    </form:form>
</div>
</div>
</div>
<!-- Main -->

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
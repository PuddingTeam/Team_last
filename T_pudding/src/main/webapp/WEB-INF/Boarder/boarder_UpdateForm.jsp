<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../../Maintop.jsp"  %>
<style>
td{
border-bottom: 8px solid #fff;
border-radius: 20px;
}

</style>
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
                     <h2>Boarder Update</h2><br>
                  <p class="subtitle">곡에대한 이야기를 나눌수 있습니다.</p>
                  </header>
    <form:form commandName="bo" method="post" action="update.bd" >   <!--  form에쓸때는 onSubmit, submit에 쓸때는 onClick -->
    <table  align="center" width="100%" cellspacing="0">
      
    <tr>
  <td style=" background: #eeecea; font-weight: bold; " align="center">    이름
    <input type="hidden"  name="boardno" value="${lists.boardno }"></td>
    <td><input type="text" style="width:100%;" disabled="disabled" readonly="readonly" size="30" maxlength="10" name="board_writer" value="${lists.board_writer }"></td>
	</tr>
    
    <tr>
    <td style=" background: #eeecea; font-weight: bold; " align="center">제목</td>
    <td><input type="text" name="board_title"  style="width:100%;" size="50" value="${lists.board_title }"></td>
	</tr>
	
    <tr>
    <td align="center"  style="background: #eeecea; font-weight: bold; " >내용</td>
    <td><textarea name="board_content" id="abc" rows="13" cols="50" style="width: 100%">${lists.board_content }</textarea> </td>
	</tr>
	
    <tr>
    <td align="center"  style="background: #eeecea;  font-weight: bold; " >비밀번호 </td>
    <td><input type="password" width="100%" size="10" maxlength="12" name="board_passwd" value="${lists.board_passwd }"></td>
	</tr>
    <tr>
    <td colspan="2" align="center" style="padding: 15px;">
    <input type="submit" value="수정하기" >
    <input type="reset" value="다시작성">
    <input type="button" value="목록보기" onClick="location.href='boarderList.bd'">
    
    </td>
	</tr>
    
    
    
    </table>
    
    
    
    
    </form:form>

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
</div>
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
    
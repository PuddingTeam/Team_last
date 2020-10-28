<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@include file="../../AdminTop.jsp"%>
<style>
td{
border-bottom: 8px solid #fff;
border-radius: 20px;
}

</style>

<script type="text/javascript">
      function writeSave() {

         if ($('input[name=music_title]').val() == "") {
            alert("노래제목을 입력하세요.");
            return false;
         }
         
         if ($('input[name=music_singer]').val() == "") {
            alert("가수를 입력하세요.");
            return false;
         }
         if ($('input[name=music_ganre]:checked').length == 0) {
            alert("장르를 선택하세요.");
            return false;
         }
         if ($('input[name=img_upload]').val() == "") {
            alert("이미지를 업로드하세요.");
            return false;
         }
         if ($('input[name=song_upload]').val() == "") {
            alert("노래 파일 업로드하세요.");
            return false;
         }
         if ($('input[name=lyics_upload]').val() == "") {
            alert("가사 파일을 업로드하세요.");
            return false;
         }
         if ($('input[name=music_date]').val() == "") {
            alert("발매일을 선택해주세요.");
            return false;
         }
         
      }
   </script>
	<!-- ****** Header Area End ****** -->

	<!-- ****** Breadcumb Area Start ****** -->
	<div class="breadcumb-area">
		<div class="container h-100">
			<div class="row h-100 align-items-center">
				<div class="col-12">
					<div class="bradcumb-title text-center">
						<h2>
							<font> 노래 수정 </font>
						</h2>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- ****** Breadcumb Area End ****** -->

	<!-- Main -->
		<div id="main" class="container">
			<div class="row">
				<div class="12u">
					<section style="width: 1100px;">
						<header>
						<br><br>
							<h2>노래 수정</h2>
						<br>
						</header>
<form action="update.ms" method="post" enctype="multipart/form-data" onsubmit="return writeSave()">
	<table align="center" cellspacing="0" width="100%">
		<tr>
		 <td style=" background: #eeecea; font-weight: bold; " align="center"> 노래 제목 </td>
			<td>
			<input type="hidden"  name ="old_img" value="${music.old_img }">
			<input type="hidden" name="old_song" value="${music.old_song }">
			<input type="hidden" name="old_lyics" value="${music.old_lyics }">
			<input type="hidden" name="mno" value="${music.mno }">
			<input type="text" name="music_title" style="width: 100%;height: 55.98438px;" value="${music.music_title }" placeholder="노래제목을 입력하세요." ></td>
		</tr>
		<tr>
		 <td style=" background: #eeecea; font-weight: bold; " align="center"> 가수명 </td>
			<td><input type="text" name="music_singer" style="width: 100%;height: 55.98438px;" value="${music.music_singer }" placeholder="가수을 입력하세요." ></td>
		</tr>
		<tr>
		 <td style=" background: #eeecea; font-weight: bold; " align="center"> 장르 </td>
			<td	>
			<input type="radio" name="music_ganre" value="Ballade" style="height: 30px;"  <c:if test="${music.music_ganre == 'Ballade' }"> checked </c:if>  ><font size="5"> 발라드 
			<input type="radio" name="music_ganre" value="pop"style="height: 30px;" <c:if test="${music.music_ganre == 'pop' }"> checked  </c:if> ><font size="5">팝송 
			<input type="radio" name="music_ganre" value="dance"style="height: 30px;" <c:if test="${music.music_ganre == 'dance' }">checked </c:if> ><font size="5">댄스 
			<input type="radio" name="music_ganre" value="hiphop"style="height: 30px;" <c:if test="${music.music_ganre == 'hiphop' }"> checked  </c:if> ><font size="5">힙합 
			<input type="radio" name="music_ganre" value="acoustic"style="height: 30px;"  <c:if test="${music.music_ganre == 'acoustic' }"> checked </c:if> ><font size="5">어쿠스틱 
			
			</td>
		</tr>
		<tr>
		 <td style=" background: #eeecea; font-weight: bold; " align="center">이미지 선택 </td>
			<td>
		<img alt="노래사진" width="150px" height="150px" src="<%=request.getContextPath()%>/resources/imgs/${music.music_image}">
			<br><input type="file" name="img_upload" style=" padding-top: 20px; width: 100%;height: 55.98438px;"  ></td>
		</tr>
		<tr>
		 <td style=" background: #eeecea; font-weight: bold; " align="center">노래 파일 선택 </td>
			<td>기존 음악파일: ${music.music_song }<br>
			<audio autoplay="autoplay" controls="controls" src="<%=request.getContextPath() %>/resources/song/${music.music_song}"></audio>
			<br><input type="file" name="song_upload" style="width: 100%;height: 55.98438px; padding-top: 20px; " ></td>
		</tr>
		<tr>
		 <td style=" background: #eeecea; font-weight: bold; " align="center"> 가사 파일 선택 </td>
			<td>
			<a href="<%=request.getContextPath()%>/resources/txt/${music.music_lyics}" onclick="window.open(this.href,'txt','width=500,height=500'); return false;">기존 가사파일 : ${music.music_lyics }</a>
			<br><input type="file"  name="lyics_upload" style="width: 100%;  padding-top: 20px; height: 55.98438px;" ></td>
		</tr>
		<tr>
		 <td style=" background: #eeecea; font-weight: bold; " align="center"> 발매일 선택 </td>
			<td>
			기존 발매일 : ${music.music_date }<br>
			<input type="date" name="music_date" style="width: 100%; padding-top: 20px; height: 55.98438px;"></td>
		</tr>
		<tr>
			<td colspan="2" align="center"><input type="submit" value="수정하기">
				<input type="button" value="목록이동하기"
				onclick="location.href='list.ms'">
			</td>
		</tr>
	</table>	
</form>
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
							<i class="fa fa-heart-o" aria-hidden="true"></i> by 
							<a
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
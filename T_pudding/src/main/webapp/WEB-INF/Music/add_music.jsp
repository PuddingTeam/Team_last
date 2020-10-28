<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../AdminTop.jsp"%>
<style>
td {
	border-bottom: 8px solid #fff;
	border-radius: 20px;
}
</style>
<!-- ****** Header Area End ****** -->
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
<!-- ****** Breadcumb Area Start ****** -->
<div class="breadcumb-area">
	<div class="container h-100">
		<div class="row h-100 align-items-center">
			<div class="col-12">
				<div class="bradcumb-title text-center">
					<h2>
						<font>노래추가</font>
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
		<div class="12u" style="width: 100%">
			<section>
				<header>
					<br>
					<br>
					<h2>노래 추가</h2>
					<br>
				</header>
				<form action="addmusic.ms" method="post"
					enctype="multipart/form-data" onsubmit="return writeSave()">
					<table align="center" width="100%">
						<tr>
							<td style="background: #eeecea; font-weight: bold;"
								align="center">노래 제목</td>
							<td><input type="text" name="music_title"
								style="width: 100%; height: 55.98438px;"
								placeholder="노래제목을 입력하세요."></td>
						</tr>
						<tr>
							<td style="background: #eeecea; font-weight: bold;"
								align="center">가수명</td>
							<td><input type="text" name="music_singer"
								style="width: 100%; height: 55.98438px;"
								placeholder="가수를 입력하세요."></td>
						</tr>
						<tr>
							<td style="background: #eeecea; font-weight: bold;"
								align="center">장르</td>
							<td><input type="radio" name="music_ganre" value="Ballade"
								style="height: 30px;"><font size="4"> 발라드 &nbsp;
									<input type="radio" name="music_ganre" value="pop"
									style="height: 30px;"><font size="4">팝송 &nbsp; <input
										type="radio" name="music_ganre" value="dance"
										style="height: 30px;"><font size="4">댄스 &nbsp;
											<input type="radio" name="music_ganre" value="hiphop"
											style="height: 30px;"><font size="4">힙합 &nbsp;
												<input type="radio" name="music_ganre" value="acoustic"
												style="height: 30px;"><font size="4">어쿠스틱
													&nbsp; </td>
						</tr>
						<tr>
							<td style="background: #eeecea; font-weight: bold;"
								align="center">이미지 선택</td>
							<td><input type="file" name="img_upload"
								style="width: 100%; height: 55.98438px;"></td>
						</tr>
						<tr>
							<td style="background: #eeecea; font-weight: bold;"
								align="center">노래 파일 선택</td>
							<td><input type="file" name="song_upload"
								style="width: 100%; height: 55.98438px;"></td>
						</tr>
						<tr>
							<td style="background: #eeecea; font-weight: bold;"
								align="center">가사 파일 선택</td>
							<td><input type="file" name="lyics_upload"
								style="width: 100%; height: 55.98438px;"></td>
						</tr>
						<tr>
							<td style="background: #eeecea; font-weight: bold;"
								align="center">발매일 선택</td>
							<td><input type="date" name="music_date"
								style="width: 100%; height: 55.98438px;"></td>
						</tr>
						<tr>
							<td colspan="2" align="center"><input type="submit"
								value="추가하기"> <input type="button" value="목록이동하기"
								onclick="location.href='list.ms'"></td>
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
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../../Maintop.jsp"  %>
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
					<section>
						<header>
						<br>
							<h2>Boarder</h2>
						<p class="subtitle">곡에대한 이야기를 나눌수 있습니다.</p></header>
								          <form action="boarderList.bd" method="post"
							style="text-align: right;padding-bottom: 20px;">
                     <select name="whatColumn">
                        <option value="all">전체검색
                        
								<option value="board_title">제목으로 검색
                        
								<option value="board_writer">작성자 검색
                     
							</select> <input type="text" name="keyword" value="홍길동"> <input
								type="submit" value="검색">
                  </form>
                  <table style="width: 100%">

                     <tr  style="background: #eeecea">
                        <td style="text-align: center; width: 5%">번호</td>
                        <td style="text-align: center; width: 30%">제목</td>
                        <td style="text-align: center; width: 10%">작성자</td>
                        <td style="text-align: center; width: 10% ">작성일</td>
                        <td style="text-align: center; width: 3% ">조회수</td>
                     </tr>
                     
                     <c:forEach items="${lists }" var="bean">
                        <tr>
<td style="text-align: center;">${bean.rownum }</td>                           <td style="text-align: left"><a href="content.bd?boardno=${bean.boardno }&board_recontent=${bean.board_recontent}">${bean.board_title } (${bean.board_recontent })</a></td>
                           <td style="text-align: center;">${bean.board_writer }</td>
                           <td style="text-align: center;">${bean.board_date }</td>
                           <td style="text-align: center;">${bean.board_recount }</td>
                        </tr>
                     </c:forEach>
                     <tr >
                     <td colspan="4" style="border-bottom: 0px; text-align: center;">
                        ${pageInfo.pagingHtml}
                        </td><td style="text-align: right; border-bottom: 0px;" colspan="1">
                        <input type="button" value="게시글 등록"
									onclick="location.href='insert.bd'">
								</td>
                     </tr>


                  </table>
</body>
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
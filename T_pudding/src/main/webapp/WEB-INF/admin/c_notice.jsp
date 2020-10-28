<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../../Maintop.jsp"  %>
	<!-- ****** Header Area End ****** -->

	<!-- ****** Breadcumb Area Start ****** -->
	<div class="breadcumb-area" >
		<div class="container h-100">
			<div class="row h-100 align-items-center">
				<div class="col-12">
					<div class="bradcumb-title text-center">
						<h2>
							<font style="text-decoration: underline;">Notice</font>
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
							<h2>Notice</h2>
							<p class="subtitle">공지사항 입니다.</p>
						</header>
						<table align="center" cellspacing="0" width="100%">
                     <tr  style="background: #eeecea">
								<td style="text-align: center; ">번호</td>
								<td style="text-align: center; ">제목</td>
								<td style="text-align: center; ">작성자</td>
								<td style="text-align: center; ">조회수</td>
								<td style="text-align: center; ">작성시간</td>
							</tr>

							<c:forEach items="${lists }" var="notice" varStatus="num">
		<tr>
			<td align="center" style="width: 10%">
					${notice.rownum }
			</td>
			
			<td align="center"style="width: 50%; text-align: left; font-weight:bolder;">
				<a href="CNoticeC.ad?noticeno=${notice.noticeno}" >${notice.notice_title }</a> 
			</td >
			
			<td align="center"style="width: 10%">
				관리자
			</td>
			<td align="center" style="width: 10%">
				${notice.notice_recount }
			</td>
			<td align="center" style="width: 10%">
				${notice.notice_date }
			</td>

		</tr> 
	</c:forEach>
		<tr><td align="center" style="border-bottom: none" colspan="5">
${pageInfo.pagingHtml}						
		</td></tr>
						</table>
						
				</div>
			</div>
		</div>
		<!-- Main -->

	<%@include file="../../Mainbottom.jsp"  %>	
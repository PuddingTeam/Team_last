<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../../Maintop.jsp"  %>

	<!-- ****** Header Area End ****** -->

	<!-- ****** Breadcumb Area Start ****** -->
	<div class="breadcumb-area">
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
							<tr>

								<td style="font-weight: bolder;  width: 70%"> <font style="font-size: 30px">
									${notice.notice_title }</font></td>

								<td align="right" style="width: 20%">
									<img style="width: 18px" src="<%=request.getContextPath() %>/resources/img/icon/달력.png">${notice.notice_date } &nbsp;&nbsp;
									<img style="width: 18px" src="<%=request.getContextPath() %>/resources/img/icon/눈.png">${notice.notice_recount }
									</td>
							</tr>
							<tr>	<td colspan="2" style="text-align: center; border-bottom: none">
							<textarea style="resize: none; border-color:gray; border-radius:20px; border-width:0.2em; width: 1000px;overflow:hidden;height: 400px;" readonly="readonly"> ${notice.notice_content }</textarea>
		</td>
							</tr>
							<tr><td colspan="3" align="right" style="border-bottom: none">
							<input type="button" value="목록이동" onclick="location.href='CNotice.ad'">
							</td>
							</tr>
						</table>
				</div>
			</div>
		</div>
		<!-- Main -->
<%@include file="../../Mainbottom.jsp"  %>
		
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../../Maintop.jsp"%>

<div class="breadcumb-area">
	<div class="container h-100">
		<div class="row h-100 align-items-center">
			<div class="col-12">
				<div class="bradcumb-title text-center">
					<h2>
						<font style="text-decoration: underline;">My Page</font>
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
						<h2>My_Page</h2>
						<p class="subtitle">회원 정보 수정 페이지입니다.</p>
					</header>
					<form:form commandName="customer" method="post"
						action="myPageUpdate.me">
						<table align="center" style="width: 40%;margin-left: 400px;">
							<tr>
								<td align="center" style="border-bottom: none; width: 30%"><img
									style="width: 130px"
									src="<%=request.getContextPath() %>/resources/img/icon/작성자.png">
													<input type="hidden" name="customer_name" value=${customer.customer_name }>
									
									</td>
							</tr>

							<tr>
								<td align="center"><input type="hidden" name="customerno"
									id="name" value="${customer.customerno }">
									${customer.customer_name }</td>
							</tr>
							<tr>
								<td align="center">
											<input type="hidden" name="customer_id" value=${customer.customer_id }>
								${customer.customer_id }</td>
							</tr>

							<tr>
								<td align="center">
								<input type="password" name="customer_passwd" placeholder="비밀번호를 입력하세요"
									 <%-- value="${customer.customer_passwd}" --%>
									 >
									 <form:errors
										cssClass="err" path="customer_passwd" />
								</td>
							</tr>
							<tr>
								<td align="center"><input type="email" name="customer_email"
									id="email" value="${customer.customer_email }"> <form:errors
										cssClass="err" path="customer_email" />
								</td>
							</tr>
							<tr>
								<td align="center"><input type="text"
									name="customer_hpnumber" id="hpnumber"
									value="${customer.customer_hpnumber }"> <form:errors
										cssClass="err" path="customer_hpnumber" /></td>
							</tr>

							<tr>
								<td align="center" style="border-bottom: none;">
								<input type="submit" value="수정하기">
								<input type="button" onclick="location.href='myPageList.me'" value="취소">
								</td>
							</tr>
						</table>

					</form:form>
					<%@include file="../../Mainbottom.jsp"%>
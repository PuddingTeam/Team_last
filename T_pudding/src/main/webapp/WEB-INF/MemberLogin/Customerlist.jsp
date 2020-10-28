<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../../AdminTop.jsp"%>

<script type="text/javascript">
function goDel(customerno){ // 
    var answer = confirm("정말 삭제하시겠습니까?"); 
    if(answer){
	       location.href = "delete.me?customerno="+customerno;
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
						<font>회원관리</font>
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
					<br> <br>
					<h2>회원관리</h2>
					<p class="subtitle">회원을 삭제 할 수 있습니다.</p>
				</header>
				<form action="admin_customerlist.me" method="post"
					style="text-align: right; padding-bottom: 20px;">
					<select name="whatColumn">
						<option value="all">전체 검색
						<option value="customer_id">아이디로 검색
						<option value="customer_name">이름으로 검색
					</select> <input type="text" name="keyword"> &nbsp;&nbsp; <input
						type="submit" value="조회">
				</form>
				<table style="width: 100%; text-align: center;">
					<tr  style="background: #eeecea;  font-weight: bolder;">
						<td >회원번호</td>
						<td>이름</td>
						<td>아이디</td>
						<td>비밀번호</td>
						<td >이메일</td>
						<td >휴대폰번호</td>
						<td> 삭제</td>
					</tr>
					<c:forEach items="${lists }" var="customer">
						<tr>
							<td align="center">${customer.customerno }</td>
							<td align="center">${customer.customer_name }</td>
							<td align="center">${customer.customer_id }</td>
							<td align="center">${customer.customer_passwd }</td>
							<td align="center">${customer.customer_email }</td>
							<td align="center">${customer.customer_hpnumber }</td>
							<td><a href="#" onclick="goDel('${customer.customerno}')">
							<img style="width: 18px" src="<%=request.getContextPath() %>/resources/img/icon/휴지통.png">
							</a></td>
						</tr>
					</c:forEach>
					 <tr >
                     <td colspan="7" style="border-bottom: 0px; text-align: center;">
                        ${pageInfo.pagingHtml}
                        </td>
                     </tr>
				</table>
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
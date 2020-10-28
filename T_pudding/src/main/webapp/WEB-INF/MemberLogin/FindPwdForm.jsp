<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html lang="en">
<head>
<title>Pudding</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css"  href="${path}/resources/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css"  href="${path}/resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css"  href="${path}/resources/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css"  href="${path}/resources/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css"  href="${path}/resources/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css"  href="${path}/resources/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css"  href="${path}/resources/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css"  href="${path}/resources/css/util.css">
	<link rel="stylesheet" type="text/css"  href="${path}/resources/css/main.css">
	<link rel="icon" href="${path}/resources/img/core-img/푸딩.png">
	
<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<form class="login100-form validate-form p-l-55 p-r-55 p-t-178" action="findpwd.me" method="post">
					<span class="login100-form-title">
					            <a href="Main.ms"> <img style="width: 30px; position:absolute; ; top: 20px; left:10px;" src="${path}/resources/img/icon/집.png" alt="집"> </a>
						Fine Password
					</span>

					<div class="wrap-input100 validate-input m-b-16" data-validate="Please enter Name">
						<input class="input100" type="text" name="customer_name" placeholder="Name">
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate ="Please enter ID">
						<input class="input100" type="text" name="customer_id" placeholder="ID">
						<span class="focus-input100"></span>
					</div>

					<div class="text-right p-t-13 p-b-23">
						 <a href="findid.me" class="text-sm">아이디 찾기</a>
					</div>

					<div class="container-login100-form-btn">
							<input class="login100-form-btn" type="submit" value="Fine Password">
					</div>

					<div class="flex-col-c p-t-170 p-b-40">
						<span class="txt1 p-b-9">
							Would you like to Login?
						</span>

						<a href="loginForm.me" class="txt3">
							Login now
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>
	
	
<!--===============================================================================================-->
	<script type="text/javascript" src="${path}/resources/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script type="text/javascript" src="${path}/resources/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script type="text/javascript" src="${path}/resources/vendor/bootstrap/js/popper.js"></script>
	<script type="text/javascript" src="${path}/resources/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script type="text/javascript" src="${path}/resources/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script type="text/javascript" src="${path}/resources/vendor/daterangepicker/moment.min.js"></script>
	<script type="text/javascript" src="${path}/resources/vendor/daterangepicker/daterangepicker.js"></script>
<!--==============================================================================================-->
	<script type="text/javascript" src="${path}/resources/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script type="text/javascript" src="${path}/resources/js/main.js"></script>

</body>
</html>
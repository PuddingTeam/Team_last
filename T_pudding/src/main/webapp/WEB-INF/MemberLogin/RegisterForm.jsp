<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common.jsp"%>
<head>
<style type="text/css">
	.err{
	font-size: 8pt;
	color: red;
	font-weight: bold;
    padding-left: 20px;
	
	}
	.container {
	margin:30PX;
}
</style>
<c:set var="path" value="${pageContext.request.contextPath }" />
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
				<form:form commandName="customer" 
				accept-charset="UTF-8" role="form" class="login100-form validate-form p-l-55 p-r-55 p-t-178" action="registerForm.me"  method="post">
					<span class="login100-form-title">
					            <a href="Main.ms"> <img style="width: 30px; position:absolute; ; top: 20px; left:10px;" src="${path}/resources/img/icon/집.png" alt="집"> </a>
						Sign Up
					</span>

					<div class="wrap-input100 validate-input m-b-16" data-validate="Please enter ID">
						<input class="input100" type="text" name="customer_id" placeholder="ID">
						<span class="focus-input100">
						</span>
					</div>
							<form:errors cssClass="err" path="customer_id" /> 

					<div class="wrap-input100 validate-input m-b-16" data-validate ="Please enter Name">
						<input class="input100" type="text" name="customer_name" placeholder="Name">
						<span class="focus-input100">
						</span>
					</div>
							<form:errors cssClass="err" path="customer_name" />

					<div class="wrap-input100 validate-input m-b-16" data-validate ="Please enter Password">
						<input class="input100" type="password" name="customer_passwd" placeholder="Password">
						<span class="focus-input100">
						</span>
					</div>
							<form:errors cssClass="err" path="customer_passwd" />

					<div class="wrap-input100 validate-input m-b-16" data-validate ="Please enter Email">
						<input class="input100" type="text" name="customer_email" placeholder="Email">
						<span class="focus-input100">
						</span>
					</div>
							<form:errors cssClass="err" path="customer_email" />


					<div class="wrap-input100 validate-input m-b-16" data-validate ="Please enter Hpnumber">
						<input class="input100" type="text" name="customer_hpnumber" placeholder="Hpnumber">
						<span class="focus-input100">
						</span>
					</div>
							<form:errors cssClass="err" path="customer_hpnumber" />


					<div class="container-login100-form-btn">
							<input class="login100-form-btn" type="submit" value="Sign Up">
					</div>

					<div class="flex-col-c p-t-170 p-b-40" style="padding-top: 80px;">
						<span class="txt1 p-b-9">
							Would you like to Login?
						</span>

						<a href="loginForm.me" class="txt3">
							Login now
						</a>
					</div>
				</form:form>
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
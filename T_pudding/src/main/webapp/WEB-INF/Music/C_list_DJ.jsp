<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../../Maintop.jsp"  %>
	<div class="breadcumb-area">
		<div class="container h-100">
			<div class="row h-100 align-items-center">
				<div class="col-12">
					<div class="bradcumb-title text-center">
						<h2>
							<font style="text-decoration: underline;">Music List</font>
						</h2>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="breadcumb-nav">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<nav aria-label="breadcrumb"></nav>
				</div>
			</div>
		</div>
	</div>
	<!-- ****** Breadcumb Area End ****** -->
	<!-- ****** Archive Area Start ****** -->
		<section class="categories_area clearfix" id="about">
		<div class="container">
			<div class="row">
			
			<c:forEach items="${lists }" varStatus="status" var="lists">
				<div class="col-12 col-md-6 col-lg-4">
					<div class="single_catagory wow fadeInUp" data-wow-delay=".3s">
						<img src="${path}/resources/img/catagory-img/${status.count}.jpg" alt="">
						<div class="catagory-title">
							<a href="C_dj_C.ms?dj_no=${lists.dj_no}">
								<h5>${lists.dj_code }</h5>
							</a>
						</div>
					</div>
				</div>
				</c:forEach>
			
				
			</div>
		</div>
	</section>
	<!-- ****** Archive Area End ****** -->
	<!-- ****** Our Creative Portfolio Area End ****** -->

	<!-- ****** Footer Social Icon Area Start ****** -->

	<!-- ****** Footer Social Icon Area End ****** -->

	<!-- ****** Footer Menu Area Start ****** -->

        <%@include file="../../Mainbottom.jsp"%>	
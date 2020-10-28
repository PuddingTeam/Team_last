<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../../Maintop.jsp"  %>
<style type="text/css">
td{
/* padding: 15px; */
    border-bottom: 1px solid #a0a0a0 ;

}
.first{
text-align: center;
font-weight: bolder;
color: gray;
}
</style>
	<div class="breadcumb-area">
		<div class="container h-100">
			<div class="row h-100 align-items-center">
				<div class="col-12">
					<div class="bradcumb-title text-center">
						<h2>
							<font style="text-decoration: underline;">Pudding DJ</font>
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
				<div class="12u">
					<section style="width: 1200px;">
						<header>
							<br>

							<h2>Pydding DJ</h2>
							<p class="subtitle">"${DJ}" 목록</p>

						</header>
						<table  align="center" cellspacing="0" width="100%">
							<tr><td style=" border-bottom: 0px; text-align: right;" colspan="8" > <a href="c_Djlist.ms"><img style="width: 50px" src="<%=request.getContextPath() %>/resources/img/icon/Back.png">  </a> </td></tr>
							<tr>
								<td class="first">번호</td>
								<td class="first"  colspan="2">곡정보</td>
								<td class="first">가수</td>
								<td class="first">좋아요</td>
								<td class="first">조회수</td>
								<td class="first">장바구니</td>								
								<td class="first">주문하기</td>								
							</tr>
						
							<c:forEach items="${list }" var="music">
		<tr>
			<td align="center">
				${music.mno }
			</td>
			
		<td style="width: 102px; padding: 0px;" >
			<a href="pudding_chartcontent.ms?mno=${music.mno }">
			<img alt="앨범이미지" width="100px" height="100px"
				src="<%=request.getContextPath() %>/resources/imgs/${music.music_image}">
				</a>
				</td>
				<td style="padding-left: 15px;">
				<font size="1" >${music.music_ganre }
				</font> <br><font size="3">${music.music_title }</font>
			</td>
			<td align="center">
				${music.music_singer }
			</td>
			<td align="center">
			<img style="width: 18px" src="<%=request.getContextPath() %>/resources/img/icon/하트.png"> ${music.music_heart }
			</td>
			<td align="center"> <img style="width: 18px" src="<%=request.getContextPath() %>/resources/img/icon/눈.png">
			 ${music.music_recount } 
			</td>
			<td align="center">
				<a href="addcart.ms?mno=${music.mno}"><img style="width: 18px" src="<%=request.getContextPath() %>/resources/img/icon/장바구니.png"></a>
			</td>
			
			<td align="center">
				<a href="directorder.od?mno=${music.mno}"><img style="width: 20px" src="<%=request.getContextPath() %>/resources/img/icon/구매.png" ></a>
			</td>
		</tr> 
	</c:forEach>
 </table>
        </div>
    </div>
    <!-- ****** Contact Area End ****** -->

   

    <!-- ****** Our Creative Portfolio Area End ****** -->

    <!-- ****** Footer Social Icon Area Start ****** -->
  
    <!-- ****** Footer Social Icon Area End ****** -->

    <!-- ****** Footer Menu Area Start ****** -->
    <footer class="footer_area">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="footer-content">
                        <!-- Logo Area Start -->
                        <!-- Menu Area Start -->
                        
                    </div>
                </div>
            </div>
        </div>
<%@include file="../../Mainbottom.jsp"  %>
        
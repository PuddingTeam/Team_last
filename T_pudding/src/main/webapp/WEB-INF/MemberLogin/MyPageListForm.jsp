<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../../Maintop.jsp"  %>
<%@ include file="../common.jsp" %>
<style>
*{  margin: 0; padding: 0; }
ul{list-style: none;}
.accordion-box{
 /*  width: 100%; */ 
  /* max-width: 600px; */
  margin:  0 auto;
}
p.title{
  /* width: 100%;   */
  line-height: 60px; 
  background: #000; 
  color: #fff; 
  box-sizing: border-box;
}
.con{
  display:none;
}
</style>
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
						<p class="subtitle">마이페이지 입니다.</p></header>

   <input type="hidden" name="customerno" value="${lists.customerno }">
   <table  align="center" style="width: 100%">
      <tr>
         <td align="center" style="border-bottom: none; width: 30%"><img style="width: 130px" src="<%=request.getContextPath() %>/resources/img/icon/작성자.png"></td>         
          <td align="center" rowspan="5">
         <div class="accordion-box">
               <ul class="list">
                 <li>
         
                     <p class="title">구매내역 리스트</p>
            <div class="con">
         <table>
         <c:forEach items="${orderlists }" var="bean" varStatus="status"> 
         <c:if test="${status.count%6==1}"><tr></c:if>
         <c:if test="${status.count%6!=0}">
         <td style="text-align: center; border-bottom: none;">
		<img alt="앨범이미지" height="90px" src="<%=request.getContextPath() %>/resources/imgs/${bean.orders_album}"> <BR>
        <font style="font-weight: bold;">  ${bean.orders_title }</font>
         </td> 
         </c:if>
         <c:if test="${status.count%6==0}">
         <td style="text-align: center; border-bottom: none;">
		<img alt="앨범이미지" height="90px" src="<%=request.getContextPath() %>/resources/imgs/${bean.orders_album}"> <BR>
        <font style="font-weight: bold;">  ${bean.orders_title }</font>
         </td></tr>
         </c:if>
                  </c:forEach>
          </table>
                  </div>
                  
     </li>
    </ul>
</div>
</td>
      </tr>
      
      <tr>
         <td align="center">${loginInfo.customer_name } 수정하기<a href="myPageUpdate.me?customerno=${ lists.customerno }"><img style="width: 20px" src="<%=request.getContextPath() %>/resources/img/icon/바퀴.png"></a> </td>   
      </tr>
      <tr>
         <td align="center">${loginInfo.customer_id}</td>                         
      </tr>
      
      <tr>
         <td align="center">${loginInfo.customer_email}</td>
      </tr>
      <tr>
         <td align="center">${loginInfo.customer_hpnumber}</td>
      </tr>
      
   </table>


<%@include file="../../Mainbottom.jsp"  %>
<script type="text/javascript">
$("p.title").on('click',function(){
     $(this).next(".con").slideToggle(100);
   });
</script>


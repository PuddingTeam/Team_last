<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="../../AdminTop.jsp" %>
<%@ include file="../common.jsp" %>
<style type="text/css">
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
  background: gray; 
  color: #fff; 
  border-radius:10px;
  box-sizing: border-box;
}
.con{
  display:none;
}
td{
border-bottom: none;
}
</style>
<script type="text/javascript">
function writeSave(){
   if($('input[name=dj_code]').val()==""){
      alert("테마를 입력하세요.");
      return false;
   }
   if($('input[name=dj_list]:checked').length == 0 ){
      alert("노래를 선택하세요.");
      return false;
   }
}
</script>

   <!-- ****** Breadcumb Area Start ****** -->
   <div class="breadcumb-area" >
      <div class="container h-100">
         <div class="row h-100 align-items-center">
            <div class="col-12">
               <div class="bradcumb-title text-center">
                  <h2>
                     <font>DJ 추가하기</font>
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
            <header>
               <br> <br>
               <h2>DJ</h2>
               <p class="subtitle">DJ 추가하기</p>
            </header>
                        <form action="addDj.ms" method="post" name="Dj" onsubmit="return writeSave()">
            
    <table  align="center" style="width: 100%">
                  <tr><td>
                  
                  <a href="javascript:Dj.submit();">
                  <img alt="저장" height="50px" style="float: right; padding: 10px;" src="<%=request.getContextPath() %>/resources/img/icon/저장.png"></a>
                  <a href="Djlist.ms">
                  <img alt="back" height="50px" style="float: right;" src="<%=request.getContextPath() %>/resources/img/icon/Back.png">
                  </a>
                  </td></tr>
                  <tr>
                     <td>
                     <input type="text" name="dj_code"
                        style="width: 100%; height: 55.98438px;"
                        placeholder="테마를 입력하세요.">
                     </td>
                  </tr>
      <tr>
          <td align="center" rowspan="5">
         <div class="accordion-box">
               <ul class="list">
                 <li>
                     <p class="title">노래 리스트</p>
            <div class="con">
         <table>
         <c:forEach items="${lists }" var="bean" varStatus="status"> 
         <c:if test="${status.count%8==1}"><tr></c:if>
         <c:if test="${status.count%8!=0}">
         <td style="text-align: center; border-bottom: none;">
		<img alt="앨범이미지" height="90px" src="<%=request.getContextPath() %>/resources/imgs/${bean.music_image}"> <BR>
        <font style="font-weight: bold;">  <input type="checkbox" name="dj_list"
                              value="${bean.music_title }" style="height: 30px;"> ${bean.music_title }</font>
         </td> 
         </c:if>
         <c:if test="${status.count%8==0}">
         <td style="text-align: center; border-bottom: none;">
		<img alt="앨범이미지" height="90px" src="<%=request.getContextPath() %>/resources/imgs/${bean.music_image}"> <BR>
        <font style="font-weight: bold;">  <input type="checkbox" name="dj_list"
                              value="${bean.music_title }" style="height: 30px;"> ${bean.music_title }</font>
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
   </table>
</form>
            
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


<script type="text/javascript">
$("p.title").on('click',function(){
     $(this).next(".con").slideToggle(100);
   });
</script>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@include file="../../AdminTop.jsp"%>
   <!-- ****** Header Area End ****** -->
<script type="text/javascript">
function writeSave(){
   
   
   if($('input[name=qna_category]').val()==""){
      alert("카테고리을 입력하세요.");
      return false;
   }
   if($('input[name=qna_qustion]').val()==""){
      alert("질문을 입력하세요.");
      return false;
   }
   if($('textarea[name=qna_answer]').val()==""){
      alert("답을을 입력하세요.");
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
                     <font >QnA 수정하기</font>
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
            <div class="12u" width="100%">
               <section>
                  <header>
                  <br> <br>
                     <h2>QnA 수정</h2>
                  <p class="subtitle">QnA 수정</p>
                  </header>
               <form action="updateqna.ad" onsubmit="return writeSave()" method="post">
                  <table  width="100%"  >
                     <tr>
                     <td style="border-bottom: none;">
                                 <input type="hidden" name="qna_no"  value="${qna.qna_no }">
                        <select name="qna_category" style="width:100%"; title="카테고리 선택하기">
                        <option value="재생" <c:if test="${qna.qna_category eq '재생'}">selected</c:if>>재생</option>
                        <option value="구매" <c:if test="${qna.qna_category eq '구매'}">selected</c:if>>구매</option>
                        <option value="음원" <c:if test="${qna.qna_category eq '음원'}">selected</c:if>>음원</option>
                        <option value="홈페이지" <c:if test="${qna.qna_category eq '홈페이지'}">selected</c:if>>홈페이지</option>
               
               </select>
                                             
                     </tr>
                     <tr>
                     <td style="border-bottom: none;">
                        <input type="text" name="qna_qustion"
                           style="width: 100%; height: 55.98438px;"
                           placeholder="질문 입력하세요." value="${qna.qna_qustion }">
                     </tr>
                     <tr>
                        <td style="height: 430px; border-bottom: none;">
                        <textarea cols="100%"
                              style="resize: none; width: 1200px; height: 406px;"
                              placeholder="답변 입력하세요." name="qna_answer">${qna.qna_answer }</textarea> 
                        </td>                     
                     </tr>
                     <tr>
                        <td colspan="2" style="border-bottom: none;" align="center">
                        <input type="submit" value="수정하기"> 
                         <input type="button" value="목록이동하기" onclick="location.href='addNotice.ad'"> </td>
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
                     Copyright @2018 All rights reserved | This template is made with
                     <i class="fa fa-heart-o" aria-hidden="true"></i> by <a
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
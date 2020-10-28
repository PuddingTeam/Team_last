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
							<font style="text-decoration: underline;">Boarder</font>
						</h2>
					</div>
				</div>
			</div>
		</div>
	</div>
   
   <div id="page">
<script type="text/javascript">
   function goDel(boardno){
      var answer = confirm("정말 삭제하시겠습니까?");
      
      if(answer){
         const result=prompt('비밀번호를 입력하세요');
         if(result){
            location.href="delete.bd?boardno="+${lists.boardno}+"&board_passwd="+result;
         }else{
            history.back();
         }   
      
      }
   }

   function goReDel(recontentno,boardno){
      var answer = confirm("댓글을 정말 삭제하시겠습니까?");
         
         if(answer){
            const result=prompt('비밀번호를 입력하세요');
            if(result){
               location.href="recontentdelete.bd?recontentno="+recontentno+"&board_passwd="+result+"&boardno="+boardno;
            }else{
               alert("비밀번호를 입력해야 합니다");
            }   
         
         }
     }

   function writeSave(){
   	   
   	   
   	   if($('input[name=recontent_passwd]').val()==""){
   	      alert("비밀번호를 입력하세요.");
   	      return false;
   	   }
      
     }

</script>
      <!-- Main -->
 <div id="main" class="container">
			<div class="row">
				<div class="12u" style="width: 100%">
					<section>
						<!-- <header>
						<br>
						
							<h2>Boarder</h2>
						<p class="subtitle">내용 보기</p></header> -->
						<br><br><br>
	<form action="delete.bd?boardno=${lists.boardno}" method="post">
	<table width="100%" align="center">
	<tr >
		<%-- <td  >글번호 </td>
		<td  >${lists.boardno }</td> --%>  
		<td style="font-weight: bolder;  width: 70%"> <font style="font-size: 30px">${lists.board_title }</font> </td>
		<td style="text-align: right;">
		<img style="width: 18px;" src="<%=request.getContextPath() %>/resources/img/icon/user.png"> ${lists.board_writer } &nbsp;&nbsp;
		<img style="width: 18px" src="<%=request.getContextPath() %>/resources/img/icon/눈.png"> ${lists.board_recount } &nbsp;&nbsp;
		<img style="width: 18px" src="<%=request.getContextPath() %>/resources/img/icon/달력.png"> ${lists.board_date }&nbsp;&nbsp;
		<img style="width: 18px" src="<%=request.getContextPath() %>/resources/img/icon/말주머니.png"> ${board_recontent} 
		</td>
		
	</tr>
	<tr>
		<td colspan="2" style="text-align: center; border-bottom: none;">
		<textarea style="resize: none; border-color:gray; border-radius:20px; border-width:0.2em; width: 1000px;overflow:hidden;height: 400px;" readonly="readonly"> ${lists.board_content }</textarea>
		</td>
		
		
	</tr>
	<!-- <tr>
	<td  width="125"  align="center" colspan="1">비밀번호</td>
	<td colspan="3"><input type="text" name="board_passwd" value=""></td>
	</tr> -->
	<tr>
			<td colspan=4 style="border-bottom: none;" align="center"  height="30" >
		            <input type="button" value="글수정" onClick="location.href='update.bd?boardno=${lists.boardno }'">  
            <input type="button" value="글삭제" onClick="goDel(${lists.boardno})" > 
            <input type="button" value="목록보기" onClick="location.href='boarderList.bd'">
			</td>
		</tr>
	
	</table>
	
	</form>

<form method="post" action="recontentinsert.bd" onsubmit="return writeSave()">		<input type="hidden" name="recontent_boardno" value="${lists.boardno }">
		<table style="width: 100%">
		<!-- 글번호 -->
		<tr>
		<td colspan="2" style="border-bottom: none; padding: 0px">
		    <input type="hidden" value="${loginInfo.customer_id }"  name="recontent_writer">
		<img style="width: 50px; padding: 5px" src="<%=request.getContextPath() %>/resources/img/icon/작성자.png">${loginInfo.customer_id }
		&nbsp;&nbsp;&nbsp;&nbsp;
		<img style="width: 18px" src="<%=request.getContextPath() %>/resources/img/icon/자물쇠.png">
		<input type="password"  name="recontent_passwd" style="border:none; width: 104px;" placeholder="비밀번호 입력" value=""></td>
		</tr>
		<tr>
		<td style="align-content: center;">
		<textarea style="overflow:hidden;height: 60px;width: 100%;" placeholder="댓글 내용을 입력하세요." id="abc" name="recontent_content"></textarea>
		</td><td style="padding: 0px; width: 10% "><input type="submit" value="댓글쓰기"></TD>
		</tr>
		</table>
		</form>
			<table style="width: 100%">
	<c:forEach var="recontent" items="${recontent }"> 
				<tr>
				
				<td style="border-bottom: none;">
				<font style="font-weight: bold;" >
				${recontent.recontent_writer }
				</font>
				<font style="font-weight: 200;">
				(${recontent.recontent_date })</font></td>
				<td rowspan=2 style="width: 96px;">
        <%-- <a href="recontentupdate.bd?recontentno=${recontent.recontentno }&boardno=${lists.boardno}">수정</a>  --%>
<a href="recontentupdate.bd?recontentno=${recontent.recontentno }&boardno=${lists.boardno}">
            <img style="width: 18px" src="<%=request.getContextPath() %>/resources/img/icon/수정.png"></a>&nbsp;&nbsp;
            <%--  <a href="recontentdelete.bd?recontentno=${recontent.recontentno }&boardno=${lists.boardno}">삭제</a>  --%>
            <img style="width: 18px" src="<%=request.getContextPath() %>/resources/img/icon/휴지통.png" onclick="goReDel(${recontent.recontentno },${lists.boardno});">

            </td>
            </tr>
            
            <tr>
            <td>${recontent.recontent_content }</td>
            </tr>
         
          </c:forEach>

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
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../inc/header.jsp" %>


<script type="text/javascript">


/* 차량등록 */
$(document).ready(function(){  
   if(${insertMsg != null}){
      alert("${insertMsg}"); 
   }     
});

/* 삭제 */
$(document).ready(function(){  
   if(${isdelProcess != null}){
      alert("${isdelProcess}"); 
   }     
});

$(document).ready(function(){  
   if(${isImagedel != null}){
      alert("${isImagedel}"); 
   }     
});

/* 업데이트 */
$(document).ready(function(){  
   if(${isUpdated != null}){
      alert("${isUpdated}");

   }   
});

$(document).ready(function(){  
   if(${UpdateFail != null}){
      alert("${UpdateFail}"); 
   }     
   
});

/* 이미지등록 완료 */
$(document).ready(function(){  
   if(${imagesRegistOk != null}){
      alert("${imagesRegistOk}"); 
   }     
   
});
</script>

<%
   session.invalidate();
%>




<div class="container carList bg-dark w-90 mt-5 border shadow-sm p-5" >
   <h3 style="color: #fff">등록 차량 목록</h3>
   <table class="table" style="vertical-align:middle; color: #fff;">
      <thead>
         <tr>
            <th><strong>번호</strong></th>
            <th><strong>차량명</strong></th>
            <th><strong>이미지</strong></th>
            <th><strong>가격</strong></th>
            <th><strong>카테고리</strong></th>
            <th><strong>색상</strong></th>
            <th><strong>제조사</strong></th>
            <th><strong>분류</strong></th>
            <!-- <th>차량소개</th> -->
            <th><strong>수정</strong></th>
         </tr>
      </thead>
      <tbody>      
      <c:if test="${vehicleList == null}">
         <tr><td colspan='9'>등록된 차량이 없습니다!</td></tr>
      </c:if>

      <c:forEach var="vDto" items="${vehicleList}">
         <tr>
            <td>${vDto.cNum}</td>            
            <td>${vDto.cName}</td>            
            <td>      
               <img src="${ctx}/resources/file_upload/${vDto.fileName}" style="width:150px">
            </td>
            
            <td> ￦ ${vDto.wprice}원</td>
            <td>${vDto.category_fk}</td>
            <td>${vDto.color}</td>
            <td>${vDto.company}</td>
            <td>${vDto.cSpec}</td>
            <%-- <td>${vDto.contents}</td> --%>
            <td>
               <div class="container" >
               <a href="javaScript:updateVehicle('${vDto.cNum}','${vDto.category_fk}')" style="width: 100% " class="btn btn-outline-white btn-sm m-1" >수정</a>
               <a href="javaScript:deleteVehicle('${vDto.cNum}','${vDto.fileName}')" style="width: 100%" class="btn btn-outline-danger btn-sm m-1">삭제</i></a>
               <a href="imageInput.do?cNum=${vDto.cNum}" style="width: 100%" class="btn btn-outline-white btn-sm m-1">이미지업로드</a>
               </div>               
            </td>
      </c:forEach>
         <tr>
      </tbody>
   </table>
</div>

<!-- 자바스크립트 파라미터 넘겨서 페이지 이동하는기능 -->
<script type="text/javascript">
function updateVehicle(cNum,category_fk){
    var update = window.confirm("차량정보를 수정합니까?");
    if(update) location.href="vehicleUpadte.do?cNum="+cNum+"&category_fk="+category_fk;   
       
 }
</script>


<!-- 자바스크립트 삭제기능  -->
<script type="text/javascript">
   function deleteVehicle(cNum, fileName){
      var isDel = window.confirm("삭제하시겠습니까?");
      if(isDel) location.href="vehicleDelete.do?cNum="+cNum+"&fileName="+fileName;   
   }
</script>



   <!-- JS here -->


    <!-- Jquery Slick , Owl-Carousel Plugins -->
    <script src="${ctx}/resources/assets/js/owl.carousel.min.js"></script>
    <script src="${ctx}/resources/assets/js/slick.min.js"></script>

    <!-- Jquery Plugins, main Jquery -->
    <script src="${ctx}/resources/assets/js/plugins.js"></script>
    <script src="${ctx}/resources/assets/js/main.js"></script>

<%@ include file="../inc/footer.jsp" %>
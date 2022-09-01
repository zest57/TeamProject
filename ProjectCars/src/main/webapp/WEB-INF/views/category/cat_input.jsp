<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../inc/header.jsp" %>

<script type="text/javascript">
   function inputCheck(){
      if(!cat_inputFrm.cat_code.value){
         alert("카테고리 코드를 입력하세요!!!");
         cat_inputFrm.cat_code.focus();
         return;
      }
      if(!cat_inputFrm.cat_name.value){
         alert("카테고리명을 입력하세요!!!");         
         cat_inputFrm.cat_name.focus();
         return;
      }
      
      document.cat_inputFrm.submit();
   }
</script>    
<main>


<div class="container mt-5 d-flex justify-content-center">
      <div class = "w-50 border rounded p-5 shadow bg-dark">
         <form action="catInsert.do" method="post" name="cat_inputFrm">
            <h3 class="text-center">카테고리 등록</h3>
               
            
                        
            <div class="form-group">
               <label for="company">카테고리 코드</label>
               <input type="text" class="form-control" id="cat_code" 
                        placeholder="코드를 입력하세요" name="cat_code">
            </div>
                        
            <div class="form-group">
               <label for="cat_name">카테고리명</label>
               <input type="text" class="form-control" id="cat_name" 
                        placeholder="카테고리명을 입력하세요" name="cat_name">
            </div>
            
            
            
            
            <table class="text-center justify-content-center form-group mt-3 ">
               <tr >
                     <td colspan="2" class="text-center ">
                        <input type="button" class="btn btn-sm btn-outline-white" 
                     value="등록"  onclick="inputCheck()"/>
                    <input style="width: 14%" value="돌아가기" class="btn btn-sm btn-outline-white" onclick="location.href='${ctx}/home.do'"/>   
                     </td>
                    </tr>
               </table>
            
         
         </form>
      </div>
   </div>

</main>
<%@ include file="../inc/footer.jsp" %>    
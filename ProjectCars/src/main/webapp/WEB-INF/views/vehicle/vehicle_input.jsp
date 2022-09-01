<%@page import="kr.mr.model.CategoryDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/header.jsp" %>

<div class="container mt-5 d-flex justify-content-center">
      <div class = "w-50 border rounded p-5 shadow bg-dark">
         <form name="uploadForm" action="<c:url value='/vehicleInsert.do'/>" method="post" enctype="multipart/form-data">
            <h3 class="text-center">차량 등록</h3>
               
            <div class="form-group">
               <label for="category_fk">차종</label>
                  <select class="form-select form-select-sm" name="category_fk">
                  <c:forEach var="dtos" items="${catList}">
                        <option value="${dtos.cat_code}">${dtos.cat_name}[${dtos.cat_code}]</option>
                  </c:forEach>
                  </select>            
            </div>
                        
            <div class="form-group">
               <label for="company">제조사</label>
               <input type="text" class="form-control" id="company" name="company"
                     placeholder="제조사를 입력하세요"/>
            </div>
                        
            <div class="form-group">
               <label for="cName">모델명</label>
               <input type="text" class="form-control" id="cName" name="cName"
                     placeholder="차량명을 입력하세요"/>
            </div>
            <div class="form-group">
               <label for="price">가격</label>
               <input type="text" class="form-control" id="price" name="price"
                     placeholder="가격을 입력하세요"/>
            </div>
   
            <div class="form-group">
               <label for="color">색상</label>
               <select class="form-select form-select-sm" name="color">
                     <option value="블랙" selected>블랙</option>
                     <option value="화이트">화이트</option>
                     <option value="레드">레드</option>
                     <option value="블루">블루</option>
                     <option value="옐로우">옐로우</option>
               </select>
            </div>
            
            <div class="form-group">
               <label for="cSpec">분류</label>
                  <select class="form-select form-select-sm" name="cSpec">
                     <option value="none" selected>일반</option>
                     <option value="hit">인기</option>
                     <option value="recommand">추천</option>
                     <option value="discount">할인</option>
                  </select>
            </div>
            
            <div class="form-group">
               <label for="content">차량소개</label>
               <textarea class="form-control" name="contents" rows="3" placeholder="contents"></textarea>
            </div>
            
            
            
            <div class="form-group">
               <label for="fileName">이미지</label>
               <input class="form-control" type="file" name="uploadFile"/>
            </div>
            
         <table class="text-center justify-content-center form-group mt-3">
         <tr>
               <td colspan="2" class="text-center">
                  <input type="submit" class="text-center btn btn-sm btn-outline-white" value="차량등록"/>
                  <a href="home.do" style="width: 15%" class="text-center btn btn-sm btn-outline-white">메인으로</a>
               </td>
            </tr>
            </table>
         </form>
      </div>
   </div>
   

<%@ include file="../inc/footer.jsp" %>

<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/header.jsp" %>

<!-- Personal CSS -->
<link rel="stylesheet" href="${ctx}/resources/css/vehicle_update.css">

<div class="container bg-dark w-70 mt-5 border shadow-sm p-5" style=" width: 798px;" >
   <h3>차량정보 수정</h3>
   <form name="vehicleFrm" action="vehicleUpdateOk.do" method="post" enctype="multipart/form-data">
      <table class="table table-borderless">
         <tbody>
            <tr>        
               <td style=" width: 20%; color:white;padding-left: 8px;text-align: end;padding-right: 50px;">등록번호</td>
               <td style=" color:white; text-align: left;">
              ${vDto.cNum}
               <input type="hidden" name="cNum" value="${vDto.cNum}"/>                 
               </td>
            </tr>          
            <tr>        
               <td style="width: 20%; color:white;padding-left: 8px;text-align: end;padding-right: 50px;">이미지</td>
            <td>                     
               <div class="form-group" style="text-align: left;">
               
                  <label for="fileName"></label>
                  <img src="${ctx}/resources/file_upload/${vDto.fileName}" style="width:150px">
                   <input class="form-control form-control-sm" type="file" name="uploadFile"/> 
                  <input class="form-control" type="hidden" name="pImageOld" value="${vDto.fileName}"/>
               </div>
            </td>
            </tr>          
            <tr>
               <td style=" width: 20%; color:white;padding-left: 8px;text-align: end;padding-right: 50px;">차종</td>
               <td>
                  <select class="form-select form-select-sm" name="category_fk">
      
                <c:if test="${catList == null}">
               <tr><td colspan='9'>등록된 카테고리가 없습니다!</td></tr>
            </c:if>
                            
                <c:forEach var="cDto" items="${catList}"> 
                             <c:choose>
                             
                                 <c:when test="${cDto.cat_code eq vDto.category_fk}">
                                    <option value="${cDto.cat_code}" selected>
                                       ${cDto.cat_name}
                                    </option>
                                 </c:when>   

                                 <c:otherwise>
                                    <option value="${cDto.cat_code}">
                                          ${cDto.cat_name}
                                    </option>
                                 </c:otherwise>
                                 
                             </c:choose>
                     </c:forEach>
                  </select>
               </td>
            </tr>
            <tr>
               <td style=" color:white;padding-left: 8px;text-align: end;padding-right: 50px;">제조사</td>
               <td>
                  <input class="form-control form-control-sm" type="text" name="company"
                     value="${vDto.company}"/>
               </td>
            </tr>            
            <tr>
               <td style=" color:white;padding-left: 8px;text-align: end;padding-right: 50px;">차량명</td>
               <td>
                  <input class="form-control form-control-sm" type="text" name="cName"
                     value="${vDto.cName}"/>
               </td>
            </tr>            
            <tr>
               <td style=" color:white;padding-left: 8px;text-align: end;padding-right: 50px;">가격</td>
               <td>
                  <input class="form-control form-control-sm" type="text" name="price"
                     value="${vDto.price}"/>
               </td>
            </tr>
            <tr>
               <td style=" color:white;padding-left: 8px;text-align: end;padding-right: 50px;">색상</td>
               <td>
               <c:choose>
                             
               <c:when test="${vDto.color != null}">               
                     <select class="form-select form-select-sm" name="color">
                        <option value="${vDto.color}" selected>
                           기본 : ${vDto.color}
                        </option>
                  <option value="${vDto.color}">----------</option>
                  <option value="블랙">블랙</option>
                  <option value="화이트">화이트</option>
                  <option value="레드">레드</option>
                  <option value="블루">블루</option>
                  <option value="옐로우">옐로우</option>
               </select>
            </c:when>   
            <c:otherwise>
               <select class="form-select form-select-sm" name="color">
                     <option value="블랙" selected>블랙</option>
                     <option value="화이트">화이트</option>
                     <option value="레드">레드</option>
                     <option value="블루">블루</option>
                     <option value="옐로우">옐로우</option>
               </select>                        
            </c:otherwise>   
            
            </c:choose>
               </td>
            </tr>
            <tr>
               <td style=" width: 20%; color:white;padding-left: 8px;text-align: end;padding-right: 50px;">분류</td>
               <td>
            <c:choose>
                             
               <c:when test="${vDto.cSpec != null}">               
                     <select class="form-select form-select-sm" name="cSpec">
                        <option value="${vDto.cSpec}" selected>
                           기본 : ${vDto.cSpec}
                        </option>
                  <option value="${vDto.cSpec}">----------</option>
                     <option value="none">일반</option>
                     <option value="hit">인기</option>
                     <option value="recommand">추천</option>
                     <option value="discount">할인</option>
               </select>
            </c:when>   
            <c:otherwise>
               <select class="form-select form-select-sm" name="cSpec">
                     <option value="none">일반</option>
                     <option value="hit">인기</option>
                     <option value="recommand">추천</option>
                     <option value="discount">할인</option>
               </select>                        
            </c:otherwise>   
            
            </c:choose>
               </td>
            </tr>
            <tr>
               <td style=" width: 20%; color:white;padding-left: 8px;text-align: end;padding-right: 50px;">차량소개</td>
               <td>
               <textarea class="form-control" name="contents" rows="3"             
               placeholder="설명을 입력하세요 ">${vDto.contents}</textarea>
               </td>
            </tr>       
            <tr>
               <td colspan="2" class="text-center">
                  <input type="submit" class="btn btn-sm btn-outline-white" value="수정"/>
                  <a href="vehicleList.do" class="btn btn-sm btn-outline-white">목록</a>
               </td>
            </tr>
         </tbody>
      </table>
   </form>

</div>

<%@ include file="../inc/footer.jsp" %>
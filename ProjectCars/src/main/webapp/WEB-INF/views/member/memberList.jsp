<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="ctx" value="${pageContext.request.contextPath}"/>
    
<%@ include file="../inc/header.jsp" %>


<style>
	a{
		color:#fff;
	}
	
	a:hover{
		color:#c36f51;
	}
</style>


<div class="container carList bg-dark w-90 mt-5 border shadow-sm p-5" >
   <h3 style="color: #fff">회원 리스트</h3>
   <table class="table p-10" style="vertical-align:middle; color: #fff;">
      <thead>
         <tr>               
            <th><strong>번호</strong></th>  
            <th><strong>아이디</strong></th>
            <th><strong>비밀번호</strong></th><!-- 추후 블러처리하거나 제외하기 -->
            <th><strong>이름</strong></th>  
            <th><strong>나이</strong></th>  
            <th><strong>이메일</strong></th>
            <th><strong>전화번호</strong></th>
            <th><strong>우편번호</strong></th>
            <th><strong>주소</strong></th>
<!--             
            <th>도로명주소</th>
            <th>지번주소</th>
-->
            <th><strong>삭제</strong></th> 
         </tr>      
      </thead>
      <tbody>      
      

      <c:forEach var="dto" items="${list}">
         <tr>
            <td>${dto.no}</td>
            <td><a href="memberInfo.do?no=${dto.no}">${dto.id}</a></td>
            <td>${dto.pw}</td>
            <td>${dto.name}</td>
            <td>${dto.age}</td>
            <td>${dto.email}</td>
            <td>${dto.tel}</td>
            <td>${dto.zipcode}</td>
            <td>${dto.jibunAddr} / ${dto.detailAddr}</td>
            <td>
<%--             <input type="button" value="삭제" class="btn btn-sm btn-outline-danger" 
                  onclick="deleteMem(${dto.no})" disabled/> --%>
            <a class="btn btn-sm btn-outline-danger" 
                  onclick="deleteMem(${dto.no})" disabled>삭제</a>
             </td>
         </tr>            
      </c:forEach>
         <tr>
      </tbody>
   </table>
</div>

<%@ include file="../inc/footer.jsp" %>
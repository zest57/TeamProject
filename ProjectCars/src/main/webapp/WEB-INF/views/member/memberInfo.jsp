<%@page import="kr.mr.model.MemberDTO"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
 
<c:set var="ctx" value="${pageContext.request.contextPath}"/>    
<%
	MemberDTO dto =(MemberDTO)request.getAttribute("dto");
%>
    
<%@ include file="../inc/header.jsp" %>
<div class="container_info mt-3">
	<div class="container bg-dark mt-5 border shadow-sm p-5" style="width:400px;">                            
		<form action='${ctx}/memberUpdate.do' method='post'>  
			<input type='hidden' name='no' value="<%=dto.getNo()%>">
			<table class='table'>                                   
			<tbody style="color:#fff;">                                                 
				<tr>                                                
					<td colspan='2' style="font-size:24px;"><b><%=dto.getName()%></b><strong>회원 정보</strong></td>
				</tr>                           
				<tr>                            
					<td><strong>번호</strong></td>               
					<td><%=dto.getNo()%></td>    
				</tr>                           
				<tr>                            
					<td><strong>아이디</strong></td>             
					<td><%=dto.getId()%></td>    
				</tr>                           
				<tr>                            
					<td><strong>비밀번호</strong></td>           
					<td><%=dto.getPw()%></td>    
				</tr>                           
				<tr>                            
					<td><strong>이름</strong></td>               
					<td><%=dto.getName()%></td>  
				</tr>                           
				<tr>                            
					<td><strong>나이</strong></td>               
					<td><input type='text' name='age' value="<%=dto.getAge()%>"></td>          
				</tr>                                         
				<tr>                                          
					<td><strong>이메일</strong></td>                           
					<td><input type='text' name='email' value="<%=dto.getEmail()%>"></td>        
				</tr>                                
				<tr>                                 
					<td><strong>전화번호</strong></td>                
					<td><input type='text' name='tel' value="<%=dto.getTel()%>"></td>        
				</tr>                                             
				<tr>                                              
					<td colspan='2' align='center'>
						<input type='submit' value='수정하기' class='btn btn-sm btn-outline-white'/>
						<input type='reset' value='취소' class='btn btn-sm btn-outline-danger'/>         
						<a href='memberList.do' class='btn btn-sm btn-outline-white'>리스트</a>
					</td>                                            
				</tr>                                                
			</tbody>                                                
			</table>                                                
		</form>                                                 
	</div>
</div>
<%@ include file="../inc/footer.jsp" %>




<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../inc/header.jsp" %>






<!-- Personal CSS -->
<link rel="stylesheet" href="${ctx}/resources/css/myPageList.css">



<script type="text/javascript">

function delMsg(){
	window.confirm("삭제.. 할건가요??");
	document.location.href="#";
}
</script>



<body style="background-color:#111; color:#fff">
<div id="myPageList">
<div class="layout">
	<div class="container">
		<div class="container mt-3" style="">
			<div class="mt-3 mb-3 p-3 text-white rounded" style="background-color: rgba(70, 70, 70, 0.5)">
			  <h1><i class="xi-paper"></i>&nbsp;위시리스트</h1> 
			</div>
		</div>

	
			<div class="wish_header  mt-3 d-flex" style="justify-content: space-between;">
						<h2><i class="xi-heart"></i> &nbsp;위시리스트</h2>
					</div>
					
						<c:if test="${wishList == null}">    
							<div>위시리스트가 없습니다.</div>
						</c:if>		
										          
					<table class="table mt-3" style="color:#fff;">
					  <thead>
						<tr>
						  <th>사진</th>
						  <th>차량정보</th>
						  <th>가격</th>
						  <th>예약하기</th>
						  <th>삭제</th>
						</tr>
					  </thead>
					  <tbody>
						<c:if test="${wishList != null}">
      					<c:forEach var="wDtos" items="${wishList}">					  
						<tr>
						  <td>
							<img style="widows: 140px; height: 120px" src="${ctx}/resources/file_upload/${wDtos.fileName}">
						  </td>
						  <td>
							<p>${wDtos.company} ${wDtos.cName}</p>
						  </td>
						  <td>
						  	￦ ${wDtos.wprice}원
						  </td>
						  	
						  
							<td class="col-3" id="close_btn" style="width:250px">
					    		<button class="close" onclick="location.href='rentalSelector.do?cNum=${wDtos.cNum}&id=${wDtos.id}'">
					    			예약하기
					    		</button>
						  	</td>
						
							
							<td class="col-3" id="close_btn" style="width:250px">
								<button  class="close" onclick="location.href='deleteWishListPage.do?cNum=${wDtos.cNum}&id=${wDtos.id}'; javascript:delMsg()">
									삭제
								</button>								 
							</td>
							
							
						</tr>
						</c:forEach>
						</c:if>
					</tbody>
				</table>
	
				
			  
		</div>
	</div>
</div>
</body>

<%@ include file="../inc/footer.jsp" %>



 
 
 
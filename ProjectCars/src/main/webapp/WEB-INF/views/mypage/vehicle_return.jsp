<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../inc/header.jsp" %>






<!-- Personal CSS -->
<link rel="stylesheet" href="${ctx}/resources/css/myPageList.css">

<script type="text/javascript">

const mId = "<%=(String)session.getAttribute("userId")%>"



	function showMsg(){
		let confirm = window.confirm("반납합니까?");
		if(confirm == true){
		document.location.href="vehicleReturnOk.do?mId="+mId;
		}
	}

</script>

<body style="background-color:#111; color:#fff">
<div id="myPageList">
<div class="layout">
	<div class="container">
		<div class="container mt-3" style="">
			<div class="mt-3 mb-3 p-3 text-white rounded" style="background-color: rgba(70, 70, 70, 0.5)">
			  <h1><i class="xi-paper"></i>&nbsp;차량반납</h1> 
			</div>
		</div>

	
			<c:if test="${member.isRented == null or hDto == null}">
			<div class="container mt-5">
				<h2><i class="xi-cart-o"></i> &nbsp;차량 반납</h2>            
				<table class="table mt-3" style="color:#fff">
					  <thead>
						<tr>
						  <th>사진</th>
						  <th>차량명</th>
						  <th>반납</th>
						</tr>
					  </thead>
				</table>
						<h2 class="text-center">진행중인 주문내역이 없습니다.</h2>
					<table class="table mt-3" style="color:#fff">
					  <thead>
						<tr>
						  <th></th>				
						</tr>
					  </thead>
				</table>	

				</div>
				</c:if>
				
			<c:if test="${member.isRented != null and hDto != null}">
			<div class="container mt-5">
				<h2><i class="xi-cart-o"></i> &nbsp;나의 예약정보</h2>            
				<table class="table mt-3" style="color:#fff">
					  <thead>
						<tr>
						  <th>사진</th>
						  <th>차량명</th>
						  <th>사용기간</th>
						  <th>총 금액</th>
						  <th>반납</th>
						</tr>
					  </thead>
					  <tbody>
							<tr>
							  <td style="align-items-middle">
								<img style="widows: 160px; height: 140px" src="${ctx}/resources/file_upload/${hDto.fileName}">
						  	  </td>							  
							  <td>${hDto.cName}</td>
							  <td>${hDto.dateCnt}일</td>
							  <td>${hDto.wtotalPrice}원</td>
							  <td>
							     <div id="close_btn">
								 	<button class="close" onclick="location.href='#'; javascript:showMsg()">차량반납</button>
								 </div>
							  </td>
							</tr>
					</tbody>
				</table>
				</div>
				</c:if>
			  
		</div>
	</div>
</div>
</body>

<%@ include file="../inc/footer.jsp" %>








<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../inc/header.jsp" %>


<script type="text/javascript">


</script>




<div class="container carList bg-dark w-90 mt-5 border shadow-sm p-5" style="width:1000px;">
	<h3 style="color: #fff">렌트 현황</h3>
	<table class="table" style="vertical-align:middle; color: #fff;">
		<thead>
			<tr>
				<th><strong>차량번호</strong></th>
				<th><strong>차량명</strong></th>
				<th><strong>이름</strong></th>
				<th><strong>전화</strong></th>
				<th><strong>렌트일</strong></th>
				<th><strong>반납일</strong></th>
				<th><strong>총가격</strong></th>
				
			</tr>
		</thead>
		<tbody>		
		<c:if test="${reservationList == null}">
			<tr><td colspan='9'>등록된 차량이 없습니다!</td></tr>
		</c:if>

		<c:forEach var="hDto" items="${reservationList}">
			<tr>
				<td>${hDto.cNum}</td>				
				<td>${hDto.cName}</td>				
				<td>${hDto.revName}</td>				
				<td>${hDto.revTel}</td>				
				<td>${hDto.revDate1}</td>				
				<td>${hDto.revDate2}</td>				
				<td>${hDto.wtotalPrice}원</td>				
				
						
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
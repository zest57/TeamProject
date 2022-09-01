<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@ include file="../inc/header.jsp" %>

<link rel="stylesheet" href="${ctx}/resources/css/myWishList.css?myWishList">
<link rel="stylesheet" href="${ctx}/resources/js/myWishList.js?myWishList">

<script type="text/javascript">

	function delMsg(){
		alert("삭제.. 할건가요??");
		document.location.href="#";
	}
	
</script>

<div id="myWishList">

<!--<div class="container mt-3">
		<div class="mt-3 mb-3 p-3 bg-secondary text-white rounded">
			 <h1><i class="xi-emoticon-happy-o"></i>&nbsp;위시리스트</h1> 
		</div>
	</div> -->
	<div class="container mt-3">
			<div class="mt-3 mb-3 p-3 text-white rounded" style="background-color: rgba(70, 70, 70, 0.5)">
			  <h1><i class="xi-heart"></i>&nbsp;위시리스트</h1> 
			</div>
		</div>
	
	

	<div class="container">

		<section id="cart" class="mt-5"> 
		
		<c:if test="${wishList == null}">    
			<div>위시리스트가 없습니다.</div>
		</c:if>		
		
		
		<c:if test="${wishList != null}">
      	<c:forEach var="wDtos" items="${wishList}">
			<article class="product">
				<header>
					<a class="remove" onclick="location.href='#'; javascript:delMsg()">
						<img src="${ctx}/resources/image/cars/람보르기니  가야도르.jpg" alt="#">

						<h3>Remove product</h3>
					</a>
				</header>

				<div class="content">

					<h1>{wDtos.cName}</h1>
					<h1>{wDtos.company}</h1>

				</div>

				<footer class="content">
					
					<h2 class="full-price">
						
						<div class="frame">
					    	<button class="custom-btn btn-5" onclick="location.href='rentalSelector.do'"><span>예약하기</span></button>
					    </div>
					</h2>
					<h2 class="price">
						{wDtos.price}
					</h2>
					
				</footer>
			</article>
			</c:forEach>
			</c:if>
		</section>
	</div>

</div>

<%@ include file="../inc/footer.jsp" %>

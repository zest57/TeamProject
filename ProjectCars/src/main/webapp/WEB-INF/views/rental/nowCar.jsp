<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <link rel="shortcut icon" href="resources/image/portfolio/favicon.ico">
    <title>Profile Bootstrap Theme</title>

    <!-- Global stylesheets -->
    <link href="resources/css/bootstrap/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Saira+Extra+Condensed:100,200,300,400,500,600,700,800,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
    <link href="resources/font-awesome/css/font-awesome.min.css" rel="stylesheet">
</head>
<%@ include file="../inc/header.jsp" %>

<link href="resources/css/rent_page.css" rel="stylesheet">
<link href="resources/css/font.css" rel="stylesheet">



<style>
/*클릭 이벤트를 포함하는 모든 영역에 추가하면 하위 이벤트까지 작동안함.*/

#element{
	pointer-events:cursor;
}

#element:focus{
	pointer-events: none;
}
 
#element:hover {
	
	pointer-events: none;
} 

h1,h2,h3,h4,h5,h6,p{
font-family: LeferiPoint-WhiteObliqueA;
}
</style>








<body id="page-top">
    
    <%-- <nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top" id="sideNav">
        <a class="navbar-brand js-scroll-trigger" href="#page-top">
          <span class="d-block d-lg-none  mx-0 px-0"><img src="resources/image/portfolio/logo-white.png" alt="" class="img-fluid"></span>
          <span class="d-none d-lg-block">
            <img class="img-fluid img-profile rounded-circle mx-auto mb-2" src="resources/image/logo/logo.png" alt="">
          </span>
        </a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav">
                 <li class="nav-item">
                      <a class="nav-link js-scroll-trigger" href="#about">최신</a>
                  </li>
                  <li class="nav-item">
                      <a class="nav-link js-scroll-trigger" href="#experience">인기</a>
                  </li>
                  <li class="nav-item">
                      <a class="nav-link js-scroll-trigger" href="#portfolio"><c:if test="${vehicleList == null}">
                  등록된 차량이 없습니다!
               </c:if>    </a>
                  </li> 
                  <!-- <li class="nav-item">
                      <a class="nav-link js-scroll-trigger" href="#skills">Skills</a>
                  </li>
                  <li class="nav-item">
                      <a class="nav-link js-scroll-trigger" href="#awards">Awards</a>
                  </li>
                  <li class="nav-item">
                      <a class="nav-link js-scroll-trigger" href="#contact">Contact</a>
                  </li> -->
              </ul>
          </div>
      </nav> --%>
      


      <div class="container-fluid p-0">
    <!--====================================================
                        PORTFOLIO
    ======================================================-->  
     
        <section class="resume-section p-3 p-lg-5 d-flex  flex-column" id="portfolio"> 
            <div class="row my-auto">
                <div class="col-12">
                <h2 class="  text-center">Now Rental</h2>
                <div class="mb-5 heading-border"></div>
                </div>
                <div class="col-md-12">
                <div class="port-head-cont">
                    <button class="btn btn-general btn-green filter-b" data-filter="all">All</button>
                    <button class="btn btn-general btn-green filter-b" data-filter="100">스포츠 카 </button>
                    <button class="btn btn-general btn-green filter-b" data-filter="200">세단</button> 
                    <button class="btn btn-general btn-green filter-b" data-filter="300">S U V</button>
                    <button class="btn btn-general btn-green filter-b" data-filter="400">전기차</button> 
                              
                </div>
                </div>
            </div>
            
            <div class="row my-auto" style=" padding-left:120px; padding-right:120px;">
            <c:forEach var="vDto" items="${vehicleList}"> 
            <c:if test="${vDto.status != 'Y'}">  
                <div class="col-sm-4 portfolio-item filter ${vDto.category_fk}">
                    <a class="portfolio-link" href="#portfolioModal${vDto.cNum}" data-toggle="modal"> 
                        
                        <div class="caption-port">
                           
                     <div class="simpletxt">

                        <h3 class="name">${vDto.cName}</h3>
                        <p style="margin:15px; white-space: nowrap; overflow:hidden; text-overflow:ellipsis; ">"${vDto.contents}"</p>
                         <h4 class="price"> ￦ ${vDto.wprice}원</h4>
                         <button>READ MORE</button><br>
                         <div class="wishtxt">
                            <p class="paragraph1"> Add to Wishlist <span class="glyphicon glyphicon-heart"></span> </p>
                            <p class="paragraph2">Compare <span class="icon"><img src="image/compicon.png" alt="compicon"></span></p>
                         </div>
                     </div>
                        </div>
                        <img class="img-fluid" src="${ctx}/resources/file_upload/${vDto.fileName}" style="max-width: 100%; min-width:150px; max-height:auto; min-height: 300px; margin:auto; ">  
                    </a> 
                </div>
             </c:if>  
             
            
            
            
            </c:forEach> 
            </div> 
        </section>
      </div>

<!--====================================================
                    PORTFOLIO MODALS
======================================================-->
<c:forEach var="vDto" items="${vehicleList}"> 
<div class="portfolio-modal modal fade" id="portfolioModal${vDto.cNum}" tabindex="-1" role="dialog" aria-hidden="true" >
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl"></div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                        <div class="modal-body">
                            <div class="title-bar">
                              <div class="col-md-12">
                                <h2 class="text-center">Car Info</h2>
                                <div class="heading-border"></div>
                              </div>
                            </div>

                            <div class="row">
                              <div class="col-md-6">
                                <img class="img-fluid img-centered" src="${ctx}/resources/file_upload/${vDto.fileName}" alt="">
                              </div>
                        <p style="margin:15px; overflow:hidden; text-overflow:ellipsis; ">${vDto.contents}</p>
                                <ul class="list-inline item-details">
                                    <li>차종:
                                        <strong>
                                        	<c:if test="${vDto.category_fk eq '100'}">                                     
                                          		<a href="#">스포츠카</a>
                                          	</c:if>
                                        	<c:if test="${vDto.category_fk eq '200'}">                                     
                                          		<a href="#">세단</a>
                                          	</c:if>
                                        	<c:if test="${vDto.category_fk eq '300'}">                                     
                                          		<a href="#">SUV</a>
                                          	</c:if>
                                        	<c:if test="${vDto.category_fk eq '400'}">                                     
                                          		<a href="#">전기차</a>
                                          	</c:if>
                                        </strong>
                                    </li>
                                    <li>제조사:
                                        <strong>
                                          <a href="#">${vDto.company}</a>
                                        </strong>
                                    </li>
                                    <li>가격:
                                        <strong>
                                          <a href="#">￦ ${vDto.price}원</a>
                                        </strong>
                                    </li>
                                </ul>
                                
                               <div class="col-md-6">
                              <!-- 렌트가능 -->
<%--                               	<c:if test="${sessionScope.userId != null && vDto.status != 'Y'}">
                                <button onclick="location.href='oneDayRev.do?cNum=${vDto.cNum}'" class="btn btn-general btn-white" type="submit" data-dismiss="modal">
                                    <i class="fa-solid fa-car-side"></i>렌트하기
                                </button>
                                <button onclick="location.href='wishList.do?cNum=${vDto.cNum}&id=${sessionScope.userId}'" class="btn btn-general btn-white" type="submit" data-dismiss="modal">
                                    <i class="fa-solid fa-heart"></i>관심상품
                                </button>                                 
                                </c:if> --%>
                                
                              	<c:if test="${sessionScope.userId != null && mDto.isRented == 'Y'}">
                                <button onclick="alert('회원님은 이미 예약한 차량이 있습니다.')" class="btn btn-general btn-white" type="submit" data-dismiss="modal">
                                    <i class="fa-solid fa-car-side"></i>렌트하기
                                </button>
                                <button onclick="location.href='wishList.do?cNum=${vDto.cNum}&id=${sessionScope.userId}'" class="btn btn-general btn-white" type="submit" data-dismiss="modal">
                                    <i class="fa-solid fa-heart"></i>관심상품
                                </button>                                 
                                </c:if>
                                
                              	<c:if test="${sessionScope.userId != null && mDto.isRented != 'Y'}">
                                <button onclick="location.href='nowRev.do?cNum=${vDto.cNum}'" class="btn btn-general btn-white" type="submit" data-dismiss="modal">
                                    <i class="fa-solid fa-car-side"></i>렌트하기
                                </button>
                                <button onclick="location.href='wishList.do?cNum=${vDto.cNum}&id=${sessionScope.userId}'" class="btn btn-general btn-white" type="submit" data-dismiss="modal">
                                    <i class="fa-solid fa-heart"></i>관심상품
                                </button>                                 
                                </c:if>
                               
                                
                              	<c:if test="${sessionScope.userId == null}">
                                <button onclick="javascript:LoginValid()" class="btn btn-general btn-white" type="submit" data-dismiss="modal">
                                    <i class="fa-solid fa-car-side"></i>렌트하기
                                </button>
                                <button onclick="alert('해당 기능은 로그인을 해야 이용 가능합니다'); location.href='memberLogin.do'" class="btn btn-general btn-white" type="submit" data-dismiss="modal">
                                    <i class="fa-solid fa-heart"></i>관심상품
                                </button>                                   
                               
                                </c:if>

                            </div>
                          </div>
                        </div>
                </div>
            </div>
        </div>
    </div>
  </div>
   </div>  
  </c:forEach> 

  <!-- Global javascript -->
  <script src="resources/js/jquery/jquery.min.js"></script>
  <script src="resources/js/bootstrap/bootstrap.bundle.min.js"></script>
  <script>
    $(document).ready(function(){

    $(".filter-b").click(function(){
        var value = $(this).attr('data-filter');
        if(value == "all")
        { 
            $('.filter').show('1000');
        }
        else
        { 
            $(".filter").not('.'+value).hide('3000');
            $('.filter').filter('.'+value).show('3000');
        }
    });
    
    if ($(".filter-b").removeClass("active")) {
      $(this).removeClass("active");
    }
    $(this).addClass("active");
    });

    // SKILLS
    $(function () {
        $('.counter').counterUp({
            delay: 10,
            time: 2000
        });

    });
</script> 


</body>
</html>

<script type="text/javascript">
    function goCart(){
        document.infoFrm.action=""
        document.infoFrm.submit();
    }

    function showMsg(){
        alert("로그인이 필요합니다!!")
    }
    
    
    function LoginValid() {
    	alert('차량 예약에는 로그인이 필요합니다.')
    	document.location.href='memberLogin.do'
	}
    
    

</script>


        
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



h1,h2,h3,h4,h5,h6,p{
font-family: LeferiPoint-WhiteObliqueA;

font-size: 30px;



}
</style>








<body id="page-top">
    
    
      


      <div class="container-fluid p-0">
    <!--====================================================
                        PORTFOLIO
    ======================================================-->  
     
        <section class="resume-section p-3 p-lg-5 d-flex  flex-column" id="portfolio"> 
            <div class="row my-auto">
                <div class="col-md-12">
                <div class="port-head-cont"style=" font-family: 'LeferiPoint-WhiteObliqueA';">
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
                    <a class="portfolio-link" href="vehicleRental.do?cNum=${vDto.cNum}&cSpec='recommand'" > 
                        
                    <div class="caption-port">
                           
                     <div class="simpletxt">

		                      <div>
		                        <h2 style="text-align: center;color: #c36f51;padding-top: 15px;margin-top: 20px; opacity: 0.7;" class="text-white p-1">${vDto.cName}</h2>
		                     </div>
                       
                       
                      <%--   <p style="margin:15px; white-space: nowrap; overflow:hidden; text-overflow:ellipsis; ">"${vDto.contents}"</p> --%>
                        
                        <%--  <h4 class="price"> ￦ ${vDto.wprice}원</h4> --%>
                         

                         <button>READ MORE</button><br>
                         <h3 class="name">ParamountMotors</h3>
                         
                         <!-- <div class="wishtxt">
                            <p class="paragraph1"> Add to Wishlist <span class="glyphicon glyphicon-heart"></span> </p>
                            <p class="paragraph2">Compare <span class="icon"><img src="image/compicon.png" alt="compicon"></span></p>
                         </div> -->
                     </div>
                        </div>
                        <img class="img-fluid" src="${ctx}/resources/file_upload/${vDto.fileName}" style="max-width: 100%; min-width:150px; max-height:auto; min-height: 300px; margin:auto; ">  
                    </a> 
                </div>
             </c:if>  
             
            <c:if test="${vDto.status == 'Y'}">  
                <div id="element" class="col-sm-4 portfolio-item filter ${vDto.category_fk}">
                    <a class="portfolio-link" href="vehicleRental.do?cNum=${vDto.cNum}" > 
                        
                        <div class="caption-port" style="opacity: 1;">
                           
		                     <div>
		                        <h2 style="text-align: center;color: #c36f51;padding-top: 15px;margin-top: 25px; opacity: 0.7;" class="text-white p-1">BEING RENTED</h2>
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


        
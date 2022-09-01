<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

   
<!-- 렌트카 차량소개-->
<div class="contatiner sentence text-center m-0 p-0">
   <h3>Product Introduce</h3>
   <p>2022년 신차 입고 / 1일렌트 / 사고대차 / 장기렌트</p>
</div>

<!-- CSS -->

    <link rel="stylesheet" href="${ctx}/resources/assets/css/owl.carousel.min.css" />
    <link rel="stylesheet" href="${ctx}/resources/assets/css/themify-icons.css" />
    <link rel="stylesheet" href="${ctx}/resources/assets/css/style.css" />
    
    <!-- MyCss -->
   <link rel="stylesheet" href="${ctx}/resources/css/font.css">
    <link rel="stylesheet" href="${ctx}/resources/css/car_main.css?carMain">
   <link rel="stylesheet" href="${ctx}/resources/css/main.css">
   

<!-- 슬라이더 -->





<!--? instagram-social start -->
    <div class="instagram-area fix">
      <div class="instagram-area fix" style="width:1320px; margin:auto;">
        <div class="row">
          <div class="col-xl-12">
            <div class="instagram-active owl-carousel">
			 <c:forEach var="vDto" items="${vehicleList}">
               <div class="single-instagram me-4 Border-radius">
				<c:if test="${vDto.status != 'Y'}">                 
                 <img src="${ctx}/resources/file_upload/${vDto.fileName}" 
                 style="max-width: 100%; min-width:150px; max-height:auto; min-height: 300px;">
                 <!-- <a href="#"><i class="ti-instagram"></i></a> -->
                 <a  href="vehicleRental.do?cNum=${vDto.cNum}&cSpec='${vDto.cSpec}'"><i><h2>${vDto.company}</h2><h6>${vDto.cName}</h6></i></a>                               
                </c:if>
				<c:if test="${vDto.status == 'Y'}">                 
                 <img src="${ctx}/resources/file_upload/${vDto.fileName}" 
                 style=" opacity: 0.5 ; max-width: 100%; min-width:150px; max-height:auto; min-height: 300px;">
                 <!-- <a href="#"><i class="ti-instagram"></i></a> -->
                 <a  href="vehicleRental.do?cNum=${vDto.cNum}&cSpec='${vDto.cSpec}'"><i><h1>BEING RENTED</h1></i></a>                               
                </c:if>
               </div>
			 </c:forEach>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- instagram-social End -->








<%-- <!--? instagram-social start -->
    <div class="instagram-area fix" style="width:1320px; margin:auto;">
      <div class="container-fluid p-0">
        <div class="row">
          <div class="col-xl-12">
            <div class="instagram-active owl-carousel">
			 <c:forEach var="vDto" items="${vehicleList}">
               <div class="single-instagram me-4 Border-radius">
				<c:if test="${vDto.status != 'Y'}">                 
                 <img src="${ctx}/resources/file_upload/${vDto.fileName}" 
                 style="max-width: 100%; min-width:150px; max-height:auto; min-height: 300px;">
                 <!-- <a href="#"><i class="ti-instagram"></i></a> -->
                 <a  href="vehicleRental.do?cNum=${vDto.cNum}&cSpec='${vDto.cSpec}'"><i><h2>${vDto.company}</h2><h6>${vDto.cName}</h6></i></a>                               
                </c:if>
				<c:if test="${vDto.status == 'Y'}">                 
                 <img src="${ctx}/resources/file_upload/${vDto.fileName}" 
                 style=" opacity: 0.5 ; max-width: 100%; min-width:150px; max-height:auto; min-height: 300px;">
                 <!-- <a href="#"><i class="ti-instagram"></i></a> -->
                 <a  href="vehicleRental.do?cNum=${vDto.cNum}&cSpec='${vDto.cSpec}'"><i><h1>렌트중</h1></i></a>                               
                </c:if>
               </div>
			 </c:forEach>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- instagram-social End --> --%>






<br/>
<br/>
<br/>

<!-- 렌트카 차량소개-->
<div class="contatiner sentence text-center m-0 p-0">
   <h3>Company Policy</h3>
   <p>유의사항/안내사항</p>
</div>

<div id="sectionNotice">
    <section class="section" id="blog">
        <div class="container">
            <div class="row">
                <div class="col-lg-4">
                    <div class="blog-grid">
                        <div class="blog-img">     
                            <a href="#">
                                <img src="${ctx}/resources/image/carMain/Information.jpg" style="width: 500px; height: 300px" title="" alt="">
                            </a>
                        </div>
                        <div class="blog-info">
                            <h5 style="color:#111"><strong>보험/유의사항</strong></h5>
                            <p>렌트시 필요한 보험 및 유의사항 안내</p>
                            <div class="btn-bar">
                                <a href="noticeList.do" class="px-btn-arrow">
                                    <span style="color:#c36f51;"><strong>Read More</strong></span>
                                    <i class="arrow" style="color:#c36f51;"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="blog-grid">
                        <div class="blog-img">
                            <a href="#">
                                <img src="${ctx}/resources/image/carMain/DayRent.jpg" style="width: 500px; height: 300px" title="" alt="">
                            </a>
                        </div>
                        <div class="blog-info">
                            <h5 style="color:#111"><strong>1일렌트 안내사항</strong></h5>
                            <p>1일렌트 렌트카 대여 조건 및 안내사항</p>
                            <div class="btn-bar">
                                <a href="noticeDayRent.do" class="px-btn-arrow">
                                    <span style="color:#c36f51;"><strong>Read More</strong></span>
                                    <i class="arrow" style="color:#c36f51;"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="blog-grid">
                        <div class="blog-img">
                            <a href="#">
                                <img src="${ctx}/resources/image/carMain/LongRent.jpg" style="width: 500px; height: 300px" title="" alt="">
                            </a>
                        </div>
                        <div class="blog-info">
                            <h5 style="color:#111"><strong>장기렌트 안내사항</strong></h5>
                            <p>장기렌트 렌트카 대여 조건 및 안내사항</p>
                            <div class="btn-bar">
                                <a href="noticeLongRent.do" class="px-btn-arrow">
                                    <span style="color:#c36f51;"><strong>Read More</strong></span>
                                    <i class="arrow" style="color:#c36f51;"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>

<!-- QNA -->

<div class="contatiner sentence text-center m-0 p-0">
   <h3>Q&A</h3>
   <p>자주묻는질문 / 보험사</p>
</div>


<div class="section2 d-flex" style="width:1340px; margin: auto;">

<div id="sectionFAQ" class="FAQ" style="width:660px; height:450px; margin: auto;">
    <div class="FAQcard">
       <h5 class="card-header">자주묻는질문</h5>
    </div>
   <div class="card-body">
      <div class="accordion accordion-flush" id="accordionFlushExample">
       
      <div class="accordion-item">
        <h2 class="accordion-header" id="flush-heading1">
          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapse1" aria-expanded="false" aria-controls="flush-collapse1">
            Q.보증금은 계약 종료 후 돌려받을 수 있나요?
          </button>
        </h2>
        <div id="flush-collapse1" class="accordion-collapse collapse" aria-labelledby="flush-heading1" data-bs-parent="#accordionFlushExample">
          <div class="accordion-body" style="color:#fff">
            A. 보증금은 계약 종료시 환급받으실 수 있고, 차량 인수시 인수비용에서 <code style="color:#c36f51;">보증금을 뺀 나머지 금액</code> 만 납부하시면 인수 가능합니다.
          </div>
        </div>
      </div>
      
      <div class="accordion-item">
        <h2 class="accordion-header" id="flush-heading2">
          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapse2" aria-expanded="false" aria-controls="flush-collapse2">
            Q.만기 시 인수방법은 어떻게 되나요?
          </button>
        </h2>
        <div id="flush-collapse2" class="accordion-collapse collapse" aria-labelledby="flush-heading2" data-bs-parent="#accordionFlushExample">
          <div class="accordion-body" style="color:#fff">
            A. 계약 시 제시되는 차량의 잔가만 납부하시면 인수 가능합니다.
          </div>
        </div>
      </div>
      
      <div class="accordion-item">
        <h2 class="accordion-header" id="flush-heading3">
          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapse3" aria-expanded="false" aria-controls="flush-collapse3">
            Q.렌트카 운전 가능범위를 알고 싶어요
          </button>
        </h2>
        <div id="flush-collapse3" class="accordion-collapse collapse" aria-labelledby="flush-heading3" data-bs-parent="#accordionFlushExample">
          <div class="accordion-body" style="color:#fff">
            A. 개인 : 계약자 본인, 계약자 직계가족, 계약자 지정인(<code style="color:#c36f51;">2인까지 가능</code>)
            사업자 : 계약자 본인, 계약자 직계가족, 사업체/법인의 임직원, 계약자 지정인(<code style="color:#c36f51;">2인까지 가능</code>)
          </div>
        </div>
      </div>
      
      <div class="accordion-item">
        <h2 class="accordion-header" id="flush-heading4">
          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapse4" aria-expanded="false" aria-controls="flush-collapse4">
            Q.장기렌트 이용 중 사고 시에 보험료가 할증되나요?
          </button>
        </h2>
        <div id="flush-collapse4" class="accordion-collapse collapse" aria-labelledby="flush-heading4" data-bs-parent="#accordionFlushExample">
          <div class="accordion-body" style="color:#fff">
            A. 렌터카는 피보험자가 <code style="color:#c36f51;">렌터카 회사 명의</code>로 가입되기 때문에 사고로 인한 보험료 할증은 없고 사고로 인한 월 대여료는 인상되지 않습니다. 
          </div>
        </div>
      </div>
      
      <div class="accordion-item">
        <h2 class="accordion-header" id="flush-heading5">
          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapse5" aria-expanded="false" aria-controls="flush-collapse5">
            Q.사고나 고장시 어떻게 처리하면 되나요?
          </button>
        </h2>
        <div id="flush-collapse5" class="accordion-collapse collapse" aria-labelledby="flush-heading5" data-bs-parent="#accordionFlushExample">
          <div class="accordion-body" style="color:#fff">
            A. 장기렌트 이용 시 차량의 사고나 고장으로 인해 수리가 필요한 경우, <code style="color:#c36f51;">계약한 렌트회사 사고담당자</code>에게 문의하시면
            바로 조치받으실 수 있습니다. 
          </div>
        </div>
      </div>
      
      <div class="accordion-item">
        <h2 class="accordion-header" id="flush-heading6">
          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapse6" aria-expanded="false" aria-controls="flush-collapse6">
            Q.사업자인데 렌트료 경비처리가 가능한가요?
          </button>
        </h2>
        <div id="flush-collapse6" class="accordion-collapse collapse" aria-labelledby="flush-heading6" data-bs-parent="#accordionFlushExample">
          <div class="accordion-body" style="color:#fff">
            A. 장기렌트의 경우 <code style="color:#c36f51;">사업자 등록증</code>을 가지고 있는 계약자라면 누구나 비용처리 가능합니다. 또한 경차, 승합자등 부가세 환급차량의 경우
            부가세 환급도 가능합니다. 
          </div>
        </div>
      </div>

   <!-- card body -->
   
    <div id="faqBtn">
        <button style="width : 120px; height: 40px " class="custom-btn" onclick="location.href='noticeFaq.do';">질문 더 보기</button>
    </div>
    
      </div>
  </div>
  

 </div>

<!-- Banner -->

<div id="sectionFAQ" class="FAQ" style="width:660px; height:450px; margin: auto;">
    <div class="FAQcard">
       <h5 class="card-header">보험사</h5>
    </div>
   <div class="card-body" style="margin: auto">
      <a href="https://direct.hi.co.kr/">
           <img src="${ctx}/resources/image/banner/banner01.jpg" style="width: 300px; height: 86px; margin-bottom: 2px;" title="" alt="">
        </a>
        <a href="https://www.axa.co.kr/">
           <img src="${ctx}/resources/image/banner/banner02.jpg" style="width: 300px; height: 86px; margin-bottom: 2px;" title="" alt="">
        </a>
        <a href="https://store.meritzfire.com/">
           <img src="${ctx}/resources/image/banner/banner03.jpg" style="width: 300px; height: 86px; margin-bottom: 2px;" title="" alt="">
        </a>
        <a href="https://www.directdb.co.kr/">
           <img src="${ctx}/resources/image/banner/banner04.jpg" style="width: 300px; height: 86px; margin-bottom: 2px;" title="" alt="">
        </a>
        <a href="https://direct.kbinsure.co.kr/">
           <img src="${ctx}/resources/image/banner/banner05.jpg" style="width: 300px; height: 86px; margin-bottom: 2px;" title="" alt="">
        </a>
        <a href="https://www.hwgi.kr/">
           <img src="${ctx}/resources/image/banner/banner06.jpg" style="width: 300px; height: 86px; margin-bottom: 2px;" title="" alt="">
        </a>
        <a href="https://direct.samsungfire.com/">
           <img src="${ctx}/resources/image/banner/banner07.jpg" style="width: 300px; height: 86px; margin-bottom: 2px;" title="" alt="">
        </a>
        <a href="https://www.heungkukfire.co.kr/">
           <img src="${ctx}/resources/image/banner/banner08.jpg" style="width: 300px; height: 86px; margin-bottom: 2px;" title="" alt="">
        </a>
  </div>
  

 </div>
<!-- Banner end --> 



</div>


   <!-- JS here -->


    <!-- Jquery Slick , Owl-Carousel Plugins -->
    <script src="${ctx}/resources/assets/js/owl.carousel.min.js"></script>
    <script src="${ctx}/resources/assets/js/slick.min.js"></script>

    <!-- Jquery Plugins, main Jquery -->
    <script src="${ctx}/resources/assets/js/plugins.js"></script>
    <script src="${ctx}/resources/assets/js/main.js"></script>

    
<style>
/*클릭 이벤트를 포함하는 모든 영역에 추가하면 하위 이벤트까지 작동안함.*/
#element { 

pointer-events: none;

 }
element:hover {
   background-color: #111
} 
</style>

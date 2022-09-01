<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../inc/header.jsp" %>

<!-- Personal CSS -->
<link rel="stylesheet" href="${ctx}/resources/css/noticeList.css">
<link rel="stylesheet" href="${ctx}/resources/css/noticeRent.css">


<script type="text/javascript" src="${ctx}/resources/js/mdb.min.js"></script>

  <div class="container mt-5">
     
     <div class="container_inner mt-3">
      <div class="mt-3 mb-3 p-3 text-white rounded" style="background-color: rgba(70, 70, 70, 0.5)">
         <h1><i class="xi-paper"></i>&nbsp;FAQ</h1>
         <h4>전화문의 1555-5555</h4> 
      </div>
   </div>
  
    <div class="accordion accordion-flush" id="accordionFlushExample">
      <div class="accordion-item">
        <h2 class="accordion-header" id="flush-heading1">
          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapse1" aria-expanded="false" aria-controls="flush-collapse1">
            Q.보증금은 계약 종료 후 돌려받을 수 있나요?
          </button>
        </h2>
        <div id="flush-collapse1" class="accordion-collapse collapse" aria-labelledby="flush-heading1" data-bs-parent="#accordionFlushExample">
          <div class="accordion-body" >
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
          <div class="accordion-body" >
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
          <div class="accordion-body">
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
          <div class="accordion-body">
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
          <div class="accordion-body">
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
          <div class="accordion-body">
            A. 장기렌트의 경우 <code style="color:#c36f51;">사업자 등록증</code>을 가지고 있는 계약자라면 누구나 비용처리 가능합니다. 또한 경차, 승합자등 부가세 환급차량의 경우
            부가세 환급도 가능합니다. 
          </div>
        </div>
      </div>
      
      <div class="accordion-item">
        <h2 class="accordion-header" id="flush-heading7">
          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapse7" aria-expanded="false" aria-controls="flush-collapse7">
            Q. 앱/웹에서 예약하면 예약 확정되는 건가요?
          </button>
        </h2>
        <div id="flush-collapse7" class="accordion-collapse collapse" aria-labelledby="flush-heading7" data-bs-parent="#accordionFlushExample">
          <div class="accordion-body">
            A. 네, <code style="color:#c36f51;">결제와 동시에</code> 예약이 확정됩니다. 5조 렌트카는 실시간 예약서비스를 제공합니다.
          </div>
        </div>
      </div>
      
      <div class="accordion-item">
        <h2 class="accordion-header" id="flush-heading8">
          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapse8" aria-expanded="false" aria-controls="flush-collapse8">
            Q. 한 아이디로 여러 대를 예약할 수 있나요?
          </button>
        </h2>
        <div id="flush-collapse8" class="accordion-collapse collapse" aria-labelledby="flush-heading8" data-bs-parent="#accordionFlushExample">
          <div class="accordion-body">
            A. 아니오, 한 아이디로 <code style="color:#c36f51;">한 대</code>의 차만 예약 가능합니다.
          </div>
        </div>
      </div>

      <div class="accordion-item">
        <h2 class="accordion-header" id="flush-heading9">
          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapse9" aria-expanded="false" aria-controls="flush-collapse9">
            Q. 예약연장이 가능한가요?
          </button>
        </h2>
        <div id="flush-collapse9" class="accordion-collapse collapse" aria-labelledby="flush-heading9" data-bs-parent="#accordionFlushExample">
          <div class="accordion-body">
            A. <code style="color:#c36f51;">예약한 렌트카 업체</code>에 직접 문의 및 협의 후 현장 결제해주시면 됩니다. 예약 이후 5조 렌트카에서 예약 안내 전화가 갈 수 있습니다.
          </div>
        </div>
      </div>
      
      <div class="accordion-item">
        <h2 class="accordion-header" id="flush-heading10">
          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapse10" aria-expanded="false" aria-controls="flush-collapse10">
            Q. 예약변경은 가능한지 궁금합니다.
          </button>
        </h2>
        <div id="flush-collapse10" class="accordion-collapse collapse" aria-labelledby="flush-heading10" data-bs-parent="#accordionFlushExample">
          <div class="accordion-body">
            A. 예약 시간, 딜리버리 장소 변경 등을 희망하실 경우, <code style="color:#c36f51;">예약을 취소</code>하신 후 다시 예약해주셔야 합니다.
          </div>
        </div>
      </div>
      
      <div class="accordion-item">
        <h2 class="accordion-header" id="flush-heading11">
          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapse11" aria-expanded="false" aria-controls="flush-collapse11">
            Q. 현금영수증 또는 세금계산서 발행이 가능한가요?
          </button>
        </h2>
        <div id="flush-collapse11" class="accordion-collapse collapse" aria-labelledby="flush-heading11" data-bs-parent="#accordionFlushExample">
          <div class="accordion-body">
            A. <code style="color:#c36f51;">예약한 매장</code>에 직접 문의 및 협의 후 현장 결제해주시면 됩니다.
          </div>
        </div>
      </div>

      <div class="accordion-item">
        <h2 class="accordion-header" id="flush-heading12">
          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapse12" aria-expanded="false" aria-controls="flush-collapse12">
            Q. 예약한 차량과 다른 차량이 배차되는 경우도 있나요?
          </button>
        </h2>
        <div id="flush-collapse12" class="accordion-collapse collapse" aria-labelledby="flush-heading12" data-bs-parent="#accordionFlushExample">
          <div class="accordion-body">
            A. <code style="color:#c36f51;">즉시 출고</code>는 실시간 예약이기 때문에 대부분 예약한 차량 그대로 받아보실 수 있으나 예약한 차량이 사고/고장으로 대여할 수 없는 상황일 때는 부득이하게 동급 차종 혹은 다른 차량으로 변경안내 전화가 갈 수 있습니다.
          </div>
        </div>
      </div>

      
      <div class="accordion-item">
        <h2 class="accordion-header" id="flush-heading13">
          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapse13" aria-expanded="false" aria-controls="flush-collapse13">
            Q. 노쇼일 경우 수수료가 있나요?
          </button>
        </h2>
        <div id="flush-collapse13" class="accordion-collapse collapse" aria-labelledby="flush-heading13" data-bs-parent="#accordionFlushExample">
          <div class="accordion-body">
            A. [<code style="color:#c36f51;">노쇼</code> 수수료]
            * 노쇼란? 대여시간 이후 사전 협의 없이 인수 장소에 나타나지 않고, 연락 두절하는 경우를 가리킵니다.
            
            -<code style="color:#c36f51;">노쇼</code>일 경우, <code style="color:#c36f51;">환불 불가</code>합니다.
            -대여시간 <code style="color:#c36f51;">3시간</code>이 지난 후에는 연락이 되었거나 차량 이용을 원하더라도 차량 대여가 불가합니다.
            -(배달 신청 고객) 예약한 대여시간에 배달장소에서 대여시간 이후 <code style="color:#c36f51;">30분 동안</code> 노쇼인 경우, 대여시작 시간이 지난 후 <code style="color:#c36f51;">3시간 이내</code>에 업체 차고지에서 직접 인수해야 합니다.
          </div>
        </div>
      </div>
      
      
    </div>
  </div>
<%@ include file="../inc/footer.jsp" %>
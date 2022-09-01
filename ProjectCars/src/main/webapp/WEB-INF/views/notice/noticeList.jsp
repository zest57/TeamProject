<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../inc/header.jsp" %>

<!-- Personal CSS -->
<link rel="stylesheet" href="${ctx}/resources/css/noticeList.css">

<script type="text/javascript" src="${ctx}/resources/js/mdb.min.js"></script>

<body>
  <div class="container">
    <div class="container mt-3">
        <div class="mt-3 mb-3 p-3 text-white rounded" style="background-color: rgba(70, 70, 70, 0.5)">
          <h1>보험/유의사항</h1>
        </div>
    </div>
    <div class="inner">
      <div class="cat">
        <h1><i class="xi-caret-right"></i><strong>자격요건</strong></h1>
      </div>
      <div class="d-flex">
        <div class="person me-5">
          <div class="icon text-center">
            <i class="icon1 xi-profile-o"></i>
            <h5 class="mb-3">개인 자격요건</h5>
          </div>
          <p>
            *만 21세 이상, 운전경력 1년 이상, 운전명허소지자에 한합니다.*<br>
            - 일부차량은 만 26세 이상을 요구할 수 있습니다.<br>
            - 운전면허증은 도로교통법상 유효한 면허를 소지하여야 합니다.
          </p>
        </div>
        <div class="license">
          <div class="icon text-center">
            <i class="icon2 xi-paper-o"></i>
            <h5 class="mb-3">자동차 필수면허증</h5>
          </div>
          <p>
            - 승용차/9인승 승합차:2종 보통면허 이상 소지자<br>
            - 15인승 이하 승합차:1종 보통면허 이상 소지자<br>
            - 외국인:국제면허증 소지자        
          </p>
        </div>

      </div>
      <div class="cat">
        <h1><i class="xi-caret-right"></i><strong>보상제도</strong></h1>
      </div>
      <div>
        <p>
          **전 차량 자동차종합보험(대인,대물,자송)에 가입되어 있습니다.<br>
          - 대인: 무한대
          - 대물: 건당 3천만원
          - 자송: 개인 1500만원<br><br>
          *차량손해 면책제도-운전자의 과실에 의한 대여차량손해시 임차인의 책임이나 본 차량손해 면책제도에 의거, 보상받으실 수 있습니다.<br>
          이경우 면책금은 고객부담입니다.<br>
          *사고시 휴차보상-차량손해 발생시 수리기간동안 대여요금에 해당하는 휴차보상료가 청구되며 이는 임차인이 배상하여야 합니다
        </p>
      </div>
      <div class="cat">
        <h1><i class="xi-caret-right"></i><strong>기타안내</strong></h1>
      </div>
      <div>
        <p>
          **교통법규<br>
          - 운전자는 교통법규를 준수하여야 하며, 위반 시 제반사항은 임차인의 책임입니다.<br>
          - 도로교통법 위반시에는 일부 혜택을 받지 못할 수도 있습니다.<br><br>
          *연료/주행거리<br>
          - 유류는 사용자 부담이며, 반차시에는 출발시에 체크된 연료와 동일한 양으로 반납하시면 됩니다.<br>
          (초과 유류 반납 시 당사 유류기준표에 따라 대여요금이 재정산 됩니다)<br>
          - 주향거리에 대한 제한은 없습니다.<br><br>
          *사고시 휴차보상<br>
          - 차량손해 발생시 수리기간동안 대여요금에 해달하는 휴차보상료가 청구되며 이는 임차인이 바상하여햐 합니다.<br><br>
          *계약연장<br>
          - 계약기간을 연장하여 사용하고자 할 경우에는 사전에 대여지점의 동의를 받아야 합니다.<br>
          - 사전 동의없이 연장 사용기간 중에 발생한 보험 및 차량손해에 대해서는 보상이나 면책을 받지 못할 수 있습니다.<br>

        </p>
      </div>
    </div>
<!--     <div id="back-top" >
   		<a title="Go to Top" href="#"> <i class="fas fa-level-up-alt"></i></a>
	</div> -->
  </div>
</body>

<%@ include file="../inc/footer.jsp" %>
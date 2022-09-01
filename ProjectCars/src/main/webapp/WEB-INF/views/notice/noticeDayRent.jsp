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
          <h1>1일렌트 안내사항</h1>
        </div>
    </div>
        
    <div id="section1" class="container-fluid" style="padding:100px 20px;">
      <h1><i class="xi-lightbulb"></i> &nbsp;<strong>렌트카 대여 조건 및 운전자격</strong></h1>
      <p><i class="xi-label"></i> &nbsp;승용, SUV, 카니발(9인승) : 만26세이상 ㅣ 2종보통면허이상 ㅣ 운전경력1년이상</p>
      <p><i class="xi-label"></i> &nbsp;올뉴카니발(11인승), 스타렉스, 쏠라티 : 만26세이상 ㅣ 1종보통면허이상 ㅣ 운전경력1년이상</p>
      <p><i class="xi-label"></i> &nbsp;운전면허증 필수지참(제2운전자 동일)</p>
      <p><i class="xi-label"></i> &nbsp;운전 미숙자 대여불가</p>
      <p><i class="xi-label"></i> &nbsp;외국인 및 교포, 만 65세초과 운전자는 국내 운전면허증을 소지 할 경우 또는 운전면허소지 한 내국인 연대보증인(제2운전자)이 있을 경우 대여 가능</p>
      <p><i class="xi-label"></i> &nbsp;운전면허 적성 검사 유효 기간이 대여 기간 이상이어야 렌트 가능합니다.</p>
      <p><i class="xi-label"></i> &nbsp;만 26세 미만 차량 대여시 1만원 추가됩니다.</p>
      <p><i class="xi-label"></i> &nbsp;24시간 기준 약정주행거리는 300km 이며 초과시 1km당 100원 과금됩니다.</p>
    </div>
    
    <div id="section2" class="container-fluid" style="padding:100px 20px;">
      <h1><i class="xi-lightbulb"></i> &nbsp;<strong>연료 및 반납 시간 초과 안내</strong></h1>
      <p><i class="xi-label"></i> &nbsp;차량반납 시 연료양은 인수받으실 때의 연료량과 동일하게 채워진 후 반납</p>
        <p><i class="xi-subdirectory-arrow"></i> &nbsp;연료량 미달 시 추가금이 발생</p>
        <p><i class="xi-subdirectory-arrow"></i> &nbsp;LPG : 10%당 10,000원</p>
        <p><i class="xi-subdirectory-arrow"></i> &nbsp;휘발유 및 경유 : 1칸(총8칸, 1/8칸) 당 20,000원</p>
      <p style="color:#c36f51">※ 연료 남을 경우 환급 불가</p>
      <p><i class="xi-label"></i> &nbsp;반납 시간 초과 : 추가요금 발생(현장결제)</p>
        <p><i class="xi-subdirectory-arrow"></i> &nbsp;승용 : 1시간 5,000원</p>
        <p><i class="xi-subdirectory-arrow"></i> &nbsp;승합, SUV : 1시간 10,000원</p>
        <p><i class="xi-subdirectory-arrow"></i> &nbsp;대형차량(K9, G80, GV80) : 1시간 20,000원</p>
        <p><i class="xi-subdirectory-arrow"></i> &nbsp;수입차량 : 1시간 20,000원</p>
      <p><i class="xi-label"></i> &nbsp;추가 이용 시간은 21:00 이전 까지만 가능하며, 이후는 1일 연장 됩니다.</p>
      <p><i class="xi-label"></i> &nbsp;운전면허증 필수 지참(경찰청 운전면허증 진위여부 조회)</p>
      <p><i class="xi-label"></i> &nbsp;이용당일 NO SHOW → 취소 및 환불 불가.</p>
      <p><i class="xi-label"></i> &nbsp;운행 중 발생하는 교통 법규 위반, 단독사고는 임차인의 귀책입니다.</p>
      <p><i class="xi-label"></i> &nbsp;차 대 차 사고 외 단독 사고 차량 고장 / 파손 부분은 대여자가 원래 상태로 복원해야 하며 휴차료, 감가상각비가 청구될 수 있습니다.</p>
      <p style="color:#c36f51">※ 출고 후 임차인의 과실 or 관리 부주의(방전, 키 분실등)로 발생 현장 출동 서비스 요청 시 비용 고객 부담</p>
      <p><i class="xi-label"></i> &nbsp;차내 흡연으로 인한 악취 발생 시, 스팀 세차 비용(20만원)이 부과됩니다.</p>
    </div>
    
    <div id="section3" class="container-fluid" style="padding:100px 20px;">
      <h1><i class="xi-lightbulb"></i> &nbsp;<strong>보험안내</strong></h1>
      <p><i class="xi-label"></i> &nbsp;모든 차종이 기본 종합보험(대인,대물,자손) 가입 되어 있으며, 자차 보험은 가입 되어 있지 않습니다. 운전자(임차인)가 별도 가입하여야 합니다.</p>

    </div>

    <div id="section4" class="container-fluid" style="padding:100px 20px;">
      <h1><i class="xi-lightbulb"></i> &nbsp;<strong>보험 보상 범위</strong></h1>
      <p><i class="xi-label"></i> &nbsp;대인 : 무한 / 대물 : 1억 / 자손 : 1천5백만원</p>
      <p><i class="xi-label"></i> &nbsp;자차 : 운전자(임차인) 별도 추가 가입 : 렌트카 공제</p>
    </div>

    <div id="section5" class="container-fluid" style="padding:100px 20px;">
      <h1><i class="xi-lightbulb"></i> &nbsp;<strong>자차 보험 안내</strong></h1>
      <p><i class="xi-label"></i> &nbsp;대여기간 연장 & 초과 이용 시간 발생 시 자차 보험은 자동 연장되며, 보험료는 日단위로 청구됩니다.</p>
      <p><i class="xi-label"></i> &nbsp;자차보험료는 연장 & 추가 이용 시간 발생 이전 결제 해야만 보험 보상 가능</p>
      <p><i class="xi-label"></i> &nbsp;보험료를 미납하신 경우 사고 발생시 보상 받을 수 없습니다.</p>
      <p><i class="xi-label"></i> &nbsp;자차보험료 : 일반자차 기준 (1일)</p>
        <p><i class="xi-subdirectory-arrow"></i> &nbsp;[수입차량 : BMW, 벤츠, 아우디] : 20,000 원 ~</p>
        <p><i class="xi-subdirectory-arrow"></i> &nbsp;[스포츠카 : 포스쉐, 람보르기니, 페라리] : 50,000 원 ~</p>
        <p><i class="xi-subdirectory-arrow"></i> &nbsp;일일자차 사고율 및 렌터카공제 사고율에 따라 보험료가 변동 될 수 있습니다.</p>
    </div>

    <div id="section6" class="container-fluid" style="padding:100px 20px;">
      <h1><i class="xi-lightbulb"></i> &nbsp;<strong>차량 손해 면책 제도 안내</strong></h1>
      <p><i class="xi-label"></i> &nbsp;모든 차종이 기본 종합보험(대인,대물,자손) 가입 되어 있으며, 자차 보험은 가입 되어 있지 않습니다. (운전자 별도 가입 필요)</p>
      <p><i class="xi-label"></i> &nbsp;차량 손해 면책 제도(자차 보험, 본인부담금) 관련 세부 사항은 차량 인수 시 문의</p>
      <p><i class="xi-label"></i> &nbsp;다음의 사항은 어떠한 상황에도 보험 보상 처리(면책)가 불가합니다.</p>
        <p><i class="xi-subdirectory-arrow"></i> &nbsp;임차인(공동 임차인 포함) 이외 제3자가 렌트카를 사용하여 발생한 사고</p>
        <p><i class="xi-subdirectory-arrow"></i> &nbsp;임차인 부주의로 인한 차량 도난사고</p>
        <p><i class="xi-subdirectory-arrow"></i> &nbsp;운전자의 고의로 인한 사고</p>
        <p><i class="xi-subdirectory-arrow"></i> &nbsp;임차 중 차량의 소모품 (자동차키, 타이어, 체인, 긴급 출동 서비스 등) 파손 및 분실</p>
        <p><i class="xi-subdirectory-arrow"></i> &nbsp;음주 및 뺑소니 등 중대한 교통 법규를 위반하여 발생 한 사고</p>
        <p><i class="xi-subdirectory-arrow"></i> &nbsp;범죄를 목적으로 사용하던 중 발생 한 사고</p>
        <p><i class="xi-subdirectory-arrow"></i> &nbsp;무면허 운전사고</p><br>
      <p><i class="xi-label"></i> &nbsp;자차 보험에 가입했더라도 소모품 및 견인비, 긴급 출동비, 실내 부품, 네비게이션 손해액은 제외됩니다.</p>
      <p><i class="xi-label"></i> &nbsp;사고 시 차종별 자차 한도를 초과한 금액은 고객 부담 입니다.</p>
    </div>

    <div id="section7" class="container-fluid" style="padding:100px 20px;">
      <h1><i class="xi-lightbulb"></i> &nbsp;<strong>배, 반차 정보</strong></h1>
      <p><i class="xi-label"></i> &nbsp;배반차 가능시간 08:30 ~ 20:00</p>
      <p><i class="xi-label"></i> &nbsp;지점 방문 차량 인수 및 반납</p>
      <p><i class="xi-label"></i> &nbsp;8:30 이전, 20:00 이후 반납 불가</p>
      <p><i class="xi-label"></i> &nbsp;19:30 이전 미 인수 시 NO SHOW(취소 및 환불 불가)처리, 20:00 이후 반납 불가(추가 사용료 발생)</p>
      <p><i class="xi-label"></i> &nbsp;차량을 지점 주변 방치 할 경우 차량 견인료, 주차 과태료, 파손 수리비 등 운전자(임차인)의 책임입니다.</p>
      <p><i class="xi-label"></i> &nbsp;추가 이용 시간</p>
        <p><i class="xi-subdirectory-arrow"></i> &nbsp;수입차량 이용시 시간당 2만원 추가</p>
        <p><i class="xi-subdirectory-arrow"></i> &nbsp;위반 시 : 추가 비용 발생</p>
    </div>
<!--     <div id="back-top" >
   		<a title="Go to Top" href="#"> <i class="fas fa-level-up-alt"></i></a>
	</div> -->
  </div>
</body>

<%@ include file="../inc/footer.jsp" %>

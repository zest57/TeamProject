<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
 
<c:set var="ctx" value="${pageContext.request.contextPath}"/> 



<!-- 로그인 리소스 -->
<link rel="stylesheet" href="${ctx}/resources/css/memberRegister.css">
<link rel="stylesheet" href="${ctx}/resources/css/hover/button.css">
<!-- 유효성JS -->
<script type="text/javascript" src="${ctx}/resources/js/register_valid.js"></script>

<style>
.navbar .nav-link {
	color: #fff !important;
	font-family: LeferiPoint-WhiteObliqueA;
}

h1, h2, h3, h4, h5, h5, p, legend ,span{
	color: #fff !important;
	font-family: LeferiPoint-WhiteObliqueA;
}

.container{
margin:  0;
padding: 0;
}

</style>
    
<%@ include file="../inc/header.jsp" %>

<style>
/*
  https://developer.mozilla.org/en/docs/Web/CSS/box-shadow
  box-shadow: [inset?] [top] [left] [blur] [size] [color];

  Tips:
    - We're setting all the blurs to 0 since we want a solid fill.
    - Add the inset keyword so the box-shadow is on the inside of the element
    - Animating the inset shadow on hover looks like the element is filling in from whatever side you specify ([top] and [left] accept negative values to become [bottom] and [right])
    - Multiple shadows can be stacked
    - If you're animating multiple shadows, be sure to keep the same number of shadows on hover/focus as non-hover/focus (even if you have to create a transparent shadow) so the animation is smooth. Otherwise, you'll get something choppy.
*/
.fill:hover,
.fill:focus {
  box-shadow: inset 0 0 0 2em var(--hover);
}

.pulse:hover,
.pulse:focus {
  animation: pulse 1s;
  box-shadow: 0 0 0 2em transparent;
}

@keyframes pulse {
  0% {
    box-shadow: 0 0 0 0 var(--hover);
  }
}
.close:hover,
.close:focus {
  box-shadow: inset -3.5em 0 0 0 var(--hover), inset 3.5em 0 0 0 var(--hover);
}

.raise:hover,
.raise:focus {
  box-shadow: 0 0.5em 0.5em -0.4em var(--hover);
  transform: translateY(-0.25em);
}

.up:hover,
.up:focus {
  box-shadow: inset 0 -3.25em 0 0 var(--hover);
}

.slide:hover,
.slide:focus {
  box-shadow: inset 6.5em 0 0 0 var(--hover);
}

.offset {
  box-shadow: 0.3em 0.3em 0 0 var(--color), inset 0.3em 0.3em 0 0 var(--color);
}
.offset:hover, .offset:focus {
  box-shadow: 0 0 0 0 var(--hover), inset 6em 3.5em 0 0 var(--hover);
}

.fill {
  --color: #a972cb;
  --hover: #cb72aa;
}

.pulse {
  --color: #ef6eae;
  --hover: #ef8f6e;
}

.close {
  --color: #ff7f82;
  --hover: #ffdc7f;
}

.raise {
  --color: #ffa260;
  --hover: #e5ff60;
}

.up {
  --color: #e4cb58;
  --hover: #94e458;
}

.slide {
  --color: #8fc866;
  --hover: #66c887;
}

.offset {
  --color: #19bc8b;
  --hover: #1973bc;
}

button {
  color: var(--color);
  transition: 0.25s;
}
button:hover, button:focus {
  border-color: var(--hover);
  color: #fff;
}

body {
  color: #fff;
  font: 300 1em "Fira Sans", sans-serif;
  justify-content: center;

}

button {
  background: none;
  border: 2px solid;
  font: inherit;
  line-height: 1;
  margin: 0.5em;
}

h1 {
  font-weight: 400;
}

code {
  color: #e4cb58;
  font: inherit;
}
</style>

<script type="text/javascript">
function idChk(){
   if($("#id").val() ==''){
      alert("아이디를 입력하세요!!");
      $("#id").focus();
      return;
   }
   
   var id = $("#id").val();
   
   $.ajax({
      url:"<c:url value='/memberIdCheck.do'/>",
      type: "POST",
      data:{"id": id}, // key:value 형태로 서버에 보내는 data를 의미
      success:duplicateChk, // 콜백함수
      error:function(){
         alert("요청 실패!!!");
      }
   });
}

// 서버로부터 전송된 응답 결과를 처리하는 함수, data: 서버 처리결과 데이터   
function duplicateChk(data){
/*       if(data !=null){ */
   if(data != "N"){
      alert("이미 존재하는 아이디 입니다!!");
      $("#id").focus();
   }else{
      alert("사용가능한 아이디 입니다!!");
   }
}
</script>





<div class="container mt-5 p-5" style="width:800px; border-radius:10px;">
	<form action="${ctx}/memberInsert.do" method="post" class="bg-dark p-5" name="joinForm">
        
      <legend>회원가입</legend>
      
       <div class="box1">
          <div><label>아이디</label></div>
          
          <div class="row m-0 mb-2">
              <div class="col-md-8 p-0 mb-2">
               <input class="form-control pt-2 pb-2" type="text" id ="id" name="id" placeholder="아이디">
              </div>
              
              <div class="col-md-4 pe-0">
            <input class="form-control btn btn-outline-secondary" 
                  type="button" value="중복확인" onclick="idChk()"/>
           </div>
        </div>      
       </div>      
           
        <div class="box2">
          <div><label>비밀번호:</label></div>
            <input class="form-control mb-2" type="password" name="pw" placeholder="비밀번호를 입력하세요">
        </div>
        
        <div class="box2">
          <div><label>비밀번호확인:</label></div>
            <input class="form-control mb-2" type="password" name="pwConfirm" placeholder="비밀번호를 입력하세요">
        </div>
        
        <div class="box2">
          <div><label>이름:</label></div>
			<input class="form-control mb-2" type="text" name="name" placeholder="이름을 입력하세요">
        </div>
        
        <div class="box2">
          <div><label>나이:</label></div>
			<input class="form-control mb-2" type="text" name="age" placeholder="만 21세이상부터 가입 가능">
        </div>
        
        <div class="box2">
          <div><label>이메일:</label></div>
			<input class="form-control mb-2" type="text" name="email" placeholder="zxcv@testuser.com">
        </div>
        
        <div class="box2">
          <div><label>전화번호:</label></div>
			<input class="form-control mb-2" type="text" name="tel" placeholder="010-1111-1234">
        </div>
		<!-- 주소  -->
		<div class="row m-0 mb-2">
			<div class="col-md-3 p-0">
				<input class="form-control form-control-sm mb-2" type="text" name= "zipcode" id="zipcode" placeholder="우편번호" />
			</div>
			<div class="col-md-5">
				<a class="btn btn-sm btn-outline-secondary" href="javascript:sample4_execDaumPostcode()">우편번호 찾기</a>
			</div>
		</div>
		<input  class="form-control mb-2" type="text" name="roadAddr" id="roadAddr" placeholder="도로명주소" >
		<input  class="form-control mb-2" type="text" name="jibunAddr" id="jibunAddr" placeholder="지번주소" >
		
		<input  class="form-control mb-2" type="text" name="detailAddr" id="detailAddr" placeholder="상세주소">
		
		<div class="text-center mt-3">
		<!-- <input type="button" value="회원가입" class="btn btn-primary" onclick="inputChk()"> -->
		<button type='button' onclick="inputChk()" class="pulse">가입</button>
		<button type="reset" class="pulse">취소</button>
		</div>
        
      </form>
      
    </div>

    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('zipcode').value = data.zonecode;
                document.getElementById("roadAddr").value = roadAddr;
                document.getElementById("jibunAddr").value = data.jibunAddress;
                
            }
        }).open();
    }
</script>

<%@ include file="../inc/footer.jsp" %>
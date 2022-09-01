<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<%@ include file="../inc/header.jsp" %>

<body>

<h2 style="text-align:center; margin-top:50px;"><strong><i class="xi-map"></i>&nbsp;오시는 길</strong></h2>

<div class="container" style="border:2px solid white; background-color:#212529;">

	<div id="map" style="width:1319px; height:460px; margin-left:-12px;"></div>
	
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=55efd8a826ef496316fe172291167420"></script>
	<script>
	  var MARKER_WIDTH = 33, // 기본, 클릭 마커의 너비
	          MARKER_HEIGHT = 36, // 기본, 클릭 마커의 높이
	          OFFSET_X = 12, // 기본, 클릭 마커의 기준 X좌표
	          OFFSET_Y = MARKER_HEIGHT, // 기본, 클릭 마커의 기준 Y좌표
	          OVER_MARKER_WIDTH = 40, // 오버 마커의 너비
	          OVER_MARKER_HEIGHT = 42, // 오버 마커의 높이
	          OVER_OFFSET_X = 13, // 오버 마커의 기준 X좌표
	          OVER_OFFSET_Y = OVER_MARKER_HEIGHT, // 오버 마커의 기준 Y좌표
	          SPRITE_MARKER_URL = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markers_sprites2.png', // 스프라이트 마커 이미지 URL
	          SPRITE_WIDTH = 126, // 스프라이트 이미지 너비
	          SPRITE_HEIGHT = 146, // 스프라이트 이미지 높이
	          SPRITE_GAP = 10; // 스프라이트 이미지에서 마커간 간격
	
	  var markerSize = new kakao.maps.Size(MARKER_WIDTH, MARKER_HEIGHT), // 기본, 클릭 마커의 크기
	          markerOffset = new kakao.maps.Point(OFFSET_X, OFFSET_Y), // 기본, 클릭 마커의 기준좌표
	          overMarkerSize = new kakao.maps.Size(OVER_MARKER_WIDTH, OVER_MARKER_HEIGHT), // 오버 마커의 크기
	          overMarkerOffset = new kakao.maps.Point(OVER_OFFSET_X, OVER_OFFSET_Y), // 오버 마커의 기준 좌표
	          spriteImageSize = new kakao.maps.Size(SPRITE_WIDTH, SPRITE_HEIGHT); // 스프라이트 이미지의 크기
	
	  /*var markers = [
	    {
	      position: new kakao.maps.LatLng(33.450701, 126.570667),
	      text: 'a'
	    },
	    {
	      position: new kakao.maps.LatLng(33.450001, 126.570467),
	      text: '텍스트를 표시할 수 있어요!' // text 옵션을 설정하면 마커 위에 텍스트를 함께 표시할 수 있습니다
	    }
	  ];
	*/
	
	  var positions = [  // 마커의 위치
	            new kakao.maps.LatLng(36.34851977861021, 127.38217913921899),
	            new kakao.maps.LatLng(36.360824746496434, 127.32612335630472),
	            new kakao.maps.LatLng(36.33911842031999, 127.3655643091889)
	          ],
	          selectedMarker = null; // 클릭한 마커를 담을 변수
	
	  var mapContainer = document.getElementById('map'), // 지도를 표시할 div
	          mapOption = {
	            center: new kakao.maps.LatLng(36.353959716630726, 127.36295988120398), // 지도의 중심좌표
	            level: 6 // 지도의 확대 레벨
	          };
	
	  var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
	  let markerContents = [];
	  // 지도 위에 마커를 표시합니다
	  for (var i = 0, len = positions.length; i < len; i++) {
	    var gapX = (MARKER_WIDTH + SPRITE_GAP), // 스프라이트 이미지에서 마커로 사용할 이미지 X좌표 간격 값
	            originY = (MARKER_HEIGHT + SPRITE_GAP) * i, // 스프라이트 이미지에서 기본, 클릭 마커로 사용할 Y좌표 값
	            overOriginY = (OVER_MARKER_HEIGHT + SPRITE_GAP) * i, // 스프라이트 이미지에서 오버 마커로 사용할 Y좌표 값
	            normalOrigin = new kakao.maps.Point(0, originY), // 스프라이트 이미지에서 기본 마커로 사용할 영역의 좌상단 좌표
	            clickOrigin = new kakao.maps.Point(gapX, originY), // 스프라이트 이미지에서 마우스오버 마커로 사용할 영역의 좌상단 좌표
	            overOrigin = new kakao.maps.Point(gapX * 2, overOriginY); // 스프라이트 이미지에서 클릭 마커로 사용할 영역의 좌상단 좌표
	
	    // 마커를 생성하고 지도위에 표시합니다
	    addMarker(i, positions[i], normalOrigin, overOrigin, clickOrigin);
	  }
	
	  // 마커를 생성하고 지도 위에 표시하고, 마커에 mouseover, mouseout, click 이벤트를 등록하는 함수입니다
	  function addMarker(i, position, normalOrigin, overOrigin, clickOrigin) {
	
	    // 기본 마커이미지, 오버 마커이미지, 클릭 마커이미지를 생성합니다
	    var normalImage = createMarkerImage(markerSize, markerOffset, normalOrigin),
	            overImage = createMarkerImage(overMarkerSize, overMarkerOffset, overOrigin),
	            clickImage = createMarkerImage(markerSize, markerOffset, clickOrigin);
	
	    
	    
	    let storeName;
	    if (i === 0) {
	    	storeName = 'A 둔산본점'
	    } else if (i === 1) {
	    	storeName = 'B 유성점'
	    }else if (i === 2) {
	    	storeName = 'C 월평점'
	    }
	    
	    
	    let address;
	    if (i === 0) {
	    	address = '대전광역시 서구 계룡로 491번길 86 (둔산동 1221번지) 미래융합교육원'
	    } else if (i === 1) {
	    	address = '대전 유성구 봉명동 1017-4'
	    }else if (i === 2) {
	    	address = '대전광역시 서구 한밭대로 580'
	    }
	    
	    
	    let tel;
	    if (i === 0) {
	    	tel = 'Tel. 042-471-9222 / Fax. 042-471-9223'
	    } else if (i === 1) {
	    	tel = '042-718-1234'
	    }else if (i === 2) {
	    	tel = '042-435-3153'
	    }
	   
	    
	    let parkInfo;
	    if (i === 0) {
	    	parkInfo = '30분 이내 회차시 무료'
	    } else if (i === 1) {
	    	parkInfo = '기본 1시간 무료'
	    }else if (i === 2) {
	    	parkInfo = '기본 30분 무료'
	    }
	    
	/*     let transportation;
	    if (i === 0) {
	    	transportation = '[지하철 이용시]　지하철 1호선 정부청사역 하차'　　　　　　　　　
	    		+'[버스 이용시]'
	    		+'514,916,604,605,706,301,211,216,705,116,318,315번 버스'
	    		+'급행버스 이용'
	    		+'3번 버스'
	    } else if (i === 1) {
	    	transportation = '가든5 하차: 402'+
	    		'장지역 하차:302, 303, 320, 360, 363, 3418, 3423, 9403'
	    }else if (i === 2) {
	    	transportation = '3333333333'
	    }
	     */
	    let subway;
	    if (i === 0) {
	    	subway = '지하철 1호선 탄방역 2번출구 하차'
	    } else if (i === 1) {
	    	subway = '1호선 현충원역 하차'
	    }else if (i === 2) {
	    	subway = '월평역에서 하차(한국과학기술원 방향 1번출구)'
	    }
	    
	    
	    let bus;
	    if (i === 0) {
	    	bus = '514, 916, 604, 605, 706, 301, 211, 216, 705, 116, 318, 315번 버스'
	    } else if (i === 1) {
	    	bus = '104, 105, 117, 318, 911'
	    }else if (i === 2) {
	    	bus = '102, 108, 706, 106, 113, 911 (월평역 하차)'
	    }
	    
	    
	    
	    
	
	    // 마커를 생성하고 이미지는 기본 마커 이미지를 사용합니다
	    var marker = new kakao.maps.Marker({
	      map: map,
	      position: position,
	      /* text: text, */
	      image: normalImage
	    });
	
	    markerContents.push({
	      title: marker.n.La,
	    /*   contents: text, */
	      storeName: storeName,
	      parkInfo: parkInfo,
	      address: address,
	      subway: subway,
	      bus: bus
	    });
	        console.log(markerContents);
	
	    // 마커 객체에 마커아이디와 마커의 기본 이미지를 추가합니다
	    marker.normalImage = normalImage;
	
	    // 마커에 mouseover 이벤트를 등록합니다
	    kakao.maps.event.addListener(marker, 'mouseover', function() {
	
	      // 클릭된 마커가 없고, mouseover된 마커가 클릭된 마커가 아니면
	      // 마커의 이미지를 오버 이미지로 변경합니다
	      if (!selectedMarker || selectedMarker !== marker) {
	        marker.setImage(overImage);
	      }
	    });
	
	    // 마커에 mouseout 이벤트를 등록합니다
	    kakao.maps.event.addListener(marker, 'mouseout', function() {
	
	      // 클릭된 마커가 없고, mouseout된 마커가 클릭된 마커가 아니면
	      // 마커의 이미지를 기본 이미지로 변경합니다
	      if (!selectedMarker || selectedMarker !== marker) {
	        marker.setImage(normalImage);
	      }
	    });
	
	    // 마커에 click 이벤트를 등록합니다
	    kakao.maps.event.addListener(marker, 'click', function() {
	
	      if (!selectedMarker || selectedMarker !== marker) {
	
	        // 클릭된 마커 객체가 null이 아니면
	        // 클릭된 마커의 이미지를 기본 이미지로 변경하고
	        !!selectedMarker && selectedMarker.setImage(selectedMarker.normalImage);
	
	        // 현재 클릭된 마커의 이미지는 클릭 이미지로 변경합니다
	        marker.setImage(clickImage);
	      }
	
	      // 클릭된 마커를 현재 클릭된 마커 객체로 설정합니다
	      selectedMarker = marker;
	
	      console.log(selectedMarker);
	
	
	      for (const x in markerContents) {
	        if (markerContents[x].title === selectedMarker.n.La) {
	          console.log(markerContents[x].contents);
	          $("#store").html('<div id="store">'+'<br>'+'<h2 style="text-align:center">'+storeName+'</h2>'+'<br>'+'<ul style="list-style:none">'+'<li style="display:flex">'
	        		  +'<strong style="margin-right:100px">'+'주소'+'</strong>'+'<p style="text-align:right">'+address+'</p>'+'</li>'+'<li style="display:flex">'+'<strong style="margin-right:80px">'
	        		  +'연락처'+'</strong>'+'<p>'+tel+'</p>'+'</li>'+'<li style="display:flex">'+'<strong style="margin-right:60px">'+'주차 정보'
	        		  +'</strong>'+'<p>'+parkInfo+'</p>'+'</li>'+'<li style="display:flex">'+'<strong style="margin-right:50px">'
	                  +'오시는 방법'+'</strong>'+'<p>'+'[지하철 이용시]'+'<br>'+subway+'<br>'+'<br>'+'[버스 이용시]'+'<br>'+bus+'<br>'+'</p>'+'</li>'+'</ul>'+'</div>'
	            );
	        }
	      }
	
	    });
	  }
	
	  // MakrerImage 객체를 생성하여 반환하는 함수입니다
	  function createMarkerImage(markerSize, offset, spriteOrigin) {
	    var markerImage = new kakao.maps.MarkerImage(
	            SPRITE_MARKER_URL, // 스프라이트 마커 이미지 URL
	            markerSize, // 마커의 크기
	            {
	              offset: offset, // 마커 이미지에서의 기준 좌표
	              spriteOrigin: spriteOrigin, // 스트라이프 이미지 중 사용할 영역의 좌상단 좌표
	              spriteSize: spriteImageSize // 스프라이트 이미지의 크기
	            }
	    );
	
	    return markerImage;
	  }
	</script>
	
	<div id="store" style="width:1320px; margin:auto;">
		<br><h2 style="text-align:center">둔산본점</h2><br>
		<ul style="list-style:none">
		  <li style="display:flex">
		    <strong style="margin-right:100px;">주소</strong>
		    <p style="text-align:right">대전광역시 서구 계룡로 491번길 86 (둔산동 1221번지) 미래융합교육원</p>
		  </li>
		  <li style="display:flex;">
		    <strong style="margin-right:80px;">연락처</strong>
		    <p>Tel. 042-471-9222 / Fax. 042-471-9223</p>
		  </li>
		  <li style="display:flex">
		    <strong style="margin-right:60px">주차 정보</strong>
		    <p>30분 이내 회차시 무료</p>
		  </li>
		  <li style="display:flex">
		    <strong style="margin-right:50px">오시는 방법</strong>
		    <p>[지하철 이용시]<br>지하철 1호선 탄방역 2번출구 하차<br><br>[버스 이용시]<br>
		    514, 916, 604, 605, 706, 301, 211, 216, 705, 116, 318, 315번 버스</p>
		  </li>
		</ul>
	</div>

</div>

<%@ include file="../inc/footer.jsp" %>
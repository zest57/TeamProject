<%@page import="kr.mr.model.CategoryDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/header.jsp" %>


<body>
	<div class="container mt-5 d-flex justify-content-center">

		<div class = "w-50 border rounded p-5 shadow">
		
			<form method="post" name="uploadForm" action="<c:url value='uploadImage.do'/>" enctype="multipart/form-data">
		
				<h3 class="text-center ">파일 업로드</h3>
				
				<div class="form-group">
					 <label for=""></label>
					 <input type="text" type='' value="${vDto.cNum}" class="form-control" name="cNum"/>

				</div>

				<div class="form-group mt-3 d-flex justify-content-end mb-3">
					<div class="col-md-6 pe-1">
					 <!-- <label for="">업로드 파일 추가</label> -->
					 <input type="button" class="form-control btn btn-outline-white "  value=" 업로드 파일추가" onclick="fileAppend()"/>
					</div>
					 
					<div class="col-md-6 ps-1">
					 <input type="button" class="form-control btn btn-outline-white"  value=" 업로드 파일취소" onclick="fileRemove()"/>
					</div>
				</div>
				
				<div id="div-file" class="text-center"></div>
				<div class="form-group mt-3">
					<button type="submit" class="btn btn-outline-white form-control">파일 업로드</button>
				</div>
			</form>
		</div>
	</div>
	<script type="text/javascript">
		let cnt = 1;
		function fileAppend(){
			
			$("#div-file").append("<input type='file' accept='image/*' class='form-control mb-2' name='ImageFile"+cnt+"' onchange='preViewImg(this)'/>"
					+"<img class='mb-1'/><button type='button' class='btn-close border bg-light'"
					+"style='display:none; position:relative; left:-30px; top:-32px' onclick='resetInput(this)'></button>"
					+"<span>파일번호 : "+cnt+"<span>"+"</br>");
			cnt++;

		}
		
		function resetInput(obj){
			var imgTag = obj.previousSibling;
			var inputTag = obj.previousSibling.previousSibling;
			
			inputTag.value="";
			imgTag.src="";
			imgTag.width=0;
			imgTag.height=0;
			obj.style.display="none";
			
		}
		
		function fileRemove(){
			$("#div-file").empty();
		}
		
		function preViewImg(obj){
			// 다음 형제요소
			var imgTag = obj.nextSibling;
			var btnTag = obj.nextSibling.nextSibling;
			
			if(obj.files && obj.files[0]){// 파일이 선택되면 obj.files:두개이상, obj.files[0]:한개
				var fileReader = new FileReader();
				
				// 파일읽기 성공하면
				fileReader.onload = function(e){
					
					// e.target : 이벤트 발생 대상(input태그), 
					// result:읽어온 결과(바이너리)
					imgTag.width = 100;
					imgTag.height = 100;
					imgTag.src = e.target.result;
					btnTag.style.display="";
				}
				// 바이너리를 base64 형식의 문자열
				fileReader.readAsDataURL(obj.files[0]);
				console.log(imgTag);
			}else{
				imTag.src="";
			}
		}
	</script>


</body>
</html>
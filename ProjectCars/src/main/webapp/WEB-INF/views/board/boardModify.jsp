<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   
<%@ include file="../inc/header.jsp" %>

<div class="container mt-5">
	<div class="w-120 p-5 border bg-dark">
		<form id="moveForm" method="post" action="<c:url value='boardModify.do'/>">
			<input type="hidden" name="viewPage" value="${viewPage}"/>
			<input type="hidden" name="keyWord" value="${bvo.keyWord}"/>
			<input type="hidden" name="searchType" value="${bvo.searchType}"/>
			
			<h5>${board.subject}</h5>
			<div class="d-flex">
				<div class="form-group">
					<label for="subject">번호</label>
					<input type="text" size=1 class="form-control" id="bid" 
						name="bid" readonly value="${board.bid}"/>
				</div>
				<div class="form-group px-2">
					<label for="writer">글쓴이</label>
					<input type="text" size=8 class="form-control" id="writer" 
						name="writer" readonly value="${board.writer}"/>
				</div>
<%-- 				<div class="form-group">
					<label for="hit">조회수</label>
					<input type="text" class="form-control" id="hit" 
						name="hit" readonly value="${board.hit}"/>
				</div> --%>
			</div>
	
			<div class="form-group">
				<label for="subject">제목</label>
				<input type="text" class="form-control" id="subject" 
					name="subject" value="${board.subject}"/>
			</div>
	
			<div class="form-group">
				<label for="contents">내용</label>
				<textarea class="form-control" id="contents" 
					name="contents" rows="10">${board.contents}</textarea>
			</div>

			<div class="form-group mt-4">
				<button type="submit" id="btn-modify" class="btn btn-outline-white me-2">수정완료</button>
				<button type="button" id="btn-list" data-link="list" onclick="location.href='boardList.do'" class="btn btn-outline-white">글목록</button>
			</div>
		</form>
	</div>
</div>
<script type="text/javascript">
	$(document).ready(function(){
		
		var moveForm = $("#moveForm");
		
		$("button").on("click", function(e){
			e.preventDefualt();
			
			var linkBtn = $(this).data("link");
			
			if(linkBtn === "remove"){
				moveForm.attr("action", "boardRemove.do");
			}else if(linkBtn === "list"){
				moveForm.attr("action", "boardList.do").attr("method", "get");
				
				var viewPageObj = $("input[name='viewPage']").clone();
				var keyWordObj = $("input[name='keyWord']").clone();
				var searchTypeObj = $("input[name='searchType']").clone();
				
				moveForm.empty();
				
				moveForm.append(viewPageObj);
				moveForm.append(keyWordObj);
				moveForm.append(searchTypeObj);
			}
			moveForm.submit();
		})
		
	})
		
	
</script>

<%@ include file="../inc/footer.jsp" %>
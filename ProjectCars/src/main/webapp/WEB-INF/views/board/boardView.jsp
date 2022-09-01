<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="ctx" value="${pageContext.request.contextPath}"/> 
<%@ include file="../inc/header.jsp" %>

<div class="container mt-5">
   <div class="w-120 p-5 border bg-dark">
      <h5>${board.subject}</h5>
      
      <!-- 검색했을 때 해당 게시글 정보를 list로 넘겨줌 -->
      <form action="boardList.do" method="get" id="moveForm"> <!-- js:#moveForm -->
         <input type="hidden" name="viewPage" value="${viewPage}"/>
         <input type="hidden" name="searchType" value="${bvo.searchType}"/>
         <input type="hidden" name="keyWord" value="${bvo.keyWord}"/>
         <input type="hidden" name="bid" value="${board.bid}"/>
      </form>
      
      <div class="d-flex justify-contents-between">
         <div class="form-group">
            <label for="subject">번호</label>
            <input type="text" size=1 class="form-control" id="bid" 
               name="bid" disabled value="${board.bid}"/>
         </div>
         <div class="form-group px-2">
            <label for="writer">글쓴이</label>
            <input type="text" size=8 maxlength=8 class="form-control" id="writer" 
               name="writer" disabled value="${board.writer}"/>
         </div>
<%--          <div class="form-group">
            <label for="hit">조회수</label>
            <input type="text" class="form-control" id="hit" name="hit" disabled value="${board.hit}"/>
         </div> --%>
      </div>
      
      <div class="form-group">
         <label for="subject">제목</label>
         <input type="text" class="form-control" id="subject" 
            name="subject" disabled value="${board.subject}"/>
      </div>

      <div class="form-group">
         <label for="contents">내용</label>
         <textarea class="form-control col-sm-100" id="contents" 
            name="contents" rows="10" disabled><c:out value="${board.contents}" escapeXml="false"/></textarea>
      </div>
      <div class="form-group mt-4">
         <c:if test="${sessionScope.userId !=null && sessionScope.userId !=''}">
            <c:if test="${sessionScope.userId == 'admin'}"> <!-- board.id -->
               <button type="submit" id="btn-modify" class="btn btn-outline-white me-2">수정하기</button>
               <button type="button" id="btn-delete"  data-link="remove" class="btn btn-outline-white me-2">삭제하기</button>
                     
            </c:if>
            <c:if test="${sessionScope.userId != 'admin'}">
               <button type="submit" id="btn-modify" class="btn btn-outline-white me-2" disabled>수정하기</button>
               <button type="button" id="btn-delete"  data-link="remove" class="btn btn-outline-white me-2" disabled>삭제하기</button>
            </c:if>
         </c:if>
         <button type="button" id="btn-list" class="btn btn-outline-white me-2">글목록</button>
      </div>
      <!-------------------- 댓글 UI ------------------>
<%--       <div class="mt-5 d-flex justify-content-between mb-2">
         <h6 class=""><i class="fa fa-comments-o"></i> 댓글</h6>
         <c:if test="${sessionScope.userId != null && sessionScope.userId != ''}">
            <button id="btn-addReply" class="btn btn-sm btn-outline-secondary"
             data-bs-toggle="modal" data-bs-target="#replyModal">새댓글</button>
         </c:if>
         <c:if test="${sessionScope.userId == null || sessionScope.userId == ''}">
            <button id="btn-addReply" class="btn btn-sm btn-outline-secondary"
             onclick="javascript:alert('로그인 후 쓰기가 가능합니다!!')">새댓글</button>
         </c:if> --%>
         
<%--          <c:if test="${sessionScope.userId == admin}">
            <button id="btn-addReply" class="btn btn-sm btn-outline-secondary"
             onclick="javascript:alert('로그인 후 쓰기가 가능합니다!!')">새댓글</button>
         </c:if> --%>
      </div>
      
      <!------------------- 댓글 영역 ----------------->
<!--       <ul class="m-0 p-0 reply" style="list-style:none">
         <li class="mb-2">
            <div class="form-control">
               <div class="d-flex justify-content-between">
                  <h6><b>이름</b></h6><span>2022-07-14 16:02</span>
               </div>
               <p>댓글 내용</p>
            </div>
         </li>
         <li>
            <div class="form-control">
               <div class="d-flex justify-content-between">
                  <h6><b>홍길동</b></h6><span>2022-07-14 16:02</span>
               </div>
               <p>댓글 테스트 입니다.....</p>
            </div>
         </li>
      </ul>
      
   </div>
</div> -->

<!---------------------- modal ------------------------->
<!-- <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#replyModal" data-bs-whatever="@mdo">Open modal for @mdo</button> -->

<%-- <div class="modal fade" id="replyModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">댓글 달기</h5>
        <a type="button" class="btn-close" 
           data-bs-dismiss="modal" aria-label="Close"></a>
      </div>
      
      <div class="modal-body">
        <form>
          <div class="mb-3">
            <label for="reply_contents" class="col-form-label">댓글 내용</label>
            <textarea class="form-control" id="reply_contents"></textarea>
          </div>
          <div class="mb-3">
            <label for="replyer" class="col-form-label" id="replyer" name="replyer">(${userId})${userName}</label>
            <!-- <input type="text" class="form-control" id="replyer" name="replyer"> -->
          </div>
          <div class="mb-3">
            <label for="replyDate" class="col-form-label">등록일</label>
            <input type="text" class="form-control" name="replyDate" id="replyDate">
          </div>
          
        </form>
      </div>
      
      <div class="modal-footer">
        <button type="button" id="btn-md-modify"class="btn btn-sm btn-primary">수정</button>
        <button type="button" id="btn-md-remove"class="btn btn-sm btn-danger">삭제</button>
        <button type="button" id="btn-md-register"class="btn btn-sm btn-primary">댓글 등록</button>
        <button type="button" id="btn-md-close" class="btn btn-sm btn-secondary" data-bs-dismiss="modal">닫기</button>
      </div>
    </div>
  </div>
</div>
 --%>

<!---------------------------------------------->
<!-- <script type="text/javascript" src="js/reply.js"></script> -->

<script type="text/javascript">

	$(document).ready(function(){
					// # : id . : class
		var moveForm = $("#moveForm");
					
		$("#btn-modify").click(() => {
			moveForm.attr("action", "boardModify.do");
			moveForm.submit();
		})
		
		$("#btn-delete").click(() => {
			moveForm.attr("action", "boardRemove.do");
			moveForm.submit();
		})
		
		$("#btn-list").click(() => {
			moveForm.attr("action", "boardList.do");
			moveForm.submit();
		})
		
		
		
	});
		
/*       /// 댓글 리스트 ///
      var bidValue = "<c:out value='${board.bid}'/>";
      
      var rUL = $(".reply");
      
      displayList();
      
      function displayList(){
         replyFunc.getList(
            {bid:bidValue}, function(list){
               console.log('list: '+ list);
               
               var str= "";
               
               
               if(list == null || list.length == 0){
                  rUL.html("");
                  return;
               }
               
               for(var i = 0, len = list.length || 0; i < len; i++){
                  str +='<li class="mb-2" data-rno="'+list[i].rno+'"><div class="form-control">'
                     +'<div class="d-flex justify-content-between"><h6><b>'
                     +list[i].replyer+'</b></h6>';
                  str +='<span>'+replyFunc.showDateTime(list[i].reply_date)+'</span></div>';
                  str +='<p style="cursor:pointer;">'+list[i].reply_contents+'</p></div></li>'
               }
               
               rUL.html(str);
            });
      } // displayList */
      
      ///////////////////////// modal /////////////////////////
 <%--      var modal = $("#replyModal");
      var taReplyContents = $("#reply_contents");
       var ipReplyer = $("#replyer"); 
/*       var ipReplyer = modal.find("input[name=replyer]"); */
      var ipReplyDate = $("#replyDate");
      
      var modBtn = $("#btn-md-modify");
      var delBtn = $("#btn-md-remove");
      var regBtn = $("#btn-md-register");

      let userName = "${sessionScope.userName}";
      let userId = "${sessionScope.userId}"
      // console.log(userName);

      // 새댓글 버튼 이벤트 처리
      $("#btn-addReply").on("click", function(e){
         taReplyContents.val("");
         // ipReplyer.attr("readonly", false);
         ipReplyer.attr("readonly", true);
         // ipReplyer.val(userName);
         // 댓글 작성시 로그인한 userId를 등록한다. 댓글 table에 저장
         ipReplyer.val(userId);
         ipReplyDate.closest("div").hide(); // 가장 가까운 조상을 선택
         
         modal.find("button[id != 'btn-md-close']").hide();
         regBtn.show();
         
      }); --%>
      
      /* console.log("reply_contents:" + taReplyContents.val());
      console.log("replyer : " + ipReplyer.val()); */
      
      
      // 댓글 등록 버튼 클릭시 이벤트 처리
 /*      regBtn.on("click", function(e){
         if(taReplyContents.val() == null || taReplyContents.val().trim()==''){
            alert("댓글을 입력하세요!!");
            taReplyContents.focus();
            return;
         }
         if(ipReplyer.val() == null || ipReplyer.val().trim()==''){
            alert("작성자를 입력하세요!!");
            ipReplyer.focus();
            return;
         }
         
         
         // 댓글 입력 데이터(JSON)
         var reply = {
               reply_contents:taReplyContents.val(),
               replyer : ipReplyer.val(),
               bid:bidValue
         };
         
         replyFunc.register(reply, function(result){
            // 서버에서 넘어온 결과를 띄우기
            alert(result);
            
            // 등록한 내용을 다시 등록할 수 없도록 입력항목을 비우기
            modal.find("input").val("");
            taReplyContents.val("");
                        
            modal.modal("hide"); // 모달창 닫기
            
            displayList();
         });
      });
      
      // 댓글 조회 클릭 이벤트 처리
      // click이벤트를 li에게 위임(전가) 시켜준다.
      $(".reply").on("click", "li", function(e){
         var rno = $(this).data("rno");
         
         replyFunc.get(rno, function(reply){
            taReplyContents.val(reply.reply_contents);
            ipReplyer.val(reply.replyer).attr("readonly", true);
            ipReplyDate.val(replyFunc.showDateTime(reply.reply_date)).attr("readonly", true);
            ipReplyDate.closest("div").show();

            // rno를 modal에 저장시켜 놓는다. key, value 형식으로 저장
            modal.data("rno", reply.rno); // data-rno = "10"
            
            modal.find("button[id != 'btn-md-close']").hide();
            // 댓글 table의 id와 로그인한 아이디(userId)가 일치하는 경우
            // 자신이 쓴 댓글만 수정 삭제할 수 있도록
            if(userId == reply.replyer) {
               modBtn.show();
               delBtn.show();
            }
            
            modal.modal("show"); // 모달창 띄우기
         });
      });
      
      // 수정 이벤트 처리
      modBtn.on("click", function(e){
         var reply = {rno:modal.data("rno"), 
               reply_contents: taReplyContents.val()};
         
         replyFunc.update(reply, function(result){
            alert(result);
            modal.modal("hide");
            displayList();
         });
      });
      
      // 삭제 이벤트 처리
      delBtn.on("click", function(e){
         var rno = modal.data("rno");
         
         replyFunc.remove(rno, function(result){
            alert(result);
            modal.modal("hide");
            displayList();
         });
      }) */
      
      

</script>

<%@ include file="../inc/footer.jsp" %>
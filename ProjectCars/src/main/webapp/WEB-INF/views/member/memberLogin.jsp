<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

    



<!DOCTYPE html>
<html lang="kr">
  <head>
    <meta charset="UTF-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <title>Paramount Motors</title>
    <!-- MDB icon -->
    <link rel="icon" href="img/mdb-favicon.ico" type="image/x-icon" />
    <!-- Font Awesome -->
    <link
    type="text/css"
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
    />
    <!-- Google Fonts Roboto -->
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700;900&display=swap"
    />
    <!-- MDB -->
    <link rel="stylesheet" href="resources/css/mdb.min.css" />
    <!-- Font -->
    <link rel="stylesheet" href="${ctx}/resources/css/font.css">
    <!-- Jquery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script> 
    <!-- 로그인 리소스 -->
	<script type="text/javascript" src="${ctx}/resouces/js/login.js"></script>
	<link rel="stylesheet" href="${ctx}/resources/css/login.css">
	<!-- 로그인 유효성 체크 -->
	<script type="text/javascript" src="${ctx}/resources/js/login_valid.js"></script>
	<style>
    .navbar .nav-link {
      color: #fff !important;
      font-family: LeferiPoint-WhiteObliqueA;
    }
        
    h1,h2,h3,h4,h5,h5,p{   
   		font-family: LeferiPoint-WhiteObliqueA;
  </style>
  </head>
  
  
<body>
    <!-- Start your project here-->





<!-- 로그인 메세지  -->
<script type="text/javascript">

$(document).ready(function(e){ 
if(${LoginProcess == 'Fail'}){
	document.getElementById("loginFail").innerHTML = "아이디 또는 비밀번호를 잘못 입력했습니다."
}	  
});

/* $(document).ready(function(e){
    $("loginReload").load(window.location.href + "loginReload");
} */

</script>


<div class="container">
 <!-- Navbar -->
  <nav
       class="navbar navbar-expand-lg navbar-dark d-none d-lg-block w-100"
       style="z-index: 2000; height: auto ; box-shadow: 0em;"
       >
    <div class="container-fluid w-100">
      <!-- Navbar brand -->
      <a
         class="navbar-brand nav-link"
         href="#ProjectCars"
         >
        <strong>ProjectCars</strong>
      </a>

      <div class="collapse navbar-collapse" id="navbarExample01">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item active">
            <a class="nav-link" aria-current="page" href="home.do">Home</a>
          </li>        
        </ul>

        <ul class="navbar-nav list-inline">
          <!-- Icons -->
          <li class="">
            <a
               class="nav-link"
               href="https://www.youtube.com/"
               rel="nofollow"
               target="_blank"
               >
              <i class="fab fa-youtube"></i>
            </a>
          </li>
          <li class="">
            <a
               class="nav-link"
               href="https://www.facebook.com/"
               rel="nofollow"
               target="_blank"
               >
              <i class="fab fa-facebook-f"></i>
            </a>
          </li>
          <li class="nav-item">
            <a
               class="nav-link"
               href="https://twitter.com/"
               rel="nofollow"
               target="_blank"
               >
              <i class="fab fa-twitter"></i>
            </a>
          </li>
          <li class="nav-item">
            <a
               class="nav-link"
               href="https://github.com/" 
               rel="nofollow"
               target="_blank"
               >
              <i class="fab fa-github"></i>
            </a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
  <!-- Navbar -->
<div class="container right-panel-active" style="max-height: auto ">
 
	<!-- Sign Up -->
	<div class="container__form container--signup">
		<form action="memberLoginOK.do" method="post" class="form" id="form1" name="loginForm"> <!-- 로그인폼 -->
			<h2 class="form__title">회원 로그인</h2>
			<input type="text" placeholder="아이디 입력" id="id" name="id" class="input" />
			<input type="password" placeholder="비밀번호 입력" id="name" name="pw" class="input" />
			<a href="#" class="link" onclick="javascript:alert('기능 미구현 추후 작업예정입니다')">비밀번호 찾기</a>
			<p id='loginFail' style="color: red ;font-size: 0.9rem"></p>
			<p id="loginReload"></p>
			<button type="button" class="btn" onclick="loginChk() ;">로그인</button>
		</form>
	</div>

	<!-- Overlay -->
	<div class="container__overlay">
		<div class="overlay">
			<div class="overlay__panel overlay--left">
				<a href="memberRegister.do">
					<button class="btn" id="join">
						회원가입
					</button>
				</a>
			</div>
		</div>
	</div>
</div>
</div >


<script src="https://code.jquery.com/jquery-3.6.0.slim.js" integrity="sha256-HwWONEZrpuoh951cQD1ov2HUK5zA5DwJ1DNUXaM6FsY=" crossorigin="anonymous"></script>

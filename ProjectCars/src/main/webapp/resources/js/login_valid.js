function loginChk(){
	
	/* 아이디검사 */
	if(document.loginForm.id.value.length == 0){
		alert("아이디를 입력해주세요!");
		loginForm.id.focus();
		return;
	}
	
	/* 아이디검사 */
	if(document.loginForm.id.value.length < 3){
		alert("아이디는 최소 3글자 이상이어야 합니다!");
		loginForm.id.focus();
		return;
	}
	
	/* 비번검사 */
	if(document.loginForm.pw.value.length == 0 ){
		alert("비밀번호를 입력하세요!");
		loginForm.pw.focus();
		return;
	}
	
	document.loginForm.submit();
}	
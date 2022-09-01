function revChk(){
	
	/* 예약자명 */
	if(document.revForm.revName.value.length == 0){
		alert("예약자의 이름을 입력해 주세요");
		revForm.revName.focus();
		return;
	}
	
	
	/* 주민번호1 */
	if(document.revForm.revJumin1.value.length == 0){
		alert("예약자의 이름을 입력해 주세요");
		revForm.revJumin1.focus();
		return;
	}
	
	/* 주민번호2 */
	if(document.revForm.revJumin2.value.length == 0){
		alert("주민번호를 입력하세요");
		revForm.revJumin2.focus();
		return;
	}
	
	/* 연락처 */
	if(document.revForm.revTel.value.length == 0){
		alert("연락처를 입력하세요");
		revForm.revTel.focus();
		return;
	}

	/* 렌트지역 */
	if(document.revForm.revAddr.value.length == 0){
		alert("렌트지역을 체크 하세요");
		revForm.revTel.focus();
		return;
	}
	
	/* 사용날짜1 */
	if(document.revForm.datepicker1.value.length == 0){
		alert("예약 날짜를 체크하세요");
		revForm.datepicker1.focus();
		return;
	}	


	
	document.revForm.submit();

	
	
}
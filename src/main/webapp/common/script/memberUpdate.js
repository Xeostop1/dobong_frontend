function gohome(){
	if(window.confirm("작성한 정보가 모두 사라집니다. 정말 돌아가시겠습니까?")){
		location.href="LandingServlet";
	}else{
		return false;
	}	
}
/* 유효성 검사 추가할 것 */


function update_submit(){
	if(window.confirm("수정하시겠습니까?")){
		location.href="LandingServlet";
	}else{
		return false;
	}
}

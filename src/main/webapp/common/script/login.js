function gohome(){
	//랜딩서블릿으로 갈수 있게 수정
 	location.href="LandingServlet";
 }
/* 유효성 체크 추후 작성 파일만 미리 분할 */
	
function check() {
	let id=document.frm.id.value;
	console.log(id);
	let password=document.frm.password.value;
	
	if(id.length===0){
		alert("id를 입력해주세요");
		return false;
	}else if(password.length===0){
		alert("비밀번호를 입력해주세요");
		return false;
	}
	return true;
}

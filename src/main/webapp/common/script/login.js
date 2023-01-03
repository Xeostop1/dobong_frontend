function gohome(){
	if(window.confirm("작성한 정보가 모두 사라집니다. 정말 돌아가시겠습니까?")){
		location.href="LandingServlet";
	}else{
		return false;
	}	
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
function pwd_change(){
	var pwd = document.getElementById("password");
		
	if(pwd.type=="password"){
		pwd.type="text";
	}else if(pwd.type=="text"){
		pwd.type="password";
	}
}
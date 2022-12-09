function gohome(){
	if(window.confirm("작성한 정보가 모두 사라집니다. 정말 돌아가시겠습니까?")){
		location.href="LandingServlet";
	}
	else{
		return false;
	}	
}

/* 전화 번호 input 자동 tab */
function moveinput(){
	if( document.getElementById("phone2").value.length === 0)
	{
		document.getElementById("phone2").addEventListener("keydown", function(e){
			if(e.keyCode == 8)
				// 8 = 백스페이스
			{
				document.getElementById("phone1").focus();
				//alert("box2가 공란인 상태에서 백스페이스를 눌렀을때 box1으로 이동");
				// length가 아닌 진짜 공란("") 등으로도 처리할 수 있음 
			}
		//	if(e.keyCode == 37)
		//		// 37 = 방향키 ←
		//	{
		//		document.getElementById("phone1").focus();
		//	}
		});
		// 방향키로도 좌우 인풋이동이 가능하게 구현하려고 했으나 코드 복잡도에 비해 실효성이 없어서 구현하지 않을 예정
		// 하나 남긴 건 테스트용
	}
	else{
			document.getElementById("phone2").addEventListener("keydown", function(e){
			document.getElementById("phone2").focus();
		});
	}	
	// box2가 공란일 때 box1 focus라는 조건만 줄 경우
	// box3의 숫자를 지울 때에도 box1로 이동하는 문제가 발생함
	// ex) 010 -   - 7890 //에서 7890을 지우려고 해도 box1로 이동해버리기 때문에
	// 추가적인 조건이 필요함
	// else문 하나로 퉁치려다보니 코드가 꼬였고, 이를 결국 해결 못했음
	// else if 등으로 조건을 완벽하게 잡아야 버그가 안 생길듯함
	
	if( document.getElementById("phone3").value.length === 0)
	{
		document.getElementById("phone3").addEventListener("keydown", function(e)
		{
			if(e.keyCode == 8)
			{
				document.getElementById("phone2").focus();	
				//alert("box3이 공란인 상태에서 백스페이스를 눌렀을때 box2로 이동");
			}	
		});
	}
	else{
			document.getElementById("phone3").addEventListener("keydown", function(e)
			{
				document.getElementById("phone3").focus();	
			});
		}
	if( document.getElementById("phone1").value.length === 3 )
	{
		document.getElementById("phone1").addEventListener("keypress", function(e)
		{
			if(e.keyCode >= 48 && e.keyCode <= 57)
				//48~57 = 숫자 0~9
			{
				document.getElementById("phone2").focus();
			}
		});
	}
	if( document.getElementById("phone2").value.length === 4)
	{
		document.getElementById("phone2").addEventListener("keypress", function(e)
		{
			if(e.keyCode >= 48 && e.keyCode <= 57)
			{
				document.getElementById("phone3").focus();
			}
		});
	}
}
/* 우편 번호 */
function postcode(){	
	new daum.Postcode({
		oncomplete:function(data){
	    	document.getElementById("post_road").value = data.address; // 주소 넣기
	    	document.getElementById("post_code").value = data.zonecode;
	    	document.querySelector("input[name=address_detail]").focus(); //상세입력 포커싱
		}
	}).open();
}
/* 비밀번호 input 타입 변경 */
function pwd_change(){
	var pwd = document.getElementById("password");
		
	if(pwd.type=="password"){
		pwd.type="text";
	}else if(pwd.type=="text"){
		pwd.type="password";
	}
}
function chk_change(){
	var chk_pwd = document.getElementById("check_password");
		
	if(chk_pwd.type=="password"){
		chk_pwd.type="text";
	}else if(chk_pwd.type=="text"){
		chk_pwd.type="password";
	}
}

/* 가입 이유 글자수 표시 */
function counter(text,length){
	var lmt = length;
	var str = text.value.length;
	
	if(str>lmt){
		alert("글자 수는 40자를 초과할 수 없습니다.")
		text.value=text.value.substring(0,lmt);
		text.focus();
	}
	document.getElementById("cntsp").innerHTML = str + " / " + lmt;	
}

/* 취소, 리셋 */
function goBack(){
	if(window.confirm("작성한 정보가 모두 사라집니다. 정말 돌아가시겠습니까?")){
		window.history.back();
	}
	else{
		return false;
	}
}
function re_set(){
	if(window.confirm("작성한 정보가 모두 사라집니다.")){
		window.location.reload();
	}
	else{
		return false;
	}
}
/* 유효성 검사 */
function signUpCheck(){

	var check = document.join;
	/* 
		value넣은 변수로 수정할 예정
	*/
	if(check.name.value.length==0){
		alert("아이디를 입력해주세요.");
		join.name.focus();
		return 
	}
	else if(!/^[가-힣]{1,6}$/.test(check.name.value)){
		alert("아이디를 제대로 !!!! 한글로@! 입력해주세요.");
		join.name.focus();
		return false;
	}
	/*정규식
		가-힣 = 한글
		{1,6} = 1~6글자
	*/
	else if(check.nickname.value.length==0){
		alert("닉네임을 입력해주세요.");
		join.nickname.focus();
	}
	else if(!/^[a-zA-z0-9]{3,12}$/.test(check.nickname.value)){
		alert("닉네임은 영문 대소문자와 숫자 3~12자리만 입력 가능합니다.");
		join.nickname.focus();
	}
	else if(check.password.value.length==0){
		alert("비밀번호를 입력해주세요.");
		join.password.focus();
	}
	else if(check.check_password.value.length==0){
		alert("비밀번호를 다시 입력해주세요.");
		join.check_password.focus();
	}
	
	else if(check.password.value!=check.check_password.value){
		alert("비밀번호가 일치하지 않습니다.")
		join.check_password.focus();
	}
	else if(check.phone.value.length==0){
		alert("휴대전화번호를 입력해주세요.");
		join.phone.focus();
	}		
	else if(check.email.value.length==0){
		alert("이메일 주소를 입력해주세요.  @확인 및 필수문자열 결합필수");
		join.email.focus();
	}		
	/* 기존 폼에 이메일은 2분할, 휴대전화는 3분할로 되어있어서 나중에 분할하고 추가하는 작업을 할 것임
		alert 부분은 신경 안 쓰셔도 됨
	*/

	else if(check.address.value.length==0){
		alert("주소를 입력해주세요. 아래에 있는 카카오api");
		join.address.focus();
	}
	
	/* 문제가 생기는 부분 토스 항목을 체크하지 않았을 경우 submit이 작동되지 않게 해야함 
	tos, tos2는 임시로 만든 체크박스 1과 2의 id값
	여기 조건식이 잘못되었을 확률이 높음 */
	
	/* 캡스락 넣을 것 */
}





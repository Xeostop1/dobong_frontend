function gohome(){
	//랜딩서블릿으로 갈수 있게 수정
 	location.href="LandingServlet";
 }
function pop_tos1(){
	window.open('tos/tos1_big.jsp','도봉따봉 약관1','width=900px,height=700px,scrollbars=yes,toolbar=no,resizeable=no');
}
function pop_tos2(){
	window.open('tos/tos2_big.jsp','도봉따봉 약관2','width=900px,height=700px,scrollbars=yes,toolbar=no,resizeable=no');
}
function closePop(){
	window.open('', '_self', '');
	window.close();
}
function goback(){
	window.history.back(-1);
}

//약관 모두 체크, 모두 체크 해제 기능

function check()  {
 
  const boxAll = document.querySelectorAll('input[name="tosCheck"]');
  const boxSlc = document.querySelectorAll('input[name="tosCheck"]:checked');
  const tosAll = document.querySelector('input[name="tosAll"]');
  
  if(boxAll.length === boxSlc.length)  {
    tosAll.checked = true;
  }else {
    tosAll.checked = false;
  }	
}
function checkAll(tos)  {
  const boxAll = document.getElementsByName('tosCheck');
  
  boxAll.forEach((checkbox) => {
    checkbox.checked = tos.checked
  })
}


function valid_check(){
	var tck = document.getElementByName("tosCheck");
	
	if(tck.tosCheck[0].checked==false){
		alert("체크박스");
		return false;
	}
	else{
		location.href=nextsignup.jsp; 
	}
	
}





/* 유효성 체크
function
	else if(!tos.checked){
		alert("필수약관에 동의하셔야합니다.");
		join.tos.focus();
		
	}
	else if(!tos2.checked){
		alert("필수약관에 동의하셔야합니다.");
		join.tos2.focus();
	
	}
	else{
		return true;
		
	}

	
*/
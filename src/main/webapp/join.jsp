<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!doctype html>
<html lang="ko">
	<head>
		<meta charset="UTF-8">
		<title>회원가입 페이지</title>
		<link rel="stylesheet" href="./common/css/join.css">
		<script src="./common/script/join.js"></script>
		<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	</head>
	<body>
		<div id="wrap">
			<div class="joinwrap">
				<form action="JoinServlet" method="post" name="join" id="join">
					<div class="join_title">
						<h1 onclick="gohome()">D O B O N G</h1>
					</div>
				<div id="headerwrap">
					<div class="write">
						<div id="please" class="wrap">
							<h4>기본 정보 입력</h4>
							<hr>
							<p>아래 항목을 입력해주세요<em id="redstar">(&nbsp;*&nbsp;필수)</em></p>
						</div>
					</div>
				</div>
					<div id="contents">
						<div id="id" class="con">
							<div class="con_left"><em>&nbsp;*&nbsp; </em>아이디</div>
							<div class="con_mid">
								<input id="textId" required pattern=".*\S.*" type="text" maxlength="20" placeholder="예) example@naver.com" autofocus>
								<input type="button" value="중복확인" onclick="alert('사용가능한 아이디입니다')">
							</div>
						</div>
						<p>ex) 아이디로 사용하실 이메일을 입력해주세요</p>
							
				<!-- 이메일(email) -->
						<div id="email" class="con">
							<div class="con_left"><span><em>&nbsp;*&nbsp; </em>이메일</span></div>
							<div class="con_mid">
							<input type="text" id="emailHead" name="emailHead">
							<span id="emailSp">@</span>
							
							<input id="emailBody" name="emailBody" type="email" placeholder="이메일을 선택하세요." onchange="emailText()">
								<select id="emailList" name="emailList" onchange="emailChange()">
									<option id="" value="email" disabled selected>이메일 선택</option>
									<option id="naver" value="naver.com">naver.com</option>
									<option id="nate" value="nate.com">nate.com</option>
									<option id="gmail" value="gmail.com">gmail.com</option>
									<option id="hanmail" value="hanmail.net">hanmail.net</option>
									<option id="tp" value="tp">기타[직접입력]</option>
								</select>								
							</div>
						</div>
						<br>
							
						<div id="name" class="con">
							<div class="con_left"><em>&nbsp;*&nbsp; </em>이름</div>
							<div class="con_mid">
							<input id="name" required pattern=".*\S.*" type="text" maxlength="3" placeholder="이름을 입력해주세요">
							</div>
						</div>	
											
						<div id="passwordwrap1" class="con">
							<div class="con_left"><em>&nbsp;*&nbsp; </em>비밀번호</div>
							<div class="con_mid"><input id="password" type="password" maxlength="20" autocomplete="off" placeholder="비밀번호를 입력해주세요.">
							</div>
						</div>	
						<div id="passwordwrap2" class="con">	
							<div class="con_left"><em>&nbsp;*&nbsp; </em>비밀번호 확인</div>
							<div class="con_mid"><input id="check_password" type="password" maxlength="20" autocomplete="off" placeholder="비밀번호를 재입력해주세요." >
							<input id="pwd_btn" type="button" value="비밀번호 보기" onclick="pwd_change()">
						</div>
						</div>
						
						<p class="pleasePw">8~20자 영문 대 소문자, 숫자, 특수문자를 사용하세요</p>
						

						<div id="nickname" class="con">
							<div class="con_left"><em>&nbsp;*&nbsp; </em>닉네임</div>
							<div class="con_mid"><input id="textname" type="text" maxlength="10" placeholder="닉네임을 입력해주세요.">
							<input type="button" value="중복확인" onclick="alert('사용가능한 닉네임입니다.')"></div>							
						</div>
							<p class="pleaseName">
								6~10자 닉네임을 입력해주세요.(띄어쓰기는 할 수 없습니다.)
							</p>
							
						
						
						<!-- 휴대폰 번호 -->
						<div id="phone" class="con">
							<div class="con_left"><em>&nbsp;*&nbsp; </em>휴대전화</div>
							
							<div class="con_mid"><input id="phone1" type="text" size="1" maxlength="3" oninput="moveinput()" onkeyPress="onlyNumber()"> -
							<input id="phone2" type="text" size="3" maxlength="4" oninput="moveinput()" onkeyPress="onlyNumber()"> -
							<input id="phone3" type="text" size="3" maxlength="4" oninput="moveinput()" onkeyPress="onlyNumber()"></div>
						</div>
						<div class="con_left">
							<input id="phonetotal" type="text" placeholder="hidden">
						</div>	

							
					
					<!-- 주소, 우편번호 입력 -->
						<div id="postwrap" class="con">
							<div class="con_left">
							<span><em>&nbsp;*&nbsp; </em>우편번호</span> </div>
							<div class="con_mid"><input type="text" id="post_code" placeholder="우편번호" readonly>
							<div class=""><input type="button" onclick="postcode()" value="우편번호 찾기"></div>
							
							<input type="text" id="post_road" placeholder="도로명주소" style="width:400px;"readonly>
							<span id="guide" style="display:none"></span>
							<input type="text" id="post_detail" name="address_detail" placeholder="상세주소" style="width:50%;">
							<input type="hidden" id="post_hidden" >
							
							<div id="layer" style="display:none;position:fixed;overflow:hidden;z-index:1;-webkit-overflow-scrolling:touch;">
							</div></div>
						</div>
						<div class="con_mid">
							<p><em style="font-size:10px;">&nbsp; * 주소검색이 되지 않을 경우, '상세주소'란에 직접 입력하시면 됩니다.</em></p>
						</div>
					
					<!-- 가입 이유 -->	
						<div class="con_mid">
						<b style="font-size: 11px;">&nbsp;가입 이유</b>
						</div>
						<div id="meter">
						<textarea class="con" id="textBox" maxlength="41" placeholder="가입 이유를 적어주세요" onkeyup="counter(this,40)"></textarea>
						<div id="count"><span id="cntsp"></span></div>
						</div>	
						
							
						<br>
						
						
						
						<!-- 약관 체크 박스 히든 처리 -->
						<div class="tos">
							<input type="checkbox" name="tos" class="tos1" value="1" checked="checked" onclick="return false;"><span>약관1</span>
							<input type="checkbox" name="tos" class="tos2" value="2" checked="checked" onclick="return false;"><span>약관2</span>
						</div>	
					</div>
			
			
			
			
			
					<!-- 가입 버튼 -->
					<br><hr><br>
						<div class="submitwrap">
						
							<input id="cancel" class="ftBtn" type="button" value="취소하기" onclick="goBack()">
							<input id="reset" class="ftBtn" type="button" value="다시쓰기" onclick="re_set()">
							<input id="join" class="ftBtn" type="button" value="가입하기" onclick="signUpCheck(); return false;">
							
						</div>
				</form>				
			</div>
		</div>
	</body>
</html>
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
					<div class="join_list">
						<div class="title_h1">
							<h1 onclick="gohome()">D O B O N G</h1>
						</div>
						<div id="please">
							<h4>기본 정보 입력</h4>
							<hr>
							<p>아래 항목을 입력해주세요</p>
						</div>
					
					<!-- 이메일(email) id -->
						<div id="id" class="con">
							<h4>아이디</h4>
							<input type="text" class="email" name="email" required pattern=".*\S.*" maxlength="50" placeholder="예) example@naver.com" autofocus>
							<p>ex) 아이디로 사용하실 이메일을 입력해주세요</p>
						</div>
					
					<!-- 닉네임 -->
						<div id="nickname" class="con">
							<h4>닉네임</h4>
							<input type="text" class="nickname" name="nickname" maxlength="10" placeholder="닉네임을 입력해주세요.">					
							<p class="pleaseName">6~10자 닉네임을 입력해주세요.(띄어쓰기는 할 수 없습니다.)</p>
						</div>
					
					<!-- 비밀번호 -->	
						<div class="passWrap">				
							<div id="passwordwrap1" class="con">
								<h4>비밀번호</h4>
								<input type="password" id="password" name="password" maxlength="20" autocomplete="off" placeholder="비밀번호를 입력해주세요.">
								<div class="eyes1" onclick="pwd_change()"></div>	
							</div>	
							<div id="passwordwrap2" class="con">	
								<h4>비밀번호 확인</h4>
								<input id="check_password" type="password" name="check_password" maxlength="20" autocomplete="off" placeholder="비밀번호를 재입력해주세요." >
								<div class="eyes2" onclick="chk_change()"></div>	
							</div>
							<p class="please_pass">8~20자 영문 대 소문자, 숫자, 특수문자를 사용하세요</p>
						</div>
					<!-- 이름 -->		
						<div id="name" class="con">
							<h4>이름</h4>
							<input id="name" required pattern=".*\S.*" type="text" maxlength="6" placeholder="이름을 입력해주세요">
						</div>			
							
					<!-- 휴대폰 번호 -->
						<div id="phone" class="con2">
							<h4>휴대전화</h4>				
							<input id="phone1" type="text" size="1" maxlength="3" oninput="moveinput()"> -
							<input id="phone2" type="text" size="3" maxlength="4" oninput="moveinput()"> -
							<input id="phone3" type="text" size="3" maxlength="4" oninput="moveinput()">
						
							<br>
							<input id="sum_phone" name="phone" type="text" placeholder="hidden">
						</div>
					<!-- 주소, 우편번호 입력 -->
						<div id="postwrap" class="con3">
							<h4>우편번호</h4>
							<div>
								<div class="post1">
									<input type="text" id="post_code" placeholder="우편번호" readonly="readonly">
									<input type="button" id="post_click" onclick="postcode()" value="우편번호 찾기">
								</div>
								<div class="post2">
									<input type="text" id="post_road" placeholder="도로명주소" readonly>
									<span id="guide" ></span>
								</div>
								<div class="post3">
									<input type="text" id="post_detail" name="address_detail" placeholder="상세주소">
								</div>
								<div class="post4"><input type="text" placeholder="post_hidden" id="post_hidden" name="address" ></div>
								<div id="layer"></div>
							</div>
						</div>
					
					<!-- 가입 이유 -->	
						<div id="meter" class="con">
							<h4>가입이유</h4>
							<textarea class="con" name="meter" id="textBox" maxlength="41" placeholder="가입 이유를 적어주세요" onkeyup="counter(this,40)"></textarea>
							<div id="count"><span id="cntsp"></span></div>
						</div>	
	
					<!-- 약관 체크 박스 히든 처리 -->
						<div class="tos">
							<input type="checkbox" name="tos" class="tos1" value="1" checked="checked" onclick="return false;"><span>약관1</span>
							<input type="checkbox" name="tos" class="tos2" value="2" checked="checked" onclick="return false;"><span>약관2</span>
						</div>	
					</div>

					<!-- 가입 버튼 -->
					<div class="join_submit">		
						<input id="join" class="ftBtn" type="button" value="가입하기" onclick="signUpCheck(); return false;">
					</div>
					<br>
					<br>
				</form>				
			</div>
		</div>	
	</body>
</html>
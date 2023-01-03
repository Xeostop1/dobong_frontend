<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>회원정보 수정</title>
		<!-- 아이콘 -->
		<link rel="icon" href="images/icon1.ico">
		<link rel="stylesheet" href="./common/css/memberUpdate.css">
		<script src="./common/script/memberUpdate.js"></script>
	</head>
	<body>
		<div id="wrap">
			<div class="mypage_wrap">
			<h1>마이페이지</h1>
			<h1 onclick="gohome()">D O B O N G</h1>
		
		 <!-- members -->
				<form action="RegisterUpdateServlet" method="post">
				 	<div class="myMenu">
				 		<div class="myHidden">
					 		<input name="id" type="hidden" value="${members.getId() }" readonly="readonly">
					 		<input name="number" type="hidden" value="${members.getNumber() }" readonly="readonly">
				 			<input name="email" type="hidden" value="${members.getEmail() }" readonly="readonly">
					 		<input name="tos1" type="hidden" value="${members.getTos1() }" readonly="readonly">
					 		<input name="tos2" type="hidden" value="${members.getTos2() }" readonly="readonly">
					 		<input name="meter" type="hidden" value="${members.getMeter() }" readonly="readonly">
					 		<input name="admin" type="hidden" value="${members.getAdmin() }" readonly="readonly" >
						</div>
						<div class="myNickname">
							<input name="nickname" value="${members.getNickname() }" placeholder="닉네임을 적어주세요"> 
				 			<input type="button" value="중복확인">	
				 		</div>
				 		<div class="myPass">
				 			<input name="password" type="password" placeholder="비밀번호는 8~20자의 영문 대소문자, 숫자, 특수문자"><br>
					 	</div>
					 	<div class="myName">
					 		<input name="name" value="${members.getName() }" placeholder="이름">
					 	</div>
					 	<div class="myPhone">
					 		<input name="phone" value="${members.getPhone() }"  placeholder="전화번호"><br>
					 	</div>
					 	<div class="myAddress">	
					 		<input name="address" value="${members.getAddress() }"  placeholder="주소"><br><br>
				 		</div>
										 		<div class="update_submit">
				 			<input type="submit" value="수정하기" onclick="update_submit()">
				 		</div>
				 		<div class="myDelete">
							<div class="deleteId"><a href="deleteId.jsp">탈퇴하기버튼 어디가 좋을까</a></div>
						</div>
				 	</div>
				</form>
			</div>
		</div>
	</body>
</html>
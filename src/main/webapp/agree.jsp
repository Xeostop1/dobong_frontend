<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>약관 동의</title>
		<link rel="stylesheet" href="./common/css/agree.css">
		<script src="./common/script/agree.js"></script>
	</head>
	<body>
		<div id="wrap">
			<div class="toswrap">
				<form action="join.jsp" method="post">
					<div class="tos_title">
					<!-- 랜딩서블릿으로 갈 수있게 수정 git 테스트 중입니다-->
						<h1 onclick="gohome()">D O B O N G</h1>
					</div>
					
					<!-- 약관 시작 부분 -->
					<div class="tosAll">
						<p><label class="tosCheck">
							<input class="tosCheckAll" id="tosAll" name="tosAll" type="checkbox" value="tosAll" onclick="checkAll(this)">
							도봉따봉 서비스 이용약관<span>(필수)</span>, 개인정보 수집 및 이용<span>(필수)</span>에 모두 동의합니다.</label></p>
						
						<div id="tos1" class="tos">
							<p><label class="tosCheck" ><input class="tosCheck" id="tosCheck1" name="tosCheck" type="checkbox" value="tosCheck1" onclick="check()">
							도봉따봉 서비스 이용약관 동의<span>(필수)</span></label></p>
							<div class="tosText">
								<jsp:include page="tos/tos1.jsp"></jsp:include>
							</div>
							<p class="bigtos"><span onclick="pop_tos1()">크게 보기</span></p>
						</div>
					
						<div id="tos2" class="tos">
							<p><label class="tosCheck"><input class="tosCheck" id="tosCheck2" name="tosCheck" type="checkbox" value="tosCheck2" onclick="check()">
							개인정보 수집 및 이용 동의<span>(필수)</span></label></p>
						
							<div class="tosText">
								<jsp:include page="tos/tos2.jsp"></jsp:include>
							</div>
							<p class="bigtos"><span onclick="pop_tos2()">크게 보기</span></p>
						</div>
					</div>
					<div class="agree_submit">
						<input type="submit" value="다음" onclick="return check()">
					</div>
				</form>			
			</div>
		</div>
	</body>
</html>

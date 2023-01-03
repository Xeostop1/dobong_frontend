<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>관리자 페이지</title>
		<link rel="icon" href="images/icon1.ico">
		<link rel="stylesheet" href="./common/css/adminPage.css">
	</head>
	<body>
		<div id="wrap">
			<div class="admin_wrap">
				<div>
					<div class="admin_title">
						<h1>관리자 페이지</h1>
					</div>
					<div class="admin_list">
						<div><a href="AdminServlet">회원 정보 수정</a></div>
						<div><a href="PlaceServlet">장소 수정</a></div>
						<div><a href="ImageUpdate">랜드마크 이미지 수정</a></div>
						<div><a href="noticeWrite.jsp">공지사항 글쓰기</a></div>
						<div><a href="LandingServlet">홈으로</a></div>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
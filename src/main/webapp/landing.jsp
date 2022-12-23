<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="Beans.MemberDTO"  %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="UTF-8">
		<title>도봉 따봉</title>
		<link rel="icon" href="images/icon1.ico">
		<!-- jQuery CDN -->
	    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	    <!-- slick CDN -->
	    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
		<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
		<script src="https://kit.fontawesome.com/5e0dbc0485.js" crossorigin="anonymous"></script>
	    <link rel = "stylesheet" href = "https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css" >
	    <!-- common -->
		<script src="common/script/landing.js"></script> 
		<link rel="stylesheet" href="common/css/landing.css">
		<link rel="stylesheet" href="wrap/wrap.css">
	</head>
	<body>
		<div id="wrap">
		<jsp:include page="wrap/header.jsp"></jsp:include>
		<div id="contents">
			<!--상위 카테고리 -->
			<div id="category">
				 <c:forEach items="${shortpage }" var="shortpage"> 
					<div class="category_menu">
						<ul>
							<li> <a href="#">${shortpage.getShortpage() } </a> </li>
						</ul>
						<div class="category_place">
							<c:forEach items="${details }" var="details">
					 			<c:if test="${shortpage.getShortpage() eq  details.getShortpage()}">
					 				<ul class="business"> 
					 				<!--수정 get값에 쇼트페이지값 추가 xeo: 12/22  -->
					 					<li><a href="detailServlet?number=${details.getNumber() }&shortpage=${shortpage.getShortpage()}"> ${details.getDetailpage() }</a></li>
					 				</ul>
			 					</c:if>
					 		</c:forEach>
						</div>
					</div>
				</c:forEach>
			</div>
			<!-- 이미지 슬라이더 div추가 -->
			<div id="img" class="slide">
				<c:forEach items="${imglist }" var="imglist">
					<div class="slideImg"><img src="${imglist.getImageurl() }" alt="noImage"></div>
				</c:forEach>
			</div>
		</div>
		<jsp:include page="wrap/footer.jsp"></jsp:include>
		</div>		
	</body>
</html>
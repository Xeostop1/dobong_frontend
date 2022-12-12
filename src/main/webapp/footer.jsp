<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="Beans.MemberDTO"  %>
	
<div id="footer">
	<!-- 푸터라인 하단 링크 버튼 -->
	<div class="fnbWrap">
		<div id="home">
			<img src="dobong2.jpg" alt="1" onclick="location.href='landing.jsp'">
		</div>
		<div id="fnb">
			
			<a class="fnbItem" href="NoticeServlet"><span>공지사항</span></a>
			
			<a class="fnbItem" href="tos2_big.jsp"><span>서비스 이용약관</span></a>
			
			<a class="fnbItem" href="tos3_big.jsp"><span>개인정보처리방침</span></a>
			
			<a class="fnbItem" href="NoticeServlet"><span>게시판 바로가기</span></a>
		</div>
		<div id="dobong">
			<img src="dobong.jpg" alt="1" onclick="window.open('https://www.dobong.go.kr/')">
		</div>
	</div>
</div>

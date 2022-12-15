<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="Beans.MemberDTO"  %>

<div id="header">
	<div class="first_menu">
		<div id="home" onclick="location.href='LandingServlet'">DOBONG</div>
		<div id="gnb">
		<% 	
			MemberDTO m=null;
			if(session.getAttribute("loginUser")!=null){
			m=(MemberDTO)session.getAttribute("loginUser");
		}
		%>
			<%
			if(m==null){
		%>
				<div id="login" onclick="location.href='login.jsp'"><a href="login.jsp">로그인</a></div>
				<div id="join"  onclick="location.href='agree.jsp'"><a href="agree.jsp">회원가입</a></div>
		<%		
			}
		%>
			
		<%
			if(m!=null){
		%>
				<div id="logout" onclick="location.href='LogoutServlet'"><a href="LogoutServlet">로그아웃</a></div>
		<%
				if(m.getAdmin()==0){		
		%>		
				<div id="mypage" onclick="location.href='RegisterUpdateServlet?userid=${loginUser.id }'"><a href="RegisterUpdateServlet?userid=${loginUser.id }">마이 페이지</a></div>
		<%
				}
		
				if(m.getAdmin()==1){
		%>
				<div id="adminpage" onclick="location.href='adminPage.jsp'"><a href="adminPage.jsp">관리자 페이지</a></div>
		<%		
				}
			}
		%>	
			
			
		</div>
	</div>
	<div class="second_menu">
		<a href="NoticeServlet">공지사항</a>
		<a href="noticeWrite.jsp">글쓰기</a>
		<a>또쓰기</a>
	</div>
</div>
<hr>


			
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="UTF-8">
		<title>공지사항</title>
		<!-- 아이콘 -->
		<link rel="icon" href="images/icon1.ico">
		<link rel="stylesheet" href="./common/css/notice.css">
		<script src="./common/script/notice.js"></script>
	</head>
	<body>
	<div id="wrap">
		<jsp:include page="wrap/header.jsp"></jsp:include>
		<div id="contents">
		<c:if test="${!empty loginUser.id }">
		<jsp:include page="loginPage.jsp"></jsp:include> 
		</c:if>
		<br>
		<h4>*공지는 table 상단에 고정, 또한 공지만 볼 수 있는 탭이 필요함 추후 추가</h4>
			<div class="tableWrap">
				<div class="tb_btn">
					<div class="btn_total">
						<input type="button" value="전체글">
						<input type="button" value="공지사항">
					</div>
					<div class="tb_write">
						<input type="button" value="글쓰기">
					</div>
				</div>
				<table>
					<thead>
						<tr>
							<th class="th_number">번호</th>
							<th class="th_title">제목</th>
							<th class="th_nickname">작성자</th>
							<th class="th_time">작성일</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${noticeList }" var="noticeList">
							<tr>
								<td>${noticeList.getNumber() }</td>
								<td class="td_title"><a href="NoticeContentServlet?number=${noticeList.getNumber()}"> ${noticeList.getTitle() }</a></td> 
								<td class="td_nickname">${noticeList.getNickname() }</td>
								<td>${noticeList.getWritingtime() }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<div class="tb_btn">
				<div class="btn_total">
					<input type="button" value="전체글">
					<input type="button" value="공지사항">
				</div>
				<div class="tb_write">
					<a href="noticeWrite.jsp"><input type="button" value="글쓰기"></a>
				</div>
			</div>

			<div class="paging">
				<form action="NoticeServlet" method="get">
					<c:forEach begin="1" end="${nOfPage }" var="i">
						
							<c:choose>
								<c:when test="${currentPage == i }">	<!-- test: 비교연산자 사용하는곳 조건값  -->
									 <a id="i_bold" onclick="iBold()">${i }[현재]</a>
								</c:when> 
							<c:otherwise>
								
									<li><a href="NoticeServlet?currentPage=${i }&recordsPerPage=${recordsPerPage}&number=0">${i }</a> </li>
							</c:otherwise>
							</c:choose>
					</c:forEach>
				</form>
			</div>	
			
			<fieldset>
				<form action="searchServlet">
					<select name="select"> 
						<option value="1" selected>전체</option>
						<option value="2">내용</option> 
						<option value="3" >제목</option>
						<option value="4" >글쓴이</option>
					</select>
					<input name="searchValue">
				<input type="submit" value="검색">
				</form>
			</fieldset>
			
			
			<jsp:include page="wrap/footer.jsp"></jsp:include>
			
			</div>
			<!-- ~개씩 보기는 개인 블로그 등에서 많이 사용하는 기능이고, 커뮤니티 게시판에서는 잘 사용하지 않아 제외하였음 -->		
			<!-- <tfoot>
				<tr>
					<td colspan="11">
						<form action="NoticeServlet" method="get">
							<input type="hidden" name="currentPage" value="${currentPage }"> 이거왜 벨류가 1이지???
							<input type="hidden" id="record" value="${recordsPerPage }">
							<input type="hidden" name="number" value="0">
							<select name="recordsPerPage"> 
								<option value="5"> 5개씩 보기</option> 
								<option value="10" selected> 10개씩 보기</option>
								<option value="15" > 15개씩 보기</option>
								</select>
								<input type="submit" value="보기">
							</form>
							<c:forEach begin="1" end="${nOfPage }" var="i">
								<c:choose>
									<c:when test="${currentPage == i }">	test: 비교연산자 사용하는곳 조건값  
										 <a>${i }[현재]</a>
									</c:when> 
								<c:otherwise>
									<li> 
									<a href="NoticeServlet?currentPage=${i }&recordsPerPage=${recordsPerPage}&number=0">${i }</a> </li>
								</c:otherwise>
								</c:choose>
							</c:forEach>
						</td>
					</tr>
					<tr>
						<td colspan="11">
							<form action="searchServlet">
								<select name="select"> 
									<option value="1" selected>전체</option>
									<option value="2">내용</option> 
									<option value="3" >제목</option>
									<option value="4" >글쓴이</option>
								</select>
								<input name="searchValue">
								<input type="submit" value="검색">
							</form>
							<a href="noticeWrite.jsp"> <input type="button" value="글쓰기"> </a>
						</td>		
					</tr>
				</tfoot>
			-->
		<!-- <form action="NoticePageServlet" method="get">
			<input type="hidden" name="currentPage" value="1"> <!--이거왜 벨류가 1이지??? -->
			<!--  <input type="hidden" name="number" value="0">
			<select name="recordsPerPage"> 
				<option value="5"> 5개식 보기</option> 
				<option value="10" selected> 10개식 보기</option>
				<option value="15" > 15개식 보기</option>
			</select>
			<input type="submit" value="보기">
		</form> -->
		<!-- <form action="searchServlet">
			<select name="select"> 
				<option value="1" selected>전체</option>
				<option value="2">내용</option> 
				<option value="3" >제목</option>
				<option value="4" >글쓴이</option>
			</select>
			<input name="searchValue">
			<input type="submit" value="검색">
		</form> -->
		<!-- <ul>
			<c:forEach begin="1" end="${nOfPage }" var="i">
				<c:choose>
					<c:when test="${currentPage == i }">	<!--test: 비교연산자 사용하는곳 조건값  
						<li> <a>${i }[현재]</a> </li>
					</c:when> 
				<c:otherwise>
					<li> 
					<a href="NoticePageServlet?currentPage=${i }&recordsPerPage=${recordsPerPage}&number=0">${i }</a> </li>
				</c:otherwise>
				</c:choose>
			</c:forEach>
		</ul> 
		<br><a href="noticeWrite.jsp"> <input type="button" value="글쓰기"> </a>-->
		
		
	</div>
	</body>
</html>
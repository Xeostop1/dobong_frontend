<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="utf-8">
		<title>공지사항</title>
		<!-- 아이콘 -->
		<link rel="icon" href="images/icon1.ico">
		<link rel="stylesheet" href="wrap/wrap.css">
		<link rel="stylesheet" href="./common/css/noticeContent.css">
	</head>
	<body>
	<div id="wrap">
	<jsp:include page="wrap/header.jsp"></jsp:include>
		<h1>내용 확인페이지</h1>
		<p>table이 아닌 div로 변경 예정</p>
		<div id="contents">  
			<div class="content_header">
				<div>
					<span>제목 :</span>
					<span> 제목을 넣어주세요 </span>
				</div>
				<div>
					<span>작성자 :</span>
					<span>${content.getNickname()}</span>
					
				</div>
				<div>
					<span>작성일자</span>
					<span>${content.getWritingtime() }</span>
				</div>
			</div>
			<br>
			<hr>
			<br>
			<fieldset>
				<legend>내용</legend>
				<p>내용 밑부분에는 notice.jsp가 보이게 include 사용예정</p>
			</fieldset>
		<table>
				<th colspan="3">내용 </th>
				<th colspan="2">작성일자 </th>
				<th colspan="1">글쓴이 </th>
				<c:if test="${loginUser.id eq content.getNickname()}">
					<th>수정 </th>
					<th>삭제 </th>
				</c:if>
					<tr id="hei"> 
						<td colspan="4"> ${content.getContent() }</td>
						<td>${content.getWritingtime() }</td>
						<td>${content.getNickname()}</td>
						<c:choose>
							<c:when test="${!empty loginUser.id }">
								<input type="hidden" value="${loginUser.id }" name="id">
								<td>
								<!-- content/num을 가져가야함 get -->
									<c:if test="${loginUser.id eq content.getNickname()}">
										<a href="NoticeUpdateServlet?number=${content.getNumber()}"> 
											<input type="button" value="수정">
										</a>
										</td>
										<td>
											<input type="hidden" value=${content.getNumber() }>
											<input type="hidden" value=${content.getNickname() }>
											<a href="NoticeDeleteServlet?number=${content.getNumber() }">
												<input type="button" value="삭제">
											</a>
										</td>			
									</c:if>			
							</c:when>
						</c:choose>
					</tr>
			</table>
		<br>
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
		 <br><a href="NoticeServlet">목록으로</a>
		 </div>
		 <jsp:include page="wrap/footer.jsp"></jsp:include>
		 
	</div>		
	</body>
</html>
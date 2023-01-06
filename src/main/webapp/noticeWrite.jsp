<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="utf-8">
		<title>공지사항</title>
		<!-- 아이콘 -->
		<link rel="icon" href="images/icon1.ico">
		<link rel="stylesheet" href="./common/css/noticeWrite.css">
		<script src="./common/script/noticeWrite.js"></script>
	</head>
	<body>
	<div id="wrap">
				
			<div class="login_h1">
				<h1 onclick="gohome()">공지사항 글쓰기</h1>
			</div>
	
		
		<c:choose>
			<c:when test="${!empty loginUser.id }">
				
				<form action="NoticeWriteServlet" method="post">
					<table>
					
						<c:if test="${!empty loginUser.id }">
							<tr> 
								<td><input value="${loginUser.id }" name="id"></td> 
							</tr>
						</c:if>
						<!-- <tr> 
							<td> <input type="text" name="password" placeholder="비밀번호를 적어주세요"></td> 
						</tr> -->
						<tr> 
							<td> <input name="title" placeholder="제목"></td> 
						</tr>
						<tr> 
							<td> <textarea name="content"></textarea></td> 
						</tr>
						<tr>
							<td>
								<input type="submit" value="작성완료">
								<input type="reset" value="다시작성">
							</td>
						</tr>
					</table>
				</form>
			</c:when>
			<c:otherwise>
		
				<script>
					alert("글쓰기는 로그인 사용자만 가능합니다.");
					location.href="login.jsp";
				</script>				
			</c:otherwise>
		</c:choose>
		</div>
	</body>
</html>
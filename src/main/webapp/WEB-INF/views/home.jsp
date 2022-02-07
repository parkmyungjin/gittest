<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<title>web5</title>
</head>
<body>
<h1>
	[ web5 ] 
</h1>
<c:if test="${sessionScope.loginId != null}">
<h2>${sessionScope.loginId}님 환영합니다.</h2>
</c:if>
<ul>
	<c:if test="${sessionScope.loginId == null}">
		<li><a href="member/join">회원가입메롱~</a></li>
		<li><a href="member/login">로그인</a></li>
	</c:if>
	<c:if test="${sessionScope.loginId != null}">
		<li><a href="member/update">개인정보수정</a></li>
		<li><a href="member/logout">로그아웃</a></li>
	</c:if>
		<li><a href="board/list">게시판</a></li>
</ul>
</body>
</html>

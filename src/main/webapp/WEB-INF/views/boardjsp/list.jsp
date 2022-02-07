<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
	th {
		background-color: gray;
	}
	
	td {
		background-color: white;
	}
	
	body {
		background-color: lightgray;	
	}
</style>

<meta charset="UTF-8">
	<title>게시판</title>
</head>
<body>
<h1 align="center">
	[ 게시판 ] 
</h1>

<!-- 게시판 글 목록 출력될 영역 -->
<form action="board/list" method="get">
<table align="center" width="900">
	<tr>
		<td id="total" align="left">전체 : </td>
		<td id="button" align="right" colspan="4"><input type="button" value="write" onclick="location.href='write'"></td>
	</tr>
	<tr>
		<th width="10%">번호</th><th width="30%">제목</th><th width="20%">작성자</th><th width="20%">조회수</th><th width="20%">등록일</th>
	</tr>
	
		<c:forEach var="board" items="${list}">
	<tr>
		<td>${board.boardnum}</td>
		<td><a href="read?num=${board.boardnum}">${board.title}</a></td>
		<td>${board.id}</td>
		<td>${board.hits}</td>
		<td>${board.inputdate}</td>
	</tr>
		</c:forEach>
</table>
</form>
<!-- 페이지 이동 및 검색 폼 영역 -->
	
</body>
</html>
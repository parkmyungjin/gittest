<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
	td {
		background-color:white;
		width: 500px;
	}

	th {
		background-color:gray;
	}
	
	a {
		text-decoration: none;
	}
	
	body {
		background-color: lightgray;	
	}
</style>
<meta charset="UTF-8">
	<title>게시판 글읽기</title>
<Script>
function del() {
	if(confirm('삭제하시겠습니까?')) {
		location.href = 'delete?boardnum=${Board.boardnum}';
	}
}
</Script>
</head>
<body>
<h1 align="center">
	[ 게시판 글읽기 ] 
</h1>
<table align="center">
	<tr>
		<th>글번호</th>
		<td>${Board.boardnum}</td>
	<tr>
		<th>작성자</th>
		<td>${Board.id}</td>
	</tr>
	<tr>
		<th>작성일</th>
		<td>${Board.inputdate}</td>
	<tr>
		<th>조회수</th>
		<td>${Board.hits}</td>
	</tr>
	<tr>
		<th>제목</th>
		<td>${Board.title}</td>
	</tr>
	<tr>
		<th>내용</th>
		<td>${Board.contents}</td>
	</tr>
	<tr>
		<th>파일첨부</th>
		<td></td>
	</tr>
	</table>
	<div align="center">
	<c:if test="${sessionScope.loginId != null}"> <!-- .loginId == board.id -->
		<a href="javascript:del()">삭제</a>&nbsp;&nbsp;
		<a href="update?num=${Board.boardnum}">수정</a>&nbsp;&nbsp;</c:if>
		<a href="list">목록보기</a>
	</div>

</body>
</html>
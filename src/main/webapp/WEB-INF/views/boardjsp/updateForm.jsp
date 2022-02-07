<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="../resources/css/default.css">

<style>
	td {
		background-color:lightgray;
		width: 500px;
	}

	th {
		background-color:gray;
	}
	
</style>
</head>
<body>
<h1 align="center">[ 수정 ]</h1>

<form action="update" method="post">
<input type="hidden" name="boardnum" value="${Board.boardnum}">
<table align="center">
	<tr>
		<th>제목</th>	<td><input type="text" name="title" id="title" size="69" value="${Board.title}"><br>
	</tr>
	<tr>	
		<th>내용</th>	<td><textarea rows="15" cols="66" name="contents" id="contents" name="contents">${Board.contents}</textarea></td>
	</tr>
	<tr>	
		<th>파일첨부</th><td><input type="file" name="file" id="file"></td>
	</tr>
</table><br>
	<div align="center">
	<input type="submit" value="수정">
	</div>
</form>
</body>
</html>
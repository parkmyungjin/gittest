<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
<html>
<head>
<style>
	#contents {
		width: 430px;	
	}
	
	th {
		background-color:lightgray;	
	}
</style>
<meta charset="UTF-8">
	<title>글쓰기</title>
</head>
<body>
<h2 align="center">[ write ]</h2>
<form action="write" method="post">
	<table align="center" border="1">
		<tr>
			<th>제목</th><td><input type="text" name="title" id="title" size="60"></td>
		</tr>
		<tr>
			<th>내용</th><td><textarea rows="15" cols="48" name="contents" id="contents"></textarea></td>
		</tr>
		<tr>
		<th>파일첨부</th><td><input type="file" name="file" id="file"></td>
	</table>
	<div align="center"><input type="submit" value="저장"></div>
</form>

</body>
</html>
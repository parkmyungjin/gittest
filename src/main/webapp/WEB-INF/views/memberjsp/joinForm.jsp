<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="../resources/css/default.css">
<script>
function formCheck() {
	//ID가 3~10자, 비밀번호가 3~10자, 비밀번호는 두번 같게 입력, 이름은 필수입력
	let id = document.getElementById("id");
	let pw = document.getElementById("password");
	let pw2 = document.getElementById("password2");
	let name = document.getElementById("name");
	
	if (id.value.length < 3 || id.value.length > 10) {
		alert('ID는 3~10자로 입력하세요.');
		return false;
	}
	if (pw.value.length < 3 || pw.value.length > 10) {
		alert('비밀번호는 3~10자로 입력하세요.');
		return false;
	}
	if (pw.value != pw2.value) {
		alert('비밀번호를 정확하게 2번 입력해주세요.');
		return false;
	}
	if (name.value == '') {
		alert('이름을 입력해주세요.');
		return false;
	}
	return true;
	
}

function idCheckOpen() {
	window.open('idcheck', 'win', 'left=500, top=200, width=400, height=300');
}
</script>
<style>
	.id {
		width: 200px;
	}
	
	.password {
		width: 200px;
	}
	
	.password2 {
		width: 200px;
	}
	
	.name {
		width: 200px;
	}
	
	.phone {
		width: 200px;
	}
	
	.address {
		width: 200px;
	}
	
	.email {
		width: 200px;
	}
</style>
</head>
<body>
<h1>[ 회원 가입 ]</h1>

<form action="join"  method="post" onsubmit="return formCheck()">
<table border="1">
<tr>
<th>ID</th>		<td><input type="text" name="id" id="id" readonly="readonly">
		<input type="button" value="ID중복확인" onclick="idCheckOpen()"></td>
</tr>
<tr>
<th>비밀번호</th>	<td><input type="password" name="password" id="password"><br>
		
		<input type="password" id="password2"></td>
</tr>
<tr>	
<th>이름</th>		<td><input type="text" name="name" id="name"></td>
</tr>
<tr>	
<th>전화번호</th>	<td><input type="text" name="phone"></td>
</tr>
<tr>	
<th>주소</th>		<td><input type="text" name="address" style="width:300px;"></td>
</tr>
<tr>
<th>이메일</th>	<td><input type="text" name="email" id="email"></td>
</tr>
		</table><br>
		<input type="submit" value="가입">
		<input type="reset" value="다시 쓰기">
</form>
</body>
</html>
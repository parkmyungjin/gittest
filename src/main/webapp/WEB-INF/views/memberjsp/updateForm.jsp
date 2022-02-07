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
	let pw = document.getElementById("password");
	let pw2 = document.getElementById("password2");
	let name = document.getElementById("name");
	
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

<form action="update"  method="post" onsubmit="return formCheck()">
<table border="1">
<tr>
<th>비밀번호</th>	<td><input type="password" name="password" id="password"><br>
		
		<input type="password" id="password2"></td>
</tr>
<tr>	
<th>이름</th>		<td><input type="text" name="name" id="name" value="${member.name}"></td>
</tr>
<tr>	
<th>전화번호</th>	<td><input type="text" name="phone" value="${member.phone}"></td>
</tr>
<tr>	
<th>주소</th>		<td><input type="text" name="address" style="width:300px;" value="${member.address}"></td>
</tr>
<tr>
<th>이메일</th>	<td><input type="text" name="email" id="email" value="${member.email}"></td>
</tr>
		</table><br>
		<input type="submit" value="수정">
		<input type="reset" value="다시 쓰기">
</form>
</body>
</html>
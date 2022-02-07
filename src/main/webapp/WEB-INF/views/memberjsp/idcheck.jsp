<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<script>
function formCheck() {
	if(searchId.value.length > 15) {
		alert("글자 수를 초과했습니다,")
	}
}

function idInput() {
	opener.document.getElementById('id').value = '${searchId}';
	this.close();
}
</script>
<meta charset="UTF-8">
<title>ID 중복확인</title>
</head>
<body>
<h2>[ ID 중복확인 ]</h2>
<form action="idcheck" method="post" onsubmit="return formCheck()">
	검색할 ID <input type="text" name="searchId" id="searchId">
			<input type="submit" value="검색">
</form>

		<!-- 검색 후에만 이곳에 검색 결과 출력 -->
		<c:if test="${searchId != null}">
			<!-- 사용 가능 -->
			<c:if test="${member == null}">
				<p>${searchId}: 사용 가능한 ID입니다.</p>
				<p><input type="button" value="ID사용하기" onclick="idInput()"></p>
			</c:if> 
			
			<!-- 사용 불가능 -->
			<c:if test="${member != null}">
				<p>${searchId}: 이미 사용중인 ID입니다.</p>
			</c:if>
		</c:if>
		
</body>
</html>
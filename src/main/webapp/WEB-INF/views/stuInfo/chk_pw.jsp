<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 현재 비밀번호 확인-->
<form action="/stuInfo/chkPw" method="post">
 	<div id="checkPwDiv">
		현재 비밀번호
		<input type="hidden" name="memNo" id="memNo" value="${sessionScope.loginInfo.memNo }">
		<input type="password" name="memPw" id="memPw">
		<input type="submit" value="비번확인" onclick="checkPw();">
	</div>
</form>

</body>
</html>
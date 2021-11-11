<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#checkPwDiv{
	margin-top: 80px;
	padding-top: 12px;
	display: inline-block;
	width: 500px;
	height: 250px;
	background-color: #eeeeee;
}
.spanDiv{
	margin-top: 80px;
	margin-bottom: 10px;
}
span{
	color: red;
}
</style>
</head>
<body>

<!-- 현재 비밀번호 확인-->
<form action="/stuInfo/chkPw" method="post">
 	<div id="checkPwDiv">
		<div class="spanDiv">
			<p><span>*</span>현재 비밀번호를 확인해주세요</p>
		</div>
			<label for="memPw">
			현재 비밀번호
		</label>
			<input type="hidden" name="memNo" id="memNo" value="${sessionScope.loginInfo.memNo }">
		<input type="password" name="memPw" id="memPw" autofocus required>
		<input type="submit" value="비번확인" onclick="checkPw();">
	</div>
</form>

</body>
</html>
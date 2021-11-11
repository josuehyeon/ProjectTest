<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript" src="/resources/stuInfo/js/change_pw.js?ver=117"></script>

</head>
<body>
	
<!-- 비밀번호 변경 Div -->
<form action="/student/changePw" method="post" id="changePwForm">
	<div id ="changePwDiv">
		<div>
	 		<input type="password" name="memPw" id="newPw">
	 		<span id="newPwSpan"></span>
		</div>
		<div>
			<input type="password" id="newPwCheck">
			<span id="newPwCheckSpan"></span>
		</div>
	</div>
<!-- 비밀번호 변경 버튼 Div -->	
	<div id="btnDiv">
		<input type="button" value="비번변경" onclick="changePw();">
	</div>
<!-- hidden으로 세션에 저장된 MEM_NO 보내기 -->	
	<input type="hidden" name="memNo" value="${sessionScope.loginInfo.memNo }">
</form>

<!-- 얘네만 대충 넣어놓고...세부적인 건 나중에 해야지 ㅜㅜ -->

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#changePwDiv{
	margin-top: 80px;
	padding-top: 12px;
	display: inline-block;
	width: 500px;
	height: 250px;
	background-color: #eeeeee;
}
.spanDiv{
	margin-top: 10px;
	margin-bottom: 50px;
}
span{
	color: red;
}
#btnDiv{
	margin-top: 10px;
}
</style>
<script type="text/javascript" src="/resources/stuInfo/js/change_pw.js?ver=119"></script>
</head>
<body>
	<!-- 비밀번호 변경 Div -->
	<form action="/student/changePw" method="post" id="changePwForm">
		<div id ="changePwDiv">
			<div class="spanDiv">
				<h4><b><span>*</span>현재 비밀번호 확인</b></h4>
			</div>
			<div>
				<label for="newPw">
					비밀번호 변경
				</label>
		 		<input type="password" name="memPw" id="newPw" autofocus>
			</div>
			<div style="margin-top: 5px;"></div>
			<div>
				<label for="newPwCheck">
					비밀번호 확인
				</label>
				<input type="password" id="newPwCheck">
			</div>
		 		<span id="newPwSpan" style="font-size: 14px;"></span>
				<span id="newPwCheckSpan" style="font-size: 14px;"></span>
		</div>
	<!-- 비밀번호 변경 버튼 Div -->
		<div id="btnDiv">
			<input type="button" value="비밀번호 변경" onclick="changePw();">
		</div>
	<!-- hidden으로 세션에 저장된 MEM_NO 보내기 -->	
		<input type="hidden" name="memNo" value="${sessionScope.loginInfo.memNo }">
	</form>
</body>
</html>
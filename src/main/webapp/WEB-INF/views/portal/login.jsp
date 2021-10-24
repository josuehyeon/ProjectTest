<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 로그인 폼 -->
<form action="/portal/login" method="post" autocomplete="off">
	<input type="text" name="memNo"  placeholder="아이디를 입력하세요" required>
	<input type="password" name="memPw" placeholder="비밀번호를 입력하세요" required>
	<input type="submit" value="로그인">
</form>

<!-- 아이디 찾기: 형태만 잡아놓음 modal로 띄울 예정 -->
<a href="#">아이디 찾기</a>


<!-- 비밀번호 변경: 형태만 잡아놓음 modal로 띄울 예정 -->
<a href="#">비밀번호 변경</a>

</body>
</html>
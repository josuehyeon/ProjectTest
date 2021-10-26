<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
로그인 성공시 나오는 메인 페이지
<br>
메뉴 연결되어 있나...?
<br>
일단 내거 표시해놓자

<span>내 정보 관리</span>
<div>
	<a href="/stuInfo/chkInfoJsp">내정보조회</a>
	<a href="/stuInfo/changeInfoJsp">내정보수정</a>
	<a href="/stuInfo/chkPwJsp">비밀번호 변경</a>
	<a href="/stuInfo/chkTimetableJsp">시간표 조회</a>
</div>

<br>
<br>

<span>성적관리</span>
<div>
	<a href="/grade/chkGradeJsp">학기 별 성적</a>
	<a href="#">학점 포기</a>
</div>

<br>
<br>

<span>졸업</span>
<div>
	<a href="#">졸업요건</a>
	<a href="#">졸업사정</a>
</div>

<br>
<br>

<span>관리자 내 정보관리</span>
	<a href="/emp/chkInfoJsp">내 정보 조회</a>
	<a href="/emp/changeInfoJsp">내 정보 조회</a>


</body>
</html>
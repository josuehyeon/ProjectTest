<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
table{
	border: 1px solid black;
	width: 600px;
	empty-cells: show;
}
tr,td{
	border: 1px solid black;
}
</style>
</head>
<body>
학생 로그인>내정보>내정보관리>내정보조회

<!-- STUDENT 테이블에서 오는 정보 -->
<div>
	<table>
		<tr>
			<td rowspan="3">이미지첨부</td>
			<td>학번</td>
			<td>${studentInfo.stuNo }</td>
			<td>이름</td>
			<td>${memberInfo.memName }</td>
		</tr>
		<tr>
			<td>소속</td>
			<td>${studentInfo.collegeInfo.collName } ${studentInfo.majorCode }</td>
			<td>부전공</td>
			<td>${studentInfo.minorCode }</td>
		</tr>
		<tr>
			<td>학년/학기</td>
			<td>${studentInfo.stuYear }학년/${studentInfo.stuSem }학기</td>
			<td>학적상태</td>
			<td>${studentInfo.stuStatus }</td>
		</tr>
	</table>
</div>
<!-- 멤버 테이블에서 오는 정보 -->
<div>
	<table>
		<tr>
			<td>생년월일</td>
			<td>${memberInfo.memBirth }</td>
			<td>이메일</td>
			<td>${memberInfo.memEmail }</td>
		</tr>
		<tr>
			<td>전화번호</td>
			<td>${memberInfo.memTel }</td>
			<td>휴대폰</td>
			<td>${memberInfo.memPhone }</td>
		</tr>
		<tr>
			<td>우편번호</td>
			<td>${memberInfo.postcode }</td>
			<td>주소</td>
			<td>${memberInfo.memAddr }</td>
		</tr>
	</table>
</div>



<a href="/stuInfo/changeInfoJsp">내 정보 수정</a>


</body>
</html>
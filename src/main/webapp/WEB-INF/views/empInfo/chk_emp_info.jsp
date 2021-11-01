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

<div>
	<table>
		<tr>
			<td>직원번호</td>
			<td>${empInfo.empNo}</td>
			<td>이름</td>
			<td>${memberInfo.memName}</td>
			<td>소속</td>
			<td>${empInfo.empDept} ${empInfo.empColl}</td>
		</tr>
		<tr>
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

</body>
</html>
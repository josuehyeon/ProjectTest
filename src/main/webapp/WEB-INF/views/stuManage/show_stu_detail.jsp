<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.tableDiv{
	margin-top: 80px;
}
table{
	border: 1px solid black;
	width: 600px;
	background-color: white;	
}
tr,td{
	border: 1px solid black;
}
.column{
	background-color: #003264;
	color: white;
}
</style>
</head>
<body>

<!-- STUDENT 테이블에서 오는 정보 -->
<div class="tableDiv">
	<table>
		<tr>
			<td rowspan="3"><img src="/resources/stuInfo/images/${memberInfo.memIdpic }.jpg"></td>
			<td class="column">학번</td>
			<td>${studentInfo.stuNo }</td>
			<td class="column">이름</td>
			<td>${memberInfo.memName }</td>
		</tr>
		<tr>
			<td class="column">소속</td>
			<td>${studentInfo.collegeInfo.collName }&nbsp;${studentInfo.majorCode }</td>
			<td class="column">부전공</td>
			<td>${studentInfo.minorCode }</td>
		</tr>
		<tr>
			<td class="column">학년/학기</td>
			<td>${studentInfo.stuYear }학년&nbsp;${studentInfo.stuSem }학기</td>
			<td class="column">학적상태</td>
			<td>${studentInfo.stuStatus }</td>
		</tr>
	</table>
</div>
<!-- 멤버 테이블에서 오는 정보 -->
<div>
	<table>
		<tr>
			<td class="column">생년월일</td>
			<td>${memberInfo.memBirth }</td>
			<td class="column">이메일</td>
			<td>${memberInfo.memEmail }</td>
		</tr>
		<tr>
			<td class="column">전화번호</td>
			<td>${memberInfo.memTel }</td>
			<td class="column">휴대폰</td>
			<td>${memberInfo.memPhone }</td>
		</tr>
		<tr>
			<td class="column">우편번호</td>
			<td>${memberInfo.postcode }</td>
			<td class="column">주소</td>
			<td>${memberInfo.memAddr }</td>
		</tr>
	</table>
</div>
</body>
</html>
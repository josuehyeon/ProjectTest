<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-latest.min.js"></script>

<script type="text/javascript" src="/resources/stuManage/js/againStudy.js?ver=2"></script>
<style type="text/css">
td{
	border: 1px solid black;
}
table{
	margin: 0 auto;
}
</style>
</head>
<body>
복학신청페이지~~~

<form action="/stuManage/goAgainStudy" method="post" id="againStudyForm">
	<table>
		<tr>
			<td>학번</td>
			<td><input type="text" name="stuNo" value="${againStudyInfo.stuNo}" readonly></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><input type="text" name="memName" value="${againStudyInfo.memberInfo.memName}"  readonly></td>
		</tr>
		<tr>
			<td>학년</td>
			<td><input type="text" name="stuYear" value="${againStudyInfo.stuYear}"  readonly></td>
		</tr>
		<tr>
			<td>학적상태</td>
			<td><input type="text" name="stuStatus" value="${againStudyInfo.stuStatus}"  readonly></td>
		</tr>
		<tr>
			<td>전공명</td>
			<td><input type="text" name="deptName" value="${againStudyInfo.deptInfo.deptName}"  readonly></td>
		</tr>
		<tr>
			<td>단과대학</td>
			<td><input type="text" name="collName" value="${againStudyInfo.collegeInfo.collName}"  readonly></td>
		</tr>
		<tr>
			<td>생일</td>
			<td><input type="text" name="memBirth" value="${againStudyInfo.memberInfo.memBirth}"  readonly></td>
		</tr>
		<tr>
			<td>부전공</td>
			<td><input type="text" name="minorCode" value="${againStudyInfo.minorCode}"  readonly></td>
		</tr>
	</table>
	<c:choose>
		<c:when test="${againStudyInfo.stuStatus eq '휴학' and waitCntAgain eq 0}">
			<div>
				<input type="button" value="복학신청" id="againStudyBtn">
			</div>
		</c:when>
		<c:otherwise>
			<div>
				<input type="button" value="복학신청" id="againStudyBtn" disabled>
			</div>
		</c:otherwise>
	</c:choose>
</form>
</body>
</html>
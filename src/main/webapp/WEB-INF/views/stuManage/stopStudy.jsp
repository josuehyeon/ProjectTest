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

<script type="text/javascript" src="/resources/stuManage/js/stopStudy.js?ver=2"></script>
<style type="text/css">
.stuInfo{
	width: 900px;
	margin: 0 auto;
	padding-top: 30px;
}
table{
	border: 2px solid white;
	margin: 0 auto;
	background-color: white;
	width: 900px;
	border-bottom-color: #336699;
	
}
tr, td{
	border: 1px solid #dee2e6;

}
.line{
	background-color: #336699;
	color: white;
	border-right: solid #000f4c;
	border-left: solid #000f4c; 
	
}
input {
	border: none;
}
caption {
	color: black;
	font-weight: bold;
}
</style>
</head>
<body>
<div class="stuInfo">

<form action="/stuManage/goStopStudy" method="post" id="stopStudyForm">
	<table>
<caption align="top">휴학신청</caption>
		<tr>
			<td class="line">학번</td>
			<td><input type="text" name="stuNo" value="${stopStudyInfo.stuNo}" readonly></td>
		</tr>
		<tr>
			<td class="line">이름</td>
			<td><input type="text" name="memName" value="${stopStudyInfo.memberInfo.memName}"  readonly></td>
		</tr>
		<tr>
			<td class="line">학년</td>
			<td><input type="text" name="stuYear" value="${stopStudyInfo.stuYear}"  readonly></td>
		</tr>
		<tr>
			<td class="line">학적상태</td>
			<td><input type="text" name="stuStatus" value="${stopStudyInfo.stuStatus}"  readonly></td>
		</tr>
		<tr>
			<td class="line">전공명</td>
			<td><input type="text" name="deptName" value="${stopStudyInfo.deptInfo.deptName}"  readonly></td>
		</tr>
		<tr>
			<td class="line">단과대학</td>
			<td><input type="text" name="collName" value="${stopStudyInfo.collegeInfo.collName}"  readonly></td>
		</tr>
		<tr>
			<td class="line">생일</td>
			<td><input type="text" name="memBirth" value="${stopStudyInfo.memberInfo.memBirth}"  readonly></td>
		</tr>
		<tr>
			<td class="line">부전공</td>
			<td><input type="text" name="minorCode" value="${stopStudyInfo.minorCode}"  readonly></td>
		</tr>
	</table>
	<c:choose>
		<c:when test="${stopStudyInfo.stuStatus eq '재학' and waitCntStop eq 0}">
			<div>
				<input type="button" class="line" value="휴학신청" id="stopStudyBtn"
				style="background-color: #336699; color: white; width: 100%;">
			</div>
		</c:when>
		<c:otherwise>
			<div>
				<input type="button" class="line" value="휴학신청" id="stopStudyBtn" disabled
				style="background-color: #336699; color: white; width: 100%;" >
			</div>
		</c:otherwise>
	</c:choose>
</form>
</div>
</body>
</html>
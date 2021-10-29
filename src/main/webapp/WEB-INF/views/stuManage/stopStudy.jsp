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

<link rel="stylesheet" href="/resources/stuInfo/css/sample.css">
<script type="text/javascript" src="/resources/stuInfo/js/stopStudy.js?ver=8"></script>

<style type="text/css">
/* #stopStudyAgree:hover{
	cursor: pointer;
	font-weight: bold;
} */
</style>
</head>
<body>
휴학신청페이지~~~

<!-- <form action="/stuManage/goStopStudy" method="post"> -->

	<input type="text" value="학번" readonly>
	<input type="text" name="stuNO" value="${stopStudyInfo.stuNo}" readonly><br>
	<input type="text" value="이름">
	<input type="text" name="memName" value="${stopStudyInfo.memberInfo.memName}"  readonly><br>
	<input type="text" value="학년">
	<input type="text" name="stuYear" value="${stopStudyInfo.stuYear}"  readonly><br>
	<input type="text" value="학적상태">
		<input type="text" name="stuStatus" value="${stopStudyInfo.stuStatus}"  readonly><br>
	<input type="text" value="전공명">
	<input type="text" name="deptName" value="${stopStudyInfo.deptInfo.deptName}"  readonly><br>
	<input type="text" value="단과대학">
	<input type="text" name="collName" value="${stopStudyInfo.collegeInfo.collName}"  readonly><br>
	<input type="text" value="생일">
	<input type="text" name="memBirth" value="${stopStudyInfo.memberInfo.memBirth}"  readonly><br>
	<input type="text" value="부전공">
	<input type="text" name="minorCode" value="${stopStudyInfo.minorCode}"  readonly>
	<c:choose>
			<c:when test="${stopStudyInfo.stuStatus eq '0'}">
		<div >
				<input type="checkbox" id="stopStudyAgree" >동의함
				<input type="submit" value="휴학신청" id="stopStudyBtn">
		</div>
			</c:when>
			<c:otherwise>
		<div>
				<input type="checkbox" id="stopStudyAgree" disabled>동의함
				<input type="submit" value="휴학신청" id="stopStudyBtn" disabled>
		</div>	
			</c:otherwise>
	</c:choose>
<!-- </form> -->
</body>
</html>
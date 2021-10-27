<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
휴학신청페이지~~~

<!-- <form action="/stuManage/goStopStudy" method="post"> -->

	<input type="text" value="학번">
	<input type="text" name="stuNO" value="${stopStudyInfo.stuNo}" ><br>
	<input type="text" value="이름">
	<input type="text" name="memName" value="${stopStudyInfo.memberInfo.memName}" ><br>
	<input type="text" value="학년">
	<input type="text" name="stuYear" value="${stopStudyInfo.stuYear}" ><br>
	<input type="text" value="학적상태">
	<input type="text" name="stuStatus" value="${stopStudyInfo.stuStatus}" ><br>
	<input type="text" value="전공명">
	<input type="text" name="deptName" value="${stopStudyInfo.majorCode}" ><br>
	<input type="text" value="단과대학">
	<input type="text" name="collName" value="${stopStudyInfo.collNo}" ><br>
	<input type="text" value="생일">
	<input type="text" name="memBirth" value="${stopStudyInfo.memberInfo.memBirth}" ><br>
	<input type="text" value="부전공">
	<input type="text" name="minorCode" value="${stopStudyInfo.minorCode}" >
	
<!-- </form> -->
</body>
</html>
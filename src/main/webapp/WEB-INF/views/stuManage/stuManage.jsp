<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="/stuManage/selectStopStudyList" method="post">

	<input type="text" name="stuNO" value="${stuManageVO.stuNO}">
	<input type="text" name="stuName" value="${stuManageVO.stuName}">
	<input type="text" name="stuStatus" value="${stuManageVO.stuStatus}">
	<input type="text" name="stuYear" value="${stuManageVO.stuYear}">
	<input type="text" name="collNo" value="${stuManageVO.collNo}">
	<input type="text" name="deptName" value="${stuManageVO.deptName}">
	
</form>
</body>
</html>



<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/resources/admin/js/stuSwitch.js?ver=1"></script>
<style type="text/css">
td{
	border: 1px solid black;
	margin: 0 auto;
}
</style>
</head>
<body>
<form action="/admin/stuSwitch1" method="post">

<div>5 전과 / 복수전공</div>
<div>전과신청목록</div>
<table>
	<tr>
		<td>No</td>
		<td>소속대학</td>
		<td>소속학과</td>
		<td>학번</td>
		<td>이름</td>
		<td>학년</td>
		<td>학적상태</td>
		<td>변경대학</td>
		<td>변경학과</td>
		<td>신청상태</td>
		<td>신청일</td>
	</tr>
	<tbody>
		<c:forEach items="${AdminChangeMajorRequestList }" var="changeMajorInfo">
		<tr>
			<td>${changeMajorInfo.changeId }</td>
			<td>${changeMajorInfo.collegeInfo.collName }</td>
			<td>${changeMajorInfo.deptInfo.deptName }</td>
			<td>${changeMajorInfo.stuNo }</td>
			<td>${changeMajorInfo.memberInfo.memName }</td>
			<td>${changeMajorInfo.studentInfo.stuYear }</td>
			<td>${changeMajorInfo.studentInfo.stuStatus }</td>
			<td>${changeMajorInfo.upCollName }</td>
			<td>${changeMajorInfo.upDeptName }</td>
			<td>
				<!-- Button trigger modal -->
				<a
				<c:choose>
					<c:when test="${changeMajorInfo.status eq 'Y'}">
						value="승인완료"
					</c:when>
					<c:otherwise>
						value="처리대기"
					</c:otherwise>
				</c:choose>	onclick="edit(${changeMajorInfo.stuNo });"></a>
				
				<!-- Modal -->
			</td>
			<td>${changeMajorInfo.insertDate }</td>
		</tr>
		</c:forEach>
	</tbody>
</table>


</form>
</body>
</html>
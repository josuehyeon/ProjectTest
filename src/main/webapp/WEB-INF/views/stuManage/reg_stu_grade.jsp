<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
table{
	margin: 0 auto;
}
td{
	border: 1px solid black;
}
</style>
<script type="text/javascript" src="/resources/stuManage/js/reg_stu_grade.js?ver=1"></script>
</head>
<body>
<label>강의 목록</label>
<select id="lectureSelect">
		<option>전체</option>
		<c:forEach items="${lecInfo }" var="each">
			<option value="${each.lecId }" >${each.lecName}</option>
		</c:forEach>
</select>

<div id="studentListDiv">
	<table>
		<tr>
			<td>학번</td>
			<td>이름</td>
			<td>성적</td>
		</tr>
	</table>
</div>
</body>
</html>
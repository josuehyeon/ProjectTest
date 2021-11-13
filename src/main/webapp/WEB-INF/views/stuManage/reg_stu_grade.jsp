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
	width: 500px;
	background-color: white;
}
td{
	border: 1px solid black;
}
.column{
	background-color: #003264;
	color: white;
}
#studentListDiv{
	margin-top: 5px;
}
</style>
<script type="text/javascript" src="/resources/stuManage/js/reg_stu_grade.js?ver=33"></script>
</head>
<body>
<table style="margin-top: 20px;">
	<tr>
		<td class="column">
			<label>강의 목록</label>
			<select id="lectureSelect" style="width: 70%;">
				<option>전체</option>
				<c:forEach items="${lecInfo }" var="each">
					<option value="${each.lecId }" >${each.lecName}</option>
				</c:forEach>
			</select>
		</td>
	</tr>
</table>
<form action="" method="get">
	<div id="studentListDiv">
		<table>
			<tr class="column">
				<td>학번</td>
				<td>이름</td>
				<td>성적</td>
			</tr>
			<tr>
				<td colspan="3">강의를 선택하세요.</td>
			</tr>
		</table>
	</div>
</form>
</body>
</html>
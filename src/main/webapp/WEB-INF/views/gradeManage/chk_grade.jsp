<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/resources/gradeManage/chk_grade.js?ver=4"></script>
</head>
<body>
<!-- <div>
	<select>
		<option>학년 선택</option>
		<option></option>
		<option>전체</option>
	</select>
</div> -->

<!-- 학년, 학기 리스트(feat.foreach) -->
<div>
	<select id="semesterSelector">
		<option value="0">전체</option>
		<c:forEach items="${semesterList}" var="semester">
			<option value="${semester.semId}">${semester.semId}</option>
		</c:forEach>
	</select>
	<%-- <select id="semesterSelector">
	<option value="0">전체</option>
		<c:forEach items="${semesterList }" var="semester">
			<option value="${semester.semester }">${semester.semester }</option>
		</c:forEach>
	</select> --%>
</div>
<!-- 학생 성적 리스트 테이블(feat.foreach) -->
<div id="gradeTableDiv">
	<table>
		<tr>
			<td>학년</td>
			<td>학기</td>
			<td>학번</td>
			<td>과목코드</td>
			<td>과목명</td>
			<td>학점</td>
			<td>등급</td>
			<td>점수</td>
		</tr>
		 <c:forEach items="${gradeList }" var="grade">
			<tr>
				<td>${grade.semesterInfo.year}</td>
				<td>${grade.semesterInfo.semester}</td>
				<td>${grade.stuNo}</td>
				<td>${grade.lecId}</td>
				<td>${grade.lectureInfo.lecName}</td>
				<td>${grade.lectureInfo.lecCredit}</td>
				<td>${grade.grade}</td>
				<td>${grade.gradeInfo.score}</td>
			</tr>
		</c:forEach>
	</table>
</div> 

</body>
</html>
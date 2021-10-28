<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/resources/gradeManage/graduation.js?ver=9"></script>
<style type="text/css">
table{
	border: 1px solid black;
	width: 600px;
}
tr,td{
	border: 1px solid black;
}
</style>
</head>
<body>
<!-- 학생 기본 정보 테이블 -->
<div>
	<table>
		<tr>
			<td>학번</td>
			<td>${stuInfo.stuNo }</td>
			<td>이름</td>
			<td>${stuInfo.memberInfo.memName }</td>
			<td>학년</td>
			<td>${stuInfo.stuYear }</td>
		</tr>
		<tr>
			<td>소속대학</td>
			<td>${stuInfo.collNo }</td>
			<td>전공</td>
			<td>${stuInfo.majorCode }</td>
			<td>부전공</td>
			<td>${stuInfo.minorCode }</td>
		</tr>
	</table>
</div>
<!-- 이수학점 정보 테이블 (F제외) -->
<div>
	<select id="semesterSelector">
		<option value="0">전체</option>
		<c:forEach items="${semesterList}" var="semester">
			<option value="${semester.semId}">${semester.semName}</option>
		</c:forEach>
	</select>
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
<!-- 총 이수학점/ 이수학점 평균 -->
<div id="totalSumAvgDiv">
	<table>
		<tr>
			<td>총 이수학점</td>
			<td>${totalInfo.lectureInfo.lecCredit }</td>
			<td>평점평균</td>
			<td>${totalInfo.gradeInfo.score}</td>
		</tr>
	</table>
</div> 

</body>
</html>
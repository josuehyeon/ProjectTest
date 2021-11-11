<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/resources/gradeManage/graduation.js?ver=12"></script>
<style type="text/css">
table{
	border: 1px solid black;
	width: 700px;
	background-color: white;
}
tr,td{
	border: 1px solid black;
	height: 30px;
}
.upperTableDiv{
	margin-top: 50px;
}
select {
	width: 70%;
	height: 100%;
}
.column{
	background-color: #003264;
	color: white;
}
</style>
</head>
<body>
<!-- 학생 기본 정보 테이블 -->
<div class="upperTableDiv">
	<table>
		<tr>
			<td class="column">학번</td>
			<td>${stuInfo.stuNo }</td>
			<td class="column">이름</td>
			<td>${stuInfo.memberInfo.memName }</td>
			<td class="column">학년</td>
			<td>${stuInfo.stuYear }</td>
		</tr>
		<tr>
			<td class="column">소속대학</td>
			<td>${stuInfo.collegeInfo.collName }</td>
			<td class="column">전공</td>
			<td>${stuInfo.majorCode }</td>
			<td class="column">부전공</td>
			<td>${stuInfo.minorCode }</td>
		</tr>
	</table>
</div>
<!-- 이수학점 정보 테이블 (F제외) -->
<div>
<table>
	<tr>
		<td class="column">
			<label for="semesterSelector">학기별 조회</label>
			<select id="semesterSelector">
				<option value="0">전체</option>
				<c:forEach items="${semesterList}" var="semester">
					<option value="${semester.semId}">${semester.semName}</option>
				</c:forEach>
			</select>
		</td>
	</tr>
</table>
</div>
<!-- 학생 성적 리스트 테이블(feat.foreach) -->
<div id="gradeTableDiv">
	<table>
		<colgroup>
			<col width="10%">
			<col width="7%">
			<col width="13%">
			<col width="40%">
			<col width="10%">
			<col width="10%">
			<col width="10%">
		</colgroup>
		<tr>
			<td class="column">학년</td>
			<td class="column">학기</td>
			<td class="column">학번</td>
			<td class="column">과목명</td>
			<td class="column">학점</td>
			<td class="column">등급</td>
			<td class="column">점수</td>
		</tr>
		<c:forEach items="${gradeList }" var="grade">
			<tr>
				<td>${grade.semesterInfo.year}</td>
				<td>${grade.semesterInfo.semester}</td>
				<td>${grade.stuNo}</td>
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
			<td class="column">총 이수학점</td>
			<td>${totalInfo.lectureInfo.lecCredit }</td>
			<td class="column">평점평균</td>
			<td>${totalInfo.gradeInfo.score}</td>
		</tr>
	</table>
</div> 

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/resources/stuManage/js/show_stu_info.js?ver=22"></script>
<style type="text/css">
div{
	margin-top: 
}
table {
	width: 700px;
	background-color: white;
}
td{
	border: 1px solid black;
}
input[type=text]{
	width: 100%;
}
#upper{
	margin-top: 50px;
}
.column{
	background-color: #003264;
	color: white;
}
#showMeSelect{
	width: 100%;
	height: 100%;
}
</style>
</head>
<body>
<!-- 대학/학년/전공/학적: 조회 -->
<form action="/stuManage/stuManageList" method="post" id="searchForm">
	<div id="upper">
		<table>
			<tr>
				<td class="column">대학</td>
				<td> 
					<select name="collNo" id="collegeList" style="width: 100%; height: 100%;">
						<option value="0">전체</option>
						<c:forEach items="${collList}" var="eachColl">
							<option value="${eachColl.collNo }">${eachColl.collName }</option>
						</c:forEach>
					</select> 
				</td>
				<td class="column">학년</td>
				<td> 
					<select name="stuYear" id="stuYear" style="width: 100%; height: 100%;">
						<option value="0">전체</option>
						<option value="1">1학년</option>
						<option value="2">2학년</option>
						<option value="3">3학년</option>
						<option value="4">4학년</option>
					</select> 
				</td>
				<td rowspan="2">
					<input type="button" id="showMeSelect" value="검색"><!--조회 버튼!!!!!!!!!!!!!!!!!!!! -->
				</td>
			</tr>
			<tr>
				<td class="column">전공</td>
				<td id="deptTd"> 
					<select name="deptId" id="deptId" style="width: 100%; height: 100%;">
						<option value="">전체</option>
					 	<c:forEach items="${deptList }" var="eachDept">
							<option value="${eachDept.deptId }">${eachDept.deptName }</option>
						</c:forEach>
					</select> 
				</td>
				<td class="column">학적</td> <!-- 학적상태 형태:(재학 0 / 휴학 1 / 복학 2/ 자퇴3 / 제적 4) --> 
				<td> 
					<select name="stuStatus" id="stuStatus" style="width: 100%; height: 100%;">
						<option value="">전체</option>
						<option value="재학">재학</option>
						<option value="휴학">휴학</option>
						<option value="복학">복학</option>
						<option value="자퇴">자퇴</option>
						<option value="제적">제적</option>
					</select> 
				</td>
			</tr>
		</table>
	</div>
<!-- 학번 또는 이름: 검색 -->
	<div>
		<table>
			<tr>
				<td class="column">검색</td>
				<td> <input type="text" name="searchValue" id="searchValue" placeholder="이름"> </td>
			</tr>
		</table>
	</div>
</form>
<!-- 학생 목록 조회 -->
<div id="studentList">
	<span style="color: red; font-size: 12px;">*학생의 이름을 클릭하면 학생의 상세페이지로 이동합니다</span>
	<table id="studentListTable">
		<colgroup>
			<col width="10%;">
			<col width="10%;">
			<col width="15%;">
			<col width="20%;">
			<col width="35%;">
			<col width="10%;">
		</colgroup>
		<tr class="column">
			<td>학번</td>
			<td>학년</td>
			<td>이름</td>
			<td>소속 대학</td>
			<td>전공</td>
			<td>학적상태</td>
		</tr>
 		<c:forEach items="${studentList }" var="eachStu">
			<tr>
				<td>${eachStu.stuNo }</td>
				<td>${eachStu.stuYear }</td>
				<td><a href="/stuManage/showStuDetail?memNo=${eachStu.stuNo}">${eachStu.memberInfo.memName}</a></td>
				<td>${eachStu.collegeInfo.collName}</td>
				<td>${eachStu.deptInfo.deptName }</td>
				<td>${eachStu.stuStatus}</td>
			</tr>
		</c:forEach>
	</table>
</div>
</body>
</html>
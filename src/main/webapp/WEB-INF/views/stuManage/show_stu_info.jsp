<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/resources/stuManage/js/show_stu_info.js?ver=2"></script>
<style type="text/css">
table {
	width: 600px;
}
td{
	border: 1px solid black;
}
</style>
</head>
<body>
<!-- 대학/학년/전공/학적: 조회 -->
<form action="#" method="post">
	<div>
		<table>
			<tr>
				<td>대학</td>
				<td> 
					<select name="collNo" id="collegeList">
						<option value="0">전체</option>
						<c:forEach items="${collList}" var="eachColl">
							<option value="${eachColl.collNo }">${eachColl.collName }</option>
						</c:forEach>
					</select> 
				</td>
				<td>학년</td>
				<td> 
					<select name="stuYear">
						<option value="0">전체</option>
						<option value="1">1학년</option>
						<option value="2">2학년</option>
						<option value="3">3학년</option>
						<option value="4">4학년</option>
					</select> 
				</td>
				<td rowspan="2">
					<input type="button" value="조회">
				</td>
			</tr>
			<tr>
				<td>전공</td>
				<td id="deptTd"> 
					<select name="deptId">
						<option>전체</option>
					 	<c:forEach items="${deptList }" var="eachDept">
							<option value="${eachDept.deptId }">${eachDept.deptName }</option>
						</c:forEach>
					</select> 
				</td>
				<td>학적</td> <!-- 학적상태 형태:(재학 0 / 휴학 1 / 복학 2/ 자퇴3 / 제적 4) --> 
				<td> 
					<select name="stuStatus">
						<option value="0">전체</option>
						<option value="1">재학</option>
						<option value="2">휴학</option>
						<option value="3">복학</option>
						<option value="4">자퇴</option>
						<option value="5">제적</option>
					</select> 
				</td>
			</tr>
		</table>
	</div>
</form>
<!-- 학번 또는 이름: 검색 -->
<div>
	<table>
		<tr>
			<td>검색</td>
			<td> <input style="width: 515px;" type="text" name="searchValue" value="" placeholder="학번 또는 이름을 검색하세요."> </td>
			<td> <input type="button" value="검색"> </td>
		</tr>
	</table>
</div>
<!-- 학생 목록 조회 -->
<div>
	<span style="color: red; text-align: left;">*학생의 이름을 클릭하면 학생의 상세페이지로 이동</span>
	<table>
		<tr>
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
				<td>${eachStu.collNo}</td>
				<td>${eachStu.majorCode }</td>
				<td>${eachStu.stuStatus}</td>
			</tr>
		</c:forEach>
	</table>
</div>
</body>
</html>
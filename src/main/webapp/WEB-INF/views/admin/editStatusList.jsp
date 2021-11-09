<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-latest.min.js"></script>

<script type="text/javascript" src="/resources/admin/js/editStatusList.js?ver=1"></script> 

<style type="text/css">
td{
	border: 1px solid black;
}
table{
	margin: 0 auto;
}
</style>
</head>
<body>
<!-- 휴학 -->
<table>
	<tr>
		<td>
			<input type="checkbox" id="checkAll">
		</td>
		<td>No</td>
		<td>학번</td>
		<td>이름</td>
		<td>기존학적</td>
		<td>변경신청</td>
		<td>신청일</td>
		<td>승인일</td>
		<td>승인상태</td>
	</tr>
	<!-- 1 휴학 -->
	<c:forEach items="${selectStopList }" var="stop" varStatus="statusStop">
		<tr>
			<td>
				<input type="checkbox" class="check" value="${stop.stuNo}">
			</td>
			<td>${statusStop.count}</td>
			<td>${stop.stuNo}</td>
			<td>${stop.memName}</td>
			<td>${stop.nowStatus}</td>
			<td>${stop.afterStatus}</td>
			<td>${stop.applyDate}</td>
			<td>${stop.approvalDate}</td>
			<c:if test="${stop.ingStatus eq '승인대기'}" >
				<td><span style="color: red; font-weight: bold;">${stop.ingStatus}</span></td>
			</c:if>
			<c:if test="${stop.ingStatus eq '승인완료'}" >
				<td><span style="color: blue; font-weight: bold;">${stop.ingStatus}</span></td>
			</c:if>
		</tr>
	</c:forEach>
<!-- 	<tr>
		<td>
			<div>　</div>
		</td>
	</tr> -->
	
<%-- <!-- 2 복학 -->
	<c:forEach items="${selectAgainList }" var="again" varStatus="statusAgain">
		<tr>
			<td>
				<input type="checkbox" class="check" value="${again.stuNo}">
			</td>
			<td>${statusAgain.count}</td>
			<td>${again.stuNo}</td>
			<td>${again.memName}</td>
			<td>${again.nowStatus}</td>
			<td>${again.afterStatus}</td>
			<td>${again.applyDate}</td>
			<td>${again.approvalDate}</td>
			<c:if test="${again.ingStatus eq '승인대기'}" >
				<td><span style="color: red; font-weight: bold;">${again.ingStatus}</span></td>
			</c:if>
			<c:if test="${again.ingStatus eq '승인완료'}" >
				<td><span style="color: blue; font-weight: bold;">${again.ingStatus}</span></td>
			</c:if>
		</tr>
	</c:forEach>
	<tr>
		<td>
			<div>　</div>
		</td>
	</tr>

<!-- 3 자퇴 -->
	<c:forEach items="${selectExitList }" var="exit" varStatus="statusExit">
		<tr>
			<td>
				<input type="checkbox" class="check" value="${exit.stuNo}">
			</td>
			<td>${statusExit.count}</td>
			<td>${exit.stuNo}</td>
			<td>${exit.memName}</td>
			<td>${exit.nowStatus}</td>
			<td>${exit.afterStatus}</td>
			<td>${exit.applyDate}</td>
			<td>${exit.approvalDate}</td>
			<c:if test="${exit.ingStatus eq '승인대기'}" >
				<td><span style="color: red; font-weight: bold;">${exit.ingStatus}</span></td>
			</c:if>
			<c:if test="${exit.ingStatus eq '승인완료'}" >
				<td><span style="color: blue; font-weight: bold;">${exit.ingStatus}</span></td>
			</c:if>
		</tr>
	</c:forEach> --%>
</table>
<div>　</div>
<div>
	<input type="button" value="휴학승인" class="stopStudyBtn" >
	<input type="button" value="복학승인" class="againStudyBtn" >
	<input type="button" value="자퇴승인" class="exitStudyBtn" >
	<input type="button" value="승인유예" class="notOkayBtn" >
	<input type="button" value="삭제" class="deleteBtn" > 
</div>
</body>
</html>





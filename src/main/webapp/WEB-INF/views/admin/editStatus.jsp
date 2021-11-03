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

<script type="text/javascript" src="/resources/admin/js/editStatus.js?ver=10"></script> 

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
	<c:forEach items="${selectEditList }" var="edit" varStatus="status">
		<tr>
			<td>
				<input type="checkbox" class="check" value="${edit.stuNo}">
			</td>
			<td>${status.count}</td>
			<td>${edit.stuNo}</td>
			<td>${edit.memName}</td>
			<td>${edit.nowStatus}</td>
			<td>${edit.afterStatus}</td>
			<td>${edit.applyDate}</td>
			<td>${edit.approvalDate}</td>
			<c:if test="${edit.ingStatus eq '승인대기'}" >
				<td><span style="color: red; font-weight: bold;">${edit.ingStatus}</span></td>
			</c:if>
			<c:if test="${edit.ingStatus eq '승인완료'}" >
				<td><span style="color: blue; font-weight: bold;">${edit.ingStatus}</span></td>
			</c:if>
		</tr>
	</c:forEach>
</table>
<div>
	<input type="button" value="승인" class="okayBtn" >
	<input type="button" value="승인유예" class="notOkayBtn" >
	<input type="button" value="삭제" class="deleteBtn" >
</div>
</body>
</html>





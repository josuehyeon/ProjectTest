<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/resources/stuManage/js/exitStudy.js?ver=2"></script>
<style type="text/css">
.stuInfo{
	width: 900px;
	margin: 0 auto;
	padding-top: 30px;
}
table{
	border: 1px solid #1d2040;
	margin: 0 auto;
	background-color: white;
	width: 900px;
	border-bottom-color: #55597a;
	
}
tr, td{
	border: 1px solid #1d2040;

}
.line{
	background-color: #55597a;;
	color: white;
	border-right: solid #1d2040;
	border-left: solid #1d2040;
	
}
input {
	border: none;
}
caption {
	color: black;
	font-weight: bold;
}
iframe {
	width: 100%;
	height: 95%;
	
}
.modal-content{
	height: 900px;
}

table {
	background-color: white;
}
.btn{
  background:#000f4c;
  color:#fff;
  border:none;
  position:relative;
  /* height:35px; */
  padding:0 2em;
  cursor:pointer;
  transition:800ms ease all;
  outline:none;
   opacity:0.65;
}
.btn:hover{
  background:#fff;
  color:#000f4c;
}
.btn:before,.btn:after{
  content:'';
  position:absolute;
  top:0;
  right:0;
  height:2px;
  width:0;
  background: #1AAB8A;
  transition:400ms ease all;
}
.btn:after{
  right:inherit;
  top:inherit;
  left:0;
  bottom:0;
}
.btn:hover:before,.btn:hover:after{
  width:100%;
  transition:800ms ease all;
}
.pageNa{margin-left: 0 auto; margin-right: 0 auto; z-index: 1;}
</style>
</head>
<body>
<div class="stuInfo">

<form action="/stuManage/goExitStudy" method="post" id="exitStudyForm">
	<table>
	<caption align="top">자퇴신청</caption>
		<tr>
			<td class="line">학번</td>
			<td><input type="text" name="stuNo" value="${exitStudyInfo.stuNo}" readonly></td>
		</tr>
		<tr>
			<td class="line">이름</td>
			<td><input type="text" name="memName" value="${exitStudyInfo.memberInfo.memName}"  readonly></td>
		</tr>
		<tr>
			<td class="line">학년</td>
			<td><input type="text" name="stuYear" value="${exitStudyInfo.stuYear}"  readonly></td>
		</tr>
		<tr>
			<td class="line">학적상태</td>
			<td><input type="text" name="stuStatus" value="${exitStudyInfo.stuStatus}"  readonly></td>
		</tr>
		<tr>
			<td class="line">전공명</td>
			<td><input type="text" name="deptName" value="${exitStudyInfo.deptInfo.deptName}"  readonly></td>
		</tr>
		<tr>
			<td class="line">단과대학</td>
			<td><input type="text" name="collName" value="${exitStudyInfo.collegeInfo.collName}"  readonly></td>
		</tr>
		<tr>
			<td class="line">생일</td>
			<td><input type="text" name="memBirth" value="${exitStudyInfo.memberInfo.memBirth}"  readonly></td>
		</tr>
		<tr>
			<td class="line">부전공</td>
			<td><input type="text" name="minorCode" value="${exitStudyInfo.minorCode}"  readonly></td>
		</tr>
	</table>
	<c:choose>
		<c:when test="${exitStudyInfo.stuStatus eq '휴학' and waitCntExit eq 0}">
			<div>
				<input class="line update btn" type="button" value="자퇴신청" id="exitStudyBtn" disabled style="margin-top: 30px; margin-left: 140px;">
			</div>
		</c:when>
		<c:when test="${exitStudyInfo.stuStatus eq '복학' and waitCntExit eq 0}">
			<div>
				<input class="line update btn" type="button" value="자퇴신청" id="exitStudyBtn" disabled style="margin-top: 30px; margin-left: 140px;">
			</div>
		</c:when>
		<c:when test="${exitStudyInfo.stuStatus eq '재학' and waitCntExit eq 0}">
			<div>
				<input class="line update btn" type="button" value="자퇴신청" id="exitStudyBtn" disabled style="margin-top: 30px; margin-left: 140px;">
			</div>
		</c:when>
		<c:otherwise>
			<div>
				<input class="line update btn" type="button" value="자퇴신청" id="exitStudyBtn" disabled style="margin-top: 30px; margin-left: 140px;">
			</div>
		</c:otherwise>
	</c:choose>
</form>
</div>
</body>
</html>
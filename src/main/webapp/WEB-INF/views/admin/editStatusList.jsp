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

<script type="text/javascript" src="/resources/admin/js/editStatusList.js?ver=18"></script> 

<style type="text/css">
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

<!-- 휴학 -->
<table class="table table-hover" style="margin-top: 30px;">
	
	<tr>
		<td scope="col">
			<input type="checkbox" id="checkAll">
		</td>
		<td scope="col">No</td>
		<td scope="col">학번</td>
		<td scope="col">이름</td>
		<td scope="col">기존학적</td>
		<td scope="col">변경신청</td>
		<td scope="col">신청일</td>
		<td scope="col">승인일</td>
		<td scope="col">승인상태</td>
	</tr>
	<!-- 1 휴학 -->
	<c:forEach items="${selectStopList }" var="stop" varStatus="statusStop">
		<tr>
			<td>
				<input type="checkbox" class="check" value="${stop.stuNo}" data-type="${stop.afterStatus}" >
			</td>
			<td>${statusStop.count}</td>
			<td>${stop.stuNo}</td>
			<td>${stop.memName}</td>
			<td>${stop.nowStatus}</td>
			<td>${stop.afterStatus}</td>
			<td>${stop.applyDate}</td>
			<td>${stop.approvalDate}</td>
			<td style="vertical-align: middle; padding-left: 8px;">
			<div class="row">
				<div class="col-12 justify-content-center text-center" >
					<div class="form-check form-check-inline">
					  <input class="form-check-input statusRadio" type="radio" name="status${statusStop.count }" id="inlineRadio1" value="1" data-stuNo="${stop.stuNo}" data-type="${stop.afterStatus}" <c:if test="${stop.ingStatus eq '승인대기' }">checked</c:if> <c:if test="${stop.ingStatus eq '승인완료' }">disabled</c:if>>
					  <label class="form-check-label" for="inlineRadio1">승인대기</label>
					</div>
					<div class="form-check form-check-inline">
					  <input class="form-check-input statusRadio" type="radio" name="status${statusStop.count }" id="inlineRadio2" value="2" data-stuNo="${stop.stuNo}" data-type="${stop.afterStatus}" <c:if test="${stop.ingStatus eq '승인완료' }">checked</c:if> <c:if test="${stop.ingStatus eq '승인완료' }">disabled</c:if>>
					  <label class="form-check-label" for="inlineRadio2">승인완료</label>
					</div>
				</div>
			</div>
				
			</td>
			<%-- <c:if test="${stop.ingStatus eq '승인대기'}" >
				<td><span style="color: red; font-weight: bold;">${stop.ingStatus}</span></td>
			</c:if>
			<c:if test="${stop.ingStatus eq '승인완료'}" >
				<td><span style="color: blue; font-weight: bold;">${stop.ingStatus}</span></td>
			</c:if> --%>
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
	<input type="button" value="일괄승인" class="stopStudyBtn btn" style="background-color: #336699; color: white; width: 100%; height: 50%;" >
<!-- 	<input type="button" value="복학승인" class="againStudyBtn" >
	<input type="button" value="자퇴승인" class="exitStudyBtn" >
	<input type="button" value="승인유예" class="notOkayBtn" >
	<input type="button" value="삭제" class="deleteBtn" >  -->
</div>
</div>
</body>
</html>





<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/resources/admin/js/stuSwitch.js?ver=7"></script>
<style type="text/css">
td{
	border: 1px solid black;
	margin: 0 auto;
}

caption {
	color: black;
	font-weight: bold;
}
.menuTd{
	background-color: #00154a;
	color: white;
}
</style>
</head>
<body>
<div>　</div>
<form action="/admin/stuSwitch1" method="post">
<table>
<caption align="top">전과신청 목록</caption>
	<tr>
		<td class="menuTd">No</td>
		<td class="menuTd">소속대학</td>
		<td class="menuTd">소속학과</td>
		<td class="menuTd">학번</td>
		<td class="menuTd">이름</td>
		<td class="menuTd">학년</td>
		<td class="menuTd">학적상태</td>
		<td class="menuTd">변경대학</td>
		<td class="menuTd">변경학과</td>
		<td class="menuTd">신청상태</td>
		<td class="menuTd">신청일</td>
	</tr>
	<tbody>
		<c:forEach items="${AdminChangeMajorRequestList }" var="changeMajorInfo" varStatus="status">
		<tr>
			<td>${AdminChangeMajorRequestList.size() - status.index }</td>
			<td>${changeMajorInfo.collegeInfo.collName }</td>
			<td>${changeMajorInfo.deptInfo.deptName }</td>
			<td>${changeMajorInfo.stuNo }</td>
			<td>${changeMajorInfo.memberInfo.memName }</td>
			<td>${changeMajorInfo.studentInfo.stuYear }</td>
			<td>${changeMajorInfo.studentInfo.stuStatus }</td>
			<td>${changeMajorInfo.upCollName }</td>
			<td>${changeMajorInfo.upDeptName }</td>
			<td>
				<!-- Button trigger modal -->
				<!-- <input type="button" class="btn btn-primary modalBtn" data-bs-toggle="modal" data-bs-target="#exampleModal"  value="처리대기"> -->
				<input type="button" class="btn btn-primary modalBtn" value='<c:choose><c:when test="${changeMajorInfo.status eq 'N' }">처리대기</c:when><c:otherwise>승인완료</c:otherwise></c:choose>' data-stuNo="${changeMajorInfo.stuNo }" data-type="1">
			</td>
			<td>${changeMajorInfo.insertDate }</td>
		</tr>
		</c:forEach>
	</tbody>
</table>

<div>　</div>
<table>
<caption align="top">전과신청 목록</caption>
	<tr>
		<td class="menuTd">No</td>
		<td class="menuTd">소속대학</td>
		<td class="menuTd">소속학과</td>
		<td class="menuTd">학번</td>
		<td class="menuTd">이름</td>
		<td class="menuTd">학년</td>
		<td class="menuTd">학적상태</td>
		<td class="menuTd">변경대학</td>
		<td class="menuTd">변경학과</td>
		<td class="menuTd">신청상태</td>
		<td class="menuTd">신청일</td>
	</tr>
	<tbody>
		<c:forEach items="${AdminDoubleMajorRequestList }" var="doubleMajorInfo" varStatus="status">
		<tr>
			<td>${AdminDoubleMajorRequestList.size() - status.index }</td>
			<td>${doubleMajorInfo.collegeInfo.collName }</td>
			<td>${doubleMajorInfo.deptInfo.deptName }</td>
			<td>${doubleMajorInfo.stuNo }</td>
			<td>${doubleMajorInfo.memberInfo.memName }</td>
			<td>${doubleMajorInfo.studentInfo.stuYear }</td>
			<td>${doubleMajorInfo.studentInfo.stuStatus }</td>
			<td>${doubleMajorInfo.doubleCollName }</td>
			<td>${doubleMajorInfo.doubleDeptName }</td>
			<td>
				<!-- Button trigger modal -->
				<!-- <input type="button" class="btn btn-primary modalBtn" data-bs-toggle="modal" data-bs-target="#exampleModal"  value="처리대기"> -->
				<input type="button" class="btn btn-primary modalBtn" value="<c:choose><c:when test="${doubleMajorInfo.status eq 'N' }">처리대기</c:when><c:otherwise>승인완료</c:otherwise></c:choose>" data-stuNo="${doubleMajorInfo.stuNo }" data-type="2">
			</td>
			<td>${doubleMajorInfo.insertDate }</td>
		</tr>
		</c:forEach>
	</tbody>
</table>


</form>


<!-- 전과 신청 목록 Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">학생 정보</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        
        <!-- STUDENT 테이블에서 오는 정보 -->
		<div>
			<input type="hidden" id="type" value="">
			<table  style="width: 460px;">
				<colgroup>
					<col width="20%">
					<col width="15%">
					<col width="25%">
					<col width="15%">
					<col width="25%">
				</colgroup>
				<tr>
					<td rowspan="3">이미지첨부</td>
					<td>학번</td>
					<td class="stuNoTd"></td>
					<td>이름</td>
					<td class="stuNameTd"></td>
				</tr>
				<tr>
					<td>전공</td>
					<td class="stuMajorTd"></td>
					<td>부전공</td>
					<td class="stuMinorTd"></td>
				</tr>
				<tr>
					<td>학년/성별</td>
					<td class="stuYearGenderTd"></td>
					<td>학적상태</td>
					<td class="stuStatusTd"></td>
				</tr>
			</table>
		</div>
		<!-- 멤버 테이블에서 오는 정보 -->
		<!-- <div style="height: 10px;"></div> -->
		<div>
			<table style="width: 460px;">
				<colgroup>
					<col width="15%">
					<col width="*">
					<col width="15%">
					<col width="*">
				</colgroup>
				<tr>
					<td>생년월일</td>
					<td class="stuBirTd"></td>
					<td>이메일</td>
					<td class="stuEmailTd"></td>
				</tr>
				<tr>
					<td>전화번호</td>
					<td class="stuTelTd"></td>
					<td>휴대폰</td>
					<td class="stuPhoneTd"></td>
				</tr>
				<tr>
					<td>우편번호</td>
					<td class="stuPostCodeTd"></td>
					<td>주소</td>
					<td class="stuAddrTd"></td>
				</tr>
			</table>
		</div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
        <button type="button" class="btn btn-primary" id="modalAjax" >승인하기</button>
      </div>
    </div>
  </div>
</div>
<div>　</div>
<div>　</div>
<div>　</div>
<div>　</div>
<div>　</div>




</body>
</html>
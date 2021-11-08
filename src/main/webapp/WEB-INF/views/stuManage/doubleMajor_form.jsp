<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/resources/stuManage/js/doubleMajor_form.js?ver=0123"></script>
<style type="text/css">
.stuInfo{
	width: 900px;
}
table{
	border: 1px solid black;
	margin: 0 auto;
}
tr, td{
	border: 1px solid black;

}

</style>
</head>
<body>
<div class="stuInfo">
<form action="/stuManage/doubleMajor" method="post" id="doubleMajor">
<input type="hidden" name="stuNo" value="${stuInfo.stuNo }">
<input type="hidden" name="collNo" value="${stuInfo.collegeInfo.collNo }">
<input type="hidden" name="deptId" value="${stuInfo.majorCode }">
<table> 
	<caption align="top">학생정보</caption>
 	<colgroup>
		<col width="10%">
		<col width="20%">
		<col width="10%">
		<col width="20%">
		<col width="10%">
		<col width="20%">
	</colgroup>
<tr>
	<td>이름</td>
	<td>${stuInfo.memberInfo.memName }</td>
	<td>학번</td>
	<td>${stuInfo.stuNo }</td>
	<td>학년</td>
	<td>${stuInfo.stuYear }</td>
</tr>
<tr>
	<td>대학</td>
	<td>${stuInfo.collegeInfo.collName }</td>
	<td>전공</td>
	<td>${stuInfo.majorName }</td>
	<td>부전공</td>
	<td>${stuInfo.minorName }</td>
</tr>
<tr>
	<td>성별</td>
	<td>${stuInfo.memberInfo.memGen }</td>
	<td>생일</td>
	<td>${stuInfo.memberInfo.memBirth }</td>
	<td>학적상태</td>
	<td>${stuInfo.stuStatus }</td>
</tr>
</table>
<table> 
	<caption align="top">복수전공 신청</caption>
 	<colgroup>
		<col width="10%">
		<col width="20%">
		<col width="10%">
		<col width="20%">
	</colgroup>
<tr>
	<td>현재대학</td>
	<td>${stuInfo.collegeInfo.collName }</td>
	<td>현재학과</td>
	<td>${stuInfo.majorName }</td>
</tr>
<tr>
	<td>복수전공대학</td>
	<td>
		  <select class="form-select" name="doubleColl" id="collegeList">
          	<c:forEach items="${collegeList }" var="collegeInfo">
          	  <option value="${collegeInfo.collNo }">${collegeInfo.collName }</option>
          	</c:forEach>
          </select>
	</td>
	<td>복수전공학과</td>
	<td id="tableDiv">
		 <select class="form-select" name="doubleDept" id="deptList">
         	<c:forEach items="${deptList }" var="deptInfo">
         	  <option value="${deptInfo.deptId }">${deptInfo.deptName }</option>
         	</c:forEach>
         </select>
	</td>
</tr>
<tr>
	<td>복수전공사유</td>
	<td colspan="3">
		<input type="text" name="reason" style="border-color: white; width: 100%;">
	</td>
</tr>
<tr>
	<td colspan="4"><input type="button" value="신청하기" onclick="doubleMajor();"></td>
</tr>
</table>
</form>

<table class="table">
	<caption align="top">복수전공 신청 내역</caption>	
  <thead>
    <tr>
     <th scope="col">No</th>
      <th scope="col">소속대학</th>
      <th scope="col">소속학과</th>
      <th scope="col">변경대학</th>
      <th scope="col">변경학과</th>
      <th scope="col">신청일</th>
      <th scope="col">승인일</th>
      <th scope="col">승인여부</th>
    </tr>
  </thead>
  <tbody>
   <c:forEach items="${doubleMajorList }" var="doubleMajorInfo">
    <tr>
      <th scope="row">${doubleMajorInfo.doubleId }</th>
      <td>${doubleMajorInfo.collName }</td>
      <td>${doubleMajorInfo.deptName }</td>
      <td>${doubleMajorInfo.doubleCollName }</td>
      <td>${doubleMajorInfo.doubleDeptName }</td>
      <td>${doubleMajorInfo.insertDate }</td>
      <td>${doubleMajorInfo.updateDate }</td>
      <td>${doubleMajorInfo.status }</td>
    </tr>
    </c:forEach>
  </tbody>
</table>
</div>
</body>
</html>
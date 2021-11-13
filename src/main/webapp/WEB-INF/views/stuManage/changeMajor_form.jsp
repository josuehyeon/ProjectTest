<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/resources/stuManage/js/changeMajor_form.js?ver=0122d3"></script>
<style type="text/css">
.stuInfo{
	width: 900px;
	margin: 0 auto;
	padding-top: 30px;
}
table{
	border: 1px solid #55597a;
	margin: 0 auto;
	background-color: white;
	width: 900px;
	border-bottom-color: #55597a;
	
}
tr, td{
	border: 1px solid #55597a;

}
.line{
	background-color: #55597a;
	color: white;
	border-right: solid #000f4c;
	border-left: solid #000f4c; 
	
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
  background:#55597a;
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
  background:#ffffff;
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
	<form action="/stuManage/changeMajor" method="post" id="changeMajor">
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
			<td class="line">이름</td>
			<td>${stuInfo.memberInfo.memName }</td>
			<td class="line">학번</td>
			<td>${stuInfo.stuNo }</td>
			<td class="line">학년</td>
			<td>${stuInfo.stuYear }</td>
		</tr>
		<tr>
			<td class="line">대학</td>
			<td>${stuInfo.collegeInfo.collName }</td>
			<td class="line">전공</td>
			<td>${stuInfo.majorName }</td>
			<td class="line">부전공</td>
			<td>${stuInfo.minorName }</td>
		</tr>
		<tr>
			<td class="line">성별</td>
			<td>${stuInfo.memberInfo.memGen }</td>
			<td class="line">생일</td>
			<td>${stuInfo.memberInfo.memBirth }</td>
			<td class="line">학적상태</td>
			<td>${stuInfo.stuStatus }</td>
		</tr>
		</table>
		<table> 
			<caption align="top">전과 신청</caption>
		 	<colgroup>
				<col width="10%">
				<col width="20%">
				<col width="10%">
				<col width="20%">
			</colgroup>
		<tr>
			<td class="line">현재대학</td>
			<td>${stuInfo.collegeInfo.collName }</td>
			<td class="line">현재학과</td>
			<td>${stuInfo.majorName }</td>
		</tr>
		<tr>
			<td class="line">변경대학</td>
			<td>
				  <select class="form-select" name="upColl" id="collegeList">
		          	<c:forEach items="${collegeList }" var="collegeInfo">
		          	  <option value="${collegeInfo.collNo }">${collegeInfo.collName }</option>
		          	</c:forEach>
		          </select>
			</td>
			<td class="line">변경학과</td>
			<td id="tableDiv">
				 <select class="form-select" name="upDept" id="deptList">
		         	<c:forEach items="${deptList }" var="deptInfo">
		         	  <option value="${deptInfo.deptId }">${deptInfo.deptName }</option>
		         	</c:forEach>
		         </select>
			</td>
		</tr>
		<tr>
			<td class="line">전과사유</td>
			<td colspan="3">
				<input type="text" name="reason" style="border-color: white; width: 100%;">
			</td>
		</tr>
		</table>
		<input class="line update btn" type="button" value="신청하기" onclick="changeMajor();"
			style="margin-top: 30px;">
		</form>
		
		<table class="table">
			<caption align="top">전과 신청 내역</caption>	
		  <thead  class="line">
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
		  <c:forEach items="${changeMajorList }" var="changeMajorInfo">
		    <tr>
		      <th scope="row">${changeMajorInfo.changeId }</th>
		      <td>${changeMajorInfo.collegeInfo.collName }</td>
		      <td>${changeMajorInfo.deptInfo.deptName }</td>
		      <td>${changeMajorInfo.upCollName }</td>
		      <td>${changeMajorInfo.upDeptName }</td>
		      <td>${changeMajorInfo.insertDate }</td>
		      <td>${changeMajorInfo.updateDate }</td>
		      <td>${changeMajorInfo.status }</td>
		    </tr>
		    </c:forEach>
		  </tbody>
		</table>
</div>
</body>
</html>
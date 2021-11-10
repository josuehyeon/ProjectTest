<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/resources/admin/js/stuSwitch.js?ver=2"></script>
<style type="text/css">
td{
	border: 1px solid black;
	margin: 0 auto;
}
</style>
</head>
<body>
<form action="/admin/stuSwitch1" method="post">

<div>5 전과 / 복수전공</div>
<div>전과신청목록</div>
<table>
	<tr>
		<td>No</td>
		<td>소속대학</td>
		<td>소속학과</td>
		<td>학번</td>
		<td>이름</td>
		<td>학년</td>
		<td>학적상태</td>
		<td>변경대학</td>
		<td>변경학과</td>
		<td>신청상태</td>
		<td>신청일</td>
	</tr>
	<tbody>
		<c:forEach items="${AdminChangeMajorRequestList }" var="changeMajorInfo">
		<tr>
			<td>${changeMajorInfo.changeId }</td>
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
				<input type="button" class="btn btn-primary modalBtn" data-bs-toggle="modal" data-bs-target="#exampleModal"  value="처리대기">
				
				<!-- Modal -->
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
							<table>
								<tr>
									<td rowspan="3">이미지첨부</td>
									<td>학번</td>
									<td>${modalStuInfo.studentInfo.stuNo }</td>
									<td>이름</td>
									<td>${modalStuInfo.memberInfo.memName }</td>
								</tr>
								<tr>
									<td>전공</td>
									<td>${modalStuInfo.doubleMajorInfo.deptName }</td>
									<td>부전공</td>
									<td>${modalStuInfo.studentInfo.minorCode }</td>
								</tr>
								<tr>
									<td>학년/성별</td>
									<td>${modalStuInfo.studentInfo.stuYear }학년/${modalStuInfo.memberInfo.memGen}</td>
									<td>학적상태</td>
									<td>${modalStuInfo.studentInfo.stuStatus }</td>
								</tr>
							</table>
						</div>
						<!-- 멤버 테이블에서 오는 정보 -->
						<div>
							<table>
								<tr>
									<td>생년월일</td>
									<td>${modalStuInfo.memberInfo.memBirth }</td>
									<td>이메일</td>
									<td>${modalStuInfo.memberInfo.memEmail }</td>
								</tr>
								<tr>
									<td>전화번호</td>
									<td>${modalStuInfo.memberInfo.memTel }</td>
									<td>휴대폰</td>
									<td>${modalStuInfo.memberInfo.memPhone }</td>
								</tr>
								<tr>
									<td>우편번호</td>
									<td>${modalStuInfo.memberInfo.postcode }</td>
									<td>주소</td>
									<td>${modalStuInfo.memberInfo.memAddr }</td>
								</tr>
							</table>
						</div>
				      </div>
				      <div class="modal-footer">
				        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
				        <button type="button" class="btn btn-primary" id="modal">승인하기</button>
				      </div>
				    </div>
				  </div>
				</div>
			</td>
			<td>${changeMajorInfo.insertDate }</td>
		</tr>
		</c:forEach>
	</tbody>
</table>

<div>복수전공 신청목록</div>
<table>
	<tr>
		<td>No</td>
		<td>소속대학</td>
		<td>소속학과</td>
		<td>학번</td>
		<td>이름</td>
		<td>학년</td>
		<td>학적상태</td>
		<td>변경대학</td>
		<td>변경학과</td>
		<td>신청상태</td>
		<td>신청일</td>
	</tr>
	<tbody>
		<c:forEach items="${AdminChangeMajorRequestList }" var="changeMajorInfo">
		<tr>
			<td>${changeMajorInfo.changeId }</td>
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
				<input type="button" class="btn btn-primary modalBtn" data-bs-toggle="modal" data-bs-target="#exampleModal"  value="처리대기">
				
				<!-- Modal -->
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
							<table>
								<tr>
									<td rowspan="3">이미지첨부</td>
									<td>학번</td>
									<td>${modalStuInfo.studentInfo.stuNo }</td>
									<td>이름</td>
									<td>${modalStuInfo.memberInfo.memName }</td>
								</tr>
								<tr>
									<td>전공</td>
									<td>${modalStuInfo.doubleMajorInfo.deptName }</td>
									<td>부전공</td>
									<td>${modalStuInfo.studentInfo.minorCode }</td>
								</tr>
								<tr>
									<td>학년/성별</td>
									<td>${modalStuInfo.studentInfo.stuYear }학년/${modalStuInfo.memberInfo.memGen}</td>
									<td>학적상태</td>
									<td>${modalStuInfo.studentInfo.stuStatus }</td>
								</tr>
							</table>
						</div>
						<!-- 멤버 테이블에서 오는 정보 -->
						<div>
							<table>
								<tr>
									<td>생년월일</td>
									<td>${modalStuInfo.memberInfo.memBirth }</td>
									<td>이메일</td>
									<td>${modalStuInfo.memberInfo.memEmail }</td>
								</tr>
								<tr>
									<td>전화번호</td>
									<td>${modalStuInfo.memberInfo.memTel }</td>
									<td>휴대폰</td>
									<td>${modalStuInfo.memberInfo.memPhone }</td>
								</tr>
								<tr>
									<td>우편번호</td>
									<td>${modalStuInfo.memberInfo.postcode }</td>
									<td>주소</td>
									<td>${modalStuInfo.memberInfo.memAddr }</td>
								</tr>
							</table>
						</div>
				      </div>
				      <div class="modal-footer">
				        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
				        <button type="button" class="btn btn-primary" id="modal">승인하기</button>
				      </div>
				    </div>
				  </div>
				</div>
			</td>
			<td>${changeMajorInfo.insertDate }</td>
		</tr>
		</c:forEach>
	</tbody>
</table>

</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><!DOCTYPE html>
    
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/resources/admin/js/stuGetOut.js?ver="></script>
<style type="text/css">
table {
	width: 600px;
}
td{
	border: 1px solid black;
}
div > span{
	text-align: left;
}
.td_1{
	width: 100px;
}
.td_2{
	width: 150px;
}
</style>
</head>
<body>
제적 페이지
<form action="/admin/stuGetOut" method="post">

<table>
	<tr>
		<td>대학</td>
		<td>
			<select name="collNo" id="collList">
				<option value="0">전체</option>
				<c:forEach items="${collList }" var="coll">
					<option value="${coll.collNo }">
						${coll.collName }
					</option>
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
		<!-- <td rowspan="2"><input type="button" value="조회"></td> -->
	</tr>
	<tr>
		<td>전공</td>
		<td id="deptTd">
			<select name="majorCode">
				<option value="">전체</option>
				<c:forEach items="${deptList }" var="dept">
					<option value="${dept.deptId }">${dept.deptName }</option>
				</c:forEach>
			</select>
		</td>
		<td>학적</td>
		<td>
			<select name="stuStatus">
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
<div></div>
<table>
	<tr>
		<td>검색</td>
		<td><input type="text" style="width: 515px;" placeholder="학번 또는 이름을 검색하세요."></td>
		<td><input type="submit" value="검색"></td>
	</tr>
</table>
</form>
<div>
	<span style="color: red;">*학생의 이름을 클릭하면 학생의 상세페이지로 이동</span>
</div>
<div>
	<table>
		<tr>
			<td>학번</td>
			<td>학년</td>
			<td>이름</td>
			<td>대학</td>
			<td>전공</td>
			<td>경고횟수</td>
		</tr>
		<c:forEach items="${studentList }" var="student">
			<tr>
				<td>${student.stuNo }</td>
				<td>${student.stuYear }</td>
				<td>${student.memberInfo.memName}
					<!-- Button trigger modal -->
					<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
					  이름
					</button>
					
					<!-- Modal -->
					<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
					  <div class="modal-dialog">
					    <div class="modal-content">
					      <div class="modal-header">
					        <h5 class="modal-title" id="staticBackdropLabel">제적</h5>
					        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					      </div>
					      <div class="modal-body">
					        <div>
							<table>
								<tr>
									<td class="td_1">학번</td>
									<td class="td_2">2010어쩌구</td>
								</tr>
								<tr>
									<td class="td_1">이름</td>
									<td class="td_2">김김김</td>
								</tr>
								<tr>
									<td class="td_1">학년</td>
									<td class="td_2">1</td>
								</tr>
								<tr>
									<td class="td_1">단과대학</td>
									<td class="td_2">인문사회대학</td>
								</tr>
								<tr>
									<td class="td_1">전공</td>
									<td class="td_2">국어국문학과</td>
								</tr>
								<tr>
									<td class="td_1">이메일</td>
									<td class="td_2">aaa@gmail.com</td>
								</tr>
								<tr>
									<td class="td_1">경고학기</td>
									<td class="td_2">
										<select>
											<option>2021</option>
											<option>2020</option>
										</select>년도
										<select>
											<option>1</option>
											<option>2</option>
										</select>학기
									</td>
								</tr>
								<tr>
									<td class="td_1">사유</td>
									<td class="td_2">
										<select>
											<option>이수학점 미달</option>
											<option>평균학점 미달</option>
											<option>학칙위반</option>
											<option>부정행위</option>
											<option>수강신청 미시행</option>
											<option>등록금 미납</option>
										</select>
									</td>
								</tr>
								<tr>
									<td colspan="2">
										<input type="checkbox" name="" checked>
										학생에게 안내 메일을 전송하시겠습니까?
									</td>
								</tr>
							</table>
						</div>
					      </div>
					      <div class="modal-footer">
					        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" id="notOkayBtn">취소</button>
					        <button type="button" class="btn btn-primary" id="okayBtn">확인</button>
					      </div>
					    </div>
					  </div>
					</div>
				</td>
				<td>${student.collNo }</td>
				<td>${student.deptInfo.deptName }</td>
				<td></td>
			</tr>
		</c:forEach>
	</table>
</div>


</body>
</html>
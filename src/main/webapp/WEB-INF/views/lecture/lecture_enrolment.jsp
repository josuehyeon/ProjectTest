<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
iframe {
	width: 100%;
	height: 95%;
	
}
.modal-content{
	height: 900px;
}
</style>
<script type="text/javascript" src="/resources/sample/js/lecture_enrolment.js?ver=2223222222222593"></script>
</head>
<body>
<form action="/lecture/goEnrolment" method="post">
<div class="row">
  <div class="col">
    <label for="collegeList" class="form-label">단대</label>
      <!-- 단과대선택 -->
      <select class="form-select" id="collegeList" name="collNo">
      	<c:forEach items="${collegeList }" var="collegeInfo">
      	  <option value="${collegeInfo.collNo }">${collegeInfo.collName }</option>
      	</c:forEach>
      </select>
  </div>
  <div class="col" id="tableDiv">
    <label for="deptList" class="form-label">학과</label>
       <select class="form-select" id="deptList" name="deptId">
       	<c:forEach items="${deptList }" var="deptInfo">
       	  <option value="${deptInfo.deptId }">${deptInfo.deptName }</option>
       	</c:forEach>
       </select>
  </div>
<div class="col">
 <label for="" class="form-label">강의이름</label>
	<input class="form-control" type="text" name="lecName">
	<input type="submit" class="btn btn-primary" value="검색">
</div>
</div>
</form>

<table class="table">
<caption align="top">강의리스트</caption>
  <thead>
    <tr>
      <th scope="col">강의ID</th>
      <th scope="col">강의이름</th>
      <th scope="col">학점</th>
      <th scope="col">단과대학</th>
      <th scope="col">학과</th>
      <th scope="col">교수</th>
      <th scope="col">조교수</th>
      <th scope="col">강의요일</th>
      <th scope="col">강의교시</th>
      <th scope="col"></th>
    </tr>
  </thead>
  <tbody>
<c:forEach items="${lectureList}" var="lectureInfo">
    <tr>
      <th scope="row">
      ${lectureInfo.lecId }</th>
      <td><a data-lecId="${lectureInfo.lecId }" class="pdf">${lectureInfo.lecName }</a></td>
      <td>${lectureInfo.lecCredit }</td>
      <td>${lectureInfo.collName }</td>
      <td>${lectureInfo.deptName }</td>
      <td>${lectureInfo.profName }</td>
      <td>${lectureInfo.assiName }</td>
      <td>${lectureInfo.lecDay }</td>
      <td>${lectureInfo.lecPeriod }</td>
      <td>
      	<form action="/lecture/enrolment" method="post" id="enrolment">
	      	 <input type="hidden" name="lecId" value="${lectureInfo.lecId }">
	   		 <input type="hidden" name="stuNo" value="${stuInfo.stuNo }">
	    	<input type="button" class="enrolment" value="신청">
		</form>
	  </td>
    </tr>
</c:forEach>
  </tbody>
</table>


<table class="table">
<caption align="top">수강신청</caption>
  <thead>
    <tr>
      <th scope="col">강의ID</th>
      <th scope="col">강의이름</th>
      <th scope="col">학점</th>
      <th scope="col">단과대학</th>
      <th scope="col">학과</th>
      <th scope="col">교수</th>
      <th scope="col">조교수</th>
      <th scope="col">강의요일</th>
      <th scope="col">강의교시</th>
      <th scope="col"></th>
    </tr>
  </thead>
  <tbody>
<c:forEach items="${enrolmentList}" var="enrolmentInfo">
    <tr>
      <th scope="row">${enrolmentInfo.lecId }</th>
      <td><a data-lecId="${enrolmentInfo.lecId }" class="pdf">${enrolmentInfo.lectureViewVO.lecName }</a></td>
      <td>${enrolmentInfo.lectureViewVO.lecCredit }</td>
      <td>${enrolmentInfo.lectureViewVO.collName }</td>
      <td>${enrolmentInfo.lectureViewVO.deptName }</td>
      <td>${enrolmentInfo.lectureViewVO.profName }</td>
      <td>${enrolmentInfo.lectureViewVO.assiName }</td>
      <td>${enrolmentInfo.lectureViewVO.lecDay }</td>
      <td>${enrolmentInfo.lectureViewVO.lecPeriod }</td>
      <td>
	      <input type="button" value="빼기" onclick="deleteEnrol('${enrolmentInfo.enrolmentId}');">
		  
	  </td>
    </tr>
</c:forEach>
  </tbody>
</table>

<div class="modal" tabindex="-1" id="pdfModal">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h10 class="modal-title">강의자료</h10>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <iframe src="/resources/pdfs/${lecPdf.attachedPdfName}"></iframe>
      </div>
    </div>
  </div>
</div>

</body>
</html>
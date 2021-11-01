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
<script type="text/javascript" src="/resources/sample/js/lecture_enrolment.js?ver=222259"></script>
</head>
<body>

<table class="table">
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
      <th scope="row">${lectureInfo.lecId }</th>
      <td><a data-lecId="${lectureInfo.lecId }" class="pdf">${lectureInfo.lecName }</a></td>
      <td>${lectureInfo.lecCredit }</td>
      <td>${lectureInfo.collName }</td>
      <td>${lectureInfo.deptName }</td>
      <td>${lectureInfo.profName }</td>
      <td>${lectureInfo.assiName }</td>
      <td>${lectureInfo.lecDay }</td>
      <td>${lectureInfo.lecPeriod }</td>
      <td>
	      <input type="button" class="enrolment" value="신청" data-lecId="${lectureInfo.lecId }">
		  
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
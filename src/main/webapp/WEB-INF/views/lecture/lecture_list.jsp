<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/resources/sample/js/lecture_list.js?ver=222222222"></script>
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
      <th scope="col"></th>
    </tr>
  </thead>
  <tbody>
<c:forEach items="${lectureList}" var="lectureInfo">
    <tr>
      <th scope="row">${lectureInfo.lecId }</th>
      <td><a href="/lecture/lecPdf?lecId=${lectureInfo.lecId }">${lectureInfo.lecName }</a></td>
      <td>${lectureInfo.lecCredit }</td>
      <td>${lectureInfo.collName }</td>
      <td>${lectureInfo.deptName }</td>
      <td>${lectureInfo.profName }</td>
      <td>${lectureInfo.assiName }</td>
      <td>
	      <input type="button" class="delete" value="삭제" data-lecId="${lectureInfo.lecId }">
		  <input type="button" class="update" value="수정" data-lecId="${lectureInfo.lecId }">
	  </td>
    </tr>
</c:forEach>
  </tbody>
</table>
</body>
</html>
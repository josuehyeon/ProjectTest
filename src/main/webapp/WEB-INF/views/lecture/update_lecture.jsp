<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/sample/css/sample.css">
<script type="text/javascript" src="/resources/sample/js/sample.js"></script>
<style type="text/css">
.myContainer{
   background-color: #F9F9F9;
   border-radius: 6px;
   padding: 16px;
}
</style>
</head>
<body>
<div class="row justify-content-center">
   <div class="col-11">
      <div class="row">
         <div class="col-5" style="border-bottom: 2px solid #0d6efd; font-style: italic; font-weight: bold;">
            <h5>REGISTRATION LECTURE</h5>
         </div>
      </div>
      <div style="height: 20px;"></div>
      <div class="row">
         <div class="col myContainer">
            <form class="row g-3" action="/lecture/regLecture" method="post" enctype="multipart/form-data">
               <div class="col-6">
                  <label for="collegeList" class="form-label">단대</label>
                  <!-- 단과대선택 -->
                  <select class="form-select" id="collegeList" name="collNo">
                  	<c:forEach items="${collegeList }" var="collegeInfo">
                  	  <option value="${collegeInfo.collNo }">${collegeInfo.collName }</option>
                  	</c:forEach>
                  </select>
                  </div>
                   <div class="col-6">
                  <!-- 학과선택 -->	
                   <label for="deptList" class="form-label">학과</label>
                  <select class="form-select" id="deptList" name="deptId">
                  	<c:forEach items="${deptList }" var="deptInfo">
                  	  <option value="${deptInfo.deptId }">${deptInfo.deptName }</option>
                  	</c:forEach>
                  </select>
               </div>
                  <!-- 담당교수 -->	
                  <div class="col-6">
                  	 <label for="empList" class="form-label">담당교수</label>
                  <select class="form-select" id="empList" name="profNo">
                  	<c:forEach items="${empList }" var="empInfo">
                  	  <option value="${empInfo.empNo }">${empInfo.empName }</option>
                  	</c:forEach>
                  </select>
                  </div>
                  <!-- 담당조교 -->	
                  <div class="col-6">
                  	 <label for="itemCategory" class="form-label">담당조교</label>
                  <select class="form-select" id="itemCategory" name="assiNo">
                  	<c:forEach items="${assiList }" var="assiInfo">
                  	  <option value="${assiInfo.empNo }">${assiInfo.empName }</option>
                  	</c:forEach>
                  </select>
                  </div>
               <div class="col-6">
                  <label for="itemName" class="form-label">개설강의명</label>
                  <input type="text" name="lecName" class="form-control" id="itemName" placeholder="input here...">
               </div>
               <div class="col-6">
                  <label for="itemPrice" class="form-label">학점</label>
                  <input type="text" name="lecCredit" class="form-control" id="itemPrice" placeholder="input here...">
               </div>
               <div class="col-6">
                  <label for="formFile" class="form-label">강의자료첨부</label>
                    <input name="file1" class="form-control" type="file" id="formFile">
               </div>
               <div class="col-12 text-center">
                   <input type="submit" class="btn btn-primary" value="REGISTRATION">
                 </div>
            </form>
         </div>
      </div>
   </div>
</div>
</body>
</html>







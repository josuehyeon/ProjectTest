<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/sample/css/sample.css">
<script type="text/javascript" src="/resources/sample/js/reg_lecture.js?ver=0122243"></script>
<style type="text/css">
.myContainer{
   width: 900px;
   background-color: #F9F9F9;
   border-radius: 6px;
   padding: 16px;
   margin: 0 auto;
}

.btn{
  background:#336699;
  color:#fff;
  border:none;
  position:relative;
  height:35px;
  padding:0 2em;
  cursor:pointer;
  transition:800ms ease all;
  outline:none;
   opacity:0.65;
   font-weight: bold;
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

</style>
</head>
<body>
<div class="row justify-content-center">
   <div class="col-11">
      <div class="row">
         <div class="col-5" style="border-bottom: 2px solid #0d6efd; font-style: italic; font-weight: bold; margin: 0 auto;">
            <h5 style="text-align: center; margin-top: 20px;">UPDATE LECTURE</h5>
         </div>
      </div>
      <div style="height: 20px;"></div>
      <div class="row myContainer">
         <div class="col">
            <form class="row g-3" action="/lecture/updateLecture" method="post" enctype="multipart/form-data">
            	<input type="hidden" value="${lectureList[0].lecId }" name="lecId">
               <div class="col">
                  <label for="collegeList" class="form-label">단대</label>
                  <!-- 단과대선택 -->
                  <select class="form-select" id="collegeList" name="collNo">
                  	<c:forEach items="${collegeList }" var="collegeInfo">
                  	  <option value="${collegeInfo.collNo }" 
                  	  <c:if test="${collegeInfo.collNo eq lectureList[0].collNo}">selected</c:if>>${collegeInfo.collName }</option>
                  	</c:forEach>
                  </select>
                  </div>
              <div id="tableDiv">
                   <div class="col">
                  <!-- 학과선택 -->	
                   <label for="deptList" class="form-label">학과</label>
                  <select class="form-select" id="deptList" name="deptId">
                  	<c:forEach items="${deptList }" var="deptInfo">
                  	  <option value="${deptInfo.deptId }" 
                  	  <c:if test="${deptInfo.deptId eq lectureList[0].deptId}">selected</c:if>>${deptInfo.deptName }
                  	  </option>
                  	</c:forEach>
                  </select>
               </div>
                  <!-- 담당교수 -->	
                  <div class="col">
                  	 <label for="empList" class="form-label">담당교수</label>
                  <select class="form-select" id="empList" name="profNo">
                  	<c:forEach items="${empList }" var="empInfo">
                  	  <option value="${empInfo.empNo }"
                  	  <c:if test="${empInfo.empNo eq lectureList[0].profNo }">selected</c:if>>${empInfo.memberVO.memName }</option>
                  	</c:forEach>
                  </select>
                  </div>
                  <!-- 담당조교 -->	
                  <div class="col">
                  	 <label for="itemCategory" class="form-label">담당조교</label>
                  <select class="form-select" id="itemCategory" name="assiNo">
                  	<c:forEach items="${assiList }" var="assiInfo">
                  	  <option value="${assiInfo.empNo }"
                  	  <c:if test="${assiInfo.empNo eq lectureList[0].assiNo }">selected</c:if>>${assiInfo.memberVO.memName }</option>
                  	</c:forEach>
                  </select>
                  </div>
               </div>
               <div>
               <div class="col">
                  <label for="itemName" class="form-label">개설강의명</label>
                  <input type="text" name="lecName" class="form-control" id="itemName" placeholder="input here..." 
                  value="${lectureList[0].lecName }" required>
               </div>
               <div class="col">
                  <label for="itemPrice" class="form-label">학점</label>
                  <input type="text" name="lecCredit" class="form-control" id="itemPrice" placeholder="input here..." 
                  value="${lectureList[0].lecCredit}" required>
               </div>
               <div class="col">
                  <label for="formFile" class="form-label">강의자료첨부</label>
                    <input name="file" class="form-control" type="file" id="formFile" value="${lecPdf.originPdfName}">
               </div>
                <div class="col">
                  <label for="lecDay" class="form-label">강의요일선택</label>
               <select class="form-select" id="" name="lecDay">
                  	<option value="${lectureList[0].lecDay}">${lectureList[0].lecDay}</option>
                  	  <option value="월">월</option>
                  	  <option value="화">화</option>
                  	  <option value="수">수</option>
                  	  <option value="목">목</option>
                  	  <option value="금">금</option>
                  </select>
                 </div>
               <div class="col">
                  <label for="lecPeriod" class="form-label">강의교시선택</label>
               <select class="form-select" id="" name="lecPeriod">
               		  <option value="9" <c:if test="${lectureList[0].lecPeriod eq 9}">
                  	  	  selected
                  	  </c:if>>1</option>
               		  <option value="10" <c:if test="${lectureList[0].lecPeriod eq 10}">
                  	  	  selected
                  	  </c:if>>2</option>
               		  <option value="11" <c:if test="${lectureList[0].lecPeriod eq 11}">
                  	  	  selected
                  	  </c:if>>3</option>
               		  <option value="12" <c:if test="${lectureList[0].lecPeriod eq 12}">
                  	  	  selected
                  	  </c:if>>4</option>
               		  <option value="13" <c:if test="${lectureList[0].lecPeriod eq 13}">
                  	  	  selected
                  	  </c:if>>5</option>
               		  <option value="14" <c:if test="${lectureList[0].lecPeriod eq 14}">
                  	  	  selected
                  	  </c:if>>6</option>
               		  <option value="15" <c:if test="${lectureList[0].lecPeriod eq 15}">
                  	  	  selected
                  	  </c:if>>7</option>
               		  <option value="16" <c:if test="${lectureList[0].lecPeriod eq 16}">
                  	  	  selected
                  	  </c:if>>8</option>
               		  <option value="17" <c:if test="${lectureList[0].lecPeriod eq 17}">
                  	  	  selected
                  	  </c:if>>9</option>
                  </select>
                 </div>
               <div class="col text-center" style="margin-top: 10px;">
                   <input type="submit" class="btn btn-primary" value="REGISTRATION">
                 </div>
                </div>
            </form>
         </div>
      </div>
   </div>
</div>
</body>
</html>







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

table {
	background-color: white;
}
.btn{
  background:#000f4c;
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
.pageNa{margin-left: 0 auto; margin-right: 0 auto; z-index: 1;}
</style>
<script type="text/javascript" src="/resources/sample/js/lecture_list.js?ver=222222222222259"></script>
</head>
<body>

<table class="table table-hover" style="margin-top: 30px;">
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
	      <input type="button" class="delete btn" value="삭제" data-lecId="${lectureInfo.lecId }">
		  <input type="button" class="update btn" value="수정" data-lecId="${lectureInfo.lecId }">
	  </td>
    </tr>
</c:forEach>
  </tbody>
</table>

	<div class="pagingDiv">
		<div class="row">
			<div class="col-12">
				<div aria-label="Page navigation example" class="pageNa">
					<ul class="pagination justify-content-center">
						<li
							class="page-item <c:if test="${!lectureViewVO.prev }">disabled</c:if>">
							<a class="page-link"
							href="/lecture/selectLecture?nowPage=${lectureViewVO.beginPage - 1 }"
							aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
						</a>
						</li>
						<c:forEach begin="${lectureViewVO.beginPage }"
							end="${lectureViewVO.endPage }" var="pageNumber">
							<li
								class="page-item <c:if test="${lectureViewVO.nowPage eq pageNumber }">active</c:if>">
								<a class="page-link"
								href="/lecture/selectLecture?nowPage=${pageNumber }">${pageNumber }</a>
							</li>
						</c:forEach>
						<li
							class="page-item <c:if test="${!lectureViewVO.next }">disabled</c:if>">
							<a class="page-link"
							href="/lecture/selectLecture?nowPage=${lectureViewVO.endPage + 1 }"
							aria-label="Next"> <span aria-hidden="true">&raquo;</span>
						</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>

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
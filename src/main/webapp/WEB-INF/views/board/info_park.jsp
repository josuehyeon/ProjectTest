<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">

</script>
<style type="text/css">
body {
	text-align: center;
}
tr, td{
	text-align: center;
}
.col{
	text-align: center;
}
.row{
	text-align: center;
}
table {
  text-align: center;
  margin: auto 0;
	border: 0px;
	width: 100%;
}
th, td {
  text-align: center;
}
thead{
	text-align: center;
	background-color: #55597a; 
	color: white;
	margin-bottom: 20px;
}
.Ht{border-top: 30px; border-bottom: 30px; background-color: #000038; color: white;	margin-top:40px; margin-bottom: 1px; border-radius: 5px;}
.btnDiv{
	text-align: center;
	margin: 0 auto;
	color: white;
	width: 100px;
	margin-top: 25px;
}
.pageNa{margin-left: 0 auto; margin-right: 0 auto; z-index: 1;}
.pagingDiv a{color: black;text-decoration: none;}
a.sltedPage{color: blue;font-weight: bold;}
.trh{height: 30px;}
.bdCl{margin-left: 0 auto;margin-right: 0 auto;}
table {
	margin: 0 auto;
	margin-top: 30px;
	text-align: center;
}
.tt{
	margin: 0 auto;
	text-align: center;
}
.container{
	
}
.tx{
	text-align: center;
	margin: 0 auto;
	height: 30px;
	vertical-align:middle;
}
iframe {
	width: 100%;
	height: 95%;
	
}
.modal-content{
	height: 900px;
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
  background: #b29dcc;
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


.page-item.active .page-link{background-color: #000f4c; z-index: 1; border-color: #000f4c;}
page-item.active{background-color: none;}
table {
	background-color: white;
}
.btn{
  background:#000f4c;
  color:white !important;
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
  color:#000f4c !important;
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

/* css */
.boardTableHeadTr > td{
	padding-top: 0.5rem;
	padding-bottom: 0.5rem;
	border-top: 2px solid #1d1d1d;
}
.boardTableBodyTr > td{
	padding-top: 0.4rem;
	padding-bottom: 0.4rem;
}
.boardTableBodyTr > td > a{
	text-decoration: none;
}
.boardTable > tbody:last-child > tr > td{
	border-bottom: 2px solid #1d1d1d;
}
table>tbody:nth-of-type(even)>tr {
    --bs-table-accent-bg: var(--bs-table-striped-bg);
    color: var(--bs-table-striped-color);
}
/* ㅎㅎㅎ */

.pageNa{margin-left: 0 auto; margin-right: 0 auto; z-index: 1;}
.page-item.active .page-link{background-color: #000f4c; z-index: 1; border-color: #000f4c;}
page-item.active{background-color: none;}
.bd{border-bottom: 1px solid #55597a;}
</style>
</head>
<body>
<form method="post">
	<div class="container">
		<div class="row">
			<div class="col-12">
		      <div class="col-5" style="border-bottom: 2px solid #000f4c; font-style: italic; font-weight: bold; margin-top: 20px; margin: 0 auto;">
    	        <h5 style="text-align: center; margin-top: 20px;">✦ 자유게시판 ✦</h5>
	         </div>
	         <div class="col-12">
				<table class="bdCl boardTable table table-hover">
					<col width="10%">
					<col width="auto%">
					<col width="15%">
					<col width="20%">
					<thead>
						<tr style="border-radius: 5px;" class="boardTableHeadTr">
							<td style="text-align: center;">No</td>
							<td style="text-align: left;" class="ps-3">Title</td>
							<td style="text-align: center;">Writer</td>
							<td style="text-align: center;">Date</td>
						</tr>
					</thead>
					<tbody>
					<c:choose>
						<c:when test="${not empty boardList or cateNo eq 1}">
							<c:forEach items="${boardList }" var="board">
								<tbody class="bd">
									<tr class="trh boardTableBodyTr">
										<td>${board.rowNum }</td>
										<td class="text-start ps-3"><a href="/form/boDetail?boardNo=${board.boardNo }">${board.boardTitle }</a></td>
										<td>${board.boardWriter }</td>
										<td>${board.boardDate }</td>
									</tr>
								</tbody>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<tr style="text-align: center;">
								<td colspan="4" style="text-align: center;">등록된 게시글이 존재하지 않아요. : (</td>
							</tr>
						</c:otherwise>
					</c:choose>
					</tbody>
				</table>
				<div class="pagingDiv" style="margin-top: 40px;">
					<div class="row">
						<div class="col-12">
							<div aria-label="Page navigation example" class="pageNa">
							  <ul class="pagination justify-content-center">
							    <li class="page-item <c:if test="${!boardVO.prev }">disabled</c:if>">
							      <a class="page-link" href="/board/infoPark?nowPage=${boardVO.beginPage - 1 }" aria-label="Previous">
							        <span aria-hidden="true">&laquo;</span>
							      </a>
							    </li>
							    <c:forEach begin="${boardVO.beginPage }" end="${boardVO.endPage }" var="pageNumber">
							    <li class="page-item <c:if test="${boardVO.nowPage eq pageNumber }">active</c:if>"><a class="page-link" href="/board/infoPark?nowPage=${pageNumber }&searchValue=${boardVO.searchValue}&searchKeyWord=${boardVO.searchKeyWord}" >${pageNumber }</a></li>
							</c:forEach>
							    <li class="page-item <c:if test="${!boardVO.next }">disabled</c:if>">
							      <a class="page-link" href="/board/infoPark?nowPage=${boardVO.endPage + 1 }" aria-label="Next">
							        <span aria-hidden="true">&raquo;</span>
							      </a>
							    </li>
							  </ul>
							</div>
							<div class="btnDiv">
								<a class="btn update btn" href="/form/inlog" style="width: 100px; font-size: 13px;">글작성</a>
							</div>
						</div>
					</div>
				</div>
	         </div>
			</div>
		</div>
	</div>
</form>
</body>
</html>
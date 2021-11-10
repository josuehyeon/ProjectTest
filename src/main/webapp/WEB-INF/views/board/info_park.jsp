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
	background-color: #212529; 
	color: white;
	margin-bottom: 20px;
}
.Ht{border-top: 30px; border-bottom: 30px; background-color: #000038; color: white;	margin-top:40px; margin-bottom: 1px;}
.btnDiv{
	text-align: center;
	margin: 0 auto;
	background-color: #000038;
	color: white;
	width: 100px;
	margin-top: 25px;
}
.pagingDiv a{color: black;text-decoration: none;}
a.sltedPage{color: blue;font-weight: bold;}
.trh{height: 30px;}
.bdCl{margin-left: 0 auto;margin-right: 0 auto;}
</style>
</head>
<body>
<form method="post">
	<div class="container">
		<div class="row">
			<div class="col-12">
				<div class="Ht">✦ 자유게시판 ✦</div>
				<table class="bdCl">
					<thead>
						<tr>
							<td style="text-align: center;">No</td>
							<td style="text-align: center;">Writer</td>
							<td style="text-align: center;">Title</td>
							<td style="text-align: center;">Date</td>
							<td style="text-align: center;">View</td>
							<td style="text-align: center;">Comment</td>
						</tr>
					</thead>
					<tbody>
					<c:choose>
						<c:when test="${not empty boardList or cateNo eq 1}">
							<c:forEach items="${boardList }" var="board">
								<tbody>
									<tr class="trh">
										<td>${board.rowNum }</td>
										<td>${board.boardWriter }</td>
										<td><a href="/form/detail?boardNo=${board.boardNo }" >${board.boardTitle }</a></td>
										<td>${board.boardDate }</td>
										<td>${board.readCnt }</td>
										<td>${board.commCnt }</td>
									</tr>
								</tbody>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<tr>
								<td colspan="5">등록된 게시글이 존재하지 않아요. : (</td>
							</tr>
						</c:otherwise>
					</c:choose>
					</tbody>
				</table>
				<div class="pagingDiv">
					<div class="row">
						<div class="col-11">
							<nav aria-label="Page navigation example">
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
							</nav>
							<div class="btnDiv">
								<a class="" href="/form/inlog">글 작성</a>
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
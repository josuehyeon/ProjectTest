<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
}
th, td {
  text-align: center;
}
thead{
	text-align: center;
}
.Ht{
	border-top: 30px; border-bottom: 30px;
	background-color: #4d4f4b;
	color: white;	
}
</style>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col">
				<div class="Ht">✦ 자유게시판 ✦</div>
				<table class="table">
					<thead class="table-dark">
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
						<c:when test="${empty boardList }">
							<tr>
								<td colspan="5">등록된 게시글이 존재하지 않아요. : (</td>
							</tr>
						</c:when>
						<c:otherwise>
							<c:forEach items="${boardList }" var="board">
								<tbody>
									<tr>
										<td>${board.boardNo }</td>
										<td>${board.boardWriter }</td>
										<td>${board.boardTitle }</td>
										<td>${board.boardDate }</td>
										<td>${board.readCnt }</td>
										<td>${board.commCnt }</td>
									</tr>
								</tbody>
							</c:forEach>
						</c:otherwise>
					</c:choose>
					</tbody>
				</table>
				<div class="btnDiv">
					<a class="" href="/form/inlog">글 작성</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
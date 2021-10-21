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
</style>
</head>
<body>
<div class="container">
	<div class="row">
		<div class="col">
			<table>
				<thead>
					<tr>
						<td rowspan="6">
							✦ 자유게시판 ✦
						</td>
					</tr>
				</thead>
				<c:choose>
					<c:when test="${empty boardList }">
					<tr>
						<td colspan="5">					
							등록된 게시글이 존재하지 않아요. : (
						</td>
					</tr>
					</c:when>
					<c:otherwise>
						<c:forEach items="${boardList }" var="board">
								<tr>
									<td>${board.boardNo }</td>
									<td>${board.boardWriter }</td>
									<td>${board.boardTitle }</td>
									<td>${board.boardDate }</td>
									<td>${board.readCnt }</td>
									<td>${board.commCnt }</td>
								</tr>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</table>
		</div>
	</div>
</div>
	
</body>
</html>
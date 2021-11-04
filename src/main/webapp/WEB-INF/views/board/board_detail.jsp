<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/resources/comm/student_manage.js"></script>
<style type="text/css">
.title{
	background-color: #4f4d4b;
	color: white;
	margin-top: 40px;
}
</style>
</head>
<body>
<form action="/board/istComm" method="post">
<div>
	<div>
		<div>
			<div class="title">
				제목 ${board.boardTitle } | ${board.boardNo } | ${board.boardWriter }
			</div>
			<div class="content">
				${board.boardContent }
			</div>
		</div>
	</div>
</div>
	${board.readCnt }
	<input type="hidden" name="boardNo" value="${board.boardNo }">
	<input type="submit" value="글 삭제"> <a href="/board/dltBd?boardNo=${board.boardNo }"></a>
	<div>
		<textarea rows="5" cols="120" style="resize: none; margin: 0 auto; verrical-align" placeholder="타인에게 상처를 입히는 발언은 제재 당할 수 있음을 알립니다." id="isComm" name="commContent"></textarea>
	</div>
	<input type="submit" value="댓글 등록" id="commIst">
	<div>
		<c:choose>
			<c:when test="${not empty commList }">
				<c:forEach items="${commList }" var="comm">
					<div class="tableDiv">
						
					</div>
				</c:forEach>
			</c:when>
			<c:otherwise>
				등록된 댓글이 없습니다.
			</c:otherwise>
		</c:choose>
	</div>
</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
</style>
</head>
<body>
<form action="/form/istComm" method="post">
<div>
	<div>
		<div>
		<table>
			<tr class="title">
				<td>제목</td>
				<td>${board.boardTitle }</td>
			</tr>
		</table>
			<div>
				| ${board.boardNo } | ${board.boardWriter }
			</div>
			
			<div class="content">
				${board.boardContent }
			</div>
		</div>
	</div>
</div>
	${board.readCnt }
	<input type="hidden" name="boardNo" value="${board.boardNo }">
	<input type="submit" value="글 삭제">
	<div>
		<input type="text" name="commWriter" value="${sessionScope.loginInfo.memName }">
		<textarea rows="5" cols="120" style="resize: none; margin: 0 auto; verrical-align" placeholder="타인에게 상처를 입히는 발언은 제재 당할 수 있음을 알립니다." id="isComm" name="commContent"></textarea>
	</div>
	<input type="submit" value="댓글 등록" id="commIst">
	<div>
		<c:forEach items="${commList }" var="comm">
			${comm.commWriter } | ${comm.commContent } | ${comm.commDate }
		</c:forEach>
		<c:if test="${empty commList }">
			등록된 댓글이 없습니다. : (
		</c:if>
	</div>
</form>
</body>
</html>
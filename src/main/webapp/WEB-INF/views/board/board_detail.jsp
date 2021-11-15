<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
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
.page-item.active .page-link{background-color: #000f4c; z-index: 1; border-color: #000f4c;}
page-item.active{background-color: none;}
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
.page-item.active .page-link{background-color: #000f4c; z-index: 1; border-color: #000f4c;}
page-item.active{background-color: none;}
</style>
</head>
<body>
<form action="/form/istComm" method="post">
<div>
	<div>
		<div>
		<table>
			<tr>
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
	<input type="hidden" name="boardNo" value="${board.boardNo }">
	<input type="submit" value="글 삭제" style="margin-bottom: 50px;">
	<div>
		<input type="text" name="commWriter" value="${sessionScope.loginInfo.memName }">
	</div>
	<div>
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
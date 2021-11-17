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
	margin: 0 auto;
	margin-top: 30px;
	text-align: center;
	width: 100%;
/*	border: 1px solid #acacac;
	border-collapse: collapse;
	border-radius: 10px;
 	border-style: hidden;
	box-shadow: 0 0 0 1px #acacac; */
	border-spacing: 2px;
	border-collapse: separate;

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

/* table {
	background-color: white;
} */
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

/* css */
.boardTableHeadTr > td{
	padding-top: 0.5rem;
	padding-bottom: 0.5rem;
}
.boardTableHeadTr > td{
	border-right: 1px solid #acacac;
	border-radius: 6px;
}
.boardTableHeadTr > td:last-child{
	border-right: none;
}
.boardTablaBodyTr > td{
	padding: 2rem;
	border: 
}
.commentDiv{
	border-top: 1px solid #acacac;
	border-bottom: 1px solid #acacac;
}
.firstTr > td{
	background-color: #55597a;
	color: white;
	border-radius: 6px;
}
.SecondTr > td{
	background-color: #424879;
	color: white;
}
/* ㅎㅎㅎ */

.pageNa{margin-left: 0 auto; margin-right: 0 auto; z-index: 1;}
.page-item.active .page-link{background-color: #000f4c; z-index: 1; border-color: #000f4c;}
page-item.active{background-color: none;}
</style>
</head>
<body>
<form action="/form/istComm" method="post">
<div class="container">
	<div class="row justify-content-center">
		<div class="col-10 mt-3">
			<table class="mt-3">
				<col width="15%">
				<col width="auto%">
				<col width="15%">
				<col width="auto%">
				<tr class="boardTableHeadTr firstTr">
					<td class="text-center">글번호</td>
					<td>${board.boardNo}</td>
					<td>작성자</td>
					<td> ${board.boardWriter }</td>
				</tr>
				<tr><td> </td></tr>
				<tr class="boardTableHeadTr SecondTr">
					<td colspan="4"  class="py-2 text-start ps-3">${board.boardTitle }</td>
				</tr>
				<tr class="boardTablaBodyTr">
					<td colspan="4" class="text-start" style="height: 500px; background-color: white; border-radius: 6px; ">
						${board.boardContent }
					</td>
				</tr>
					
			</table>
		</div>
		<div class="col-10 mt-3 text-end">
			<input type="hidden" name="boardNo" value="${board.boardNo }">
			<input type="submit" class="btn update btn" value="글 삭제" style="margin-bottom: 50px;">
		</div>
		
		
		<div class="col-10 commentDiv mb-2 py-2 mx-2">
			<c:forEach items="${commList }" var="comm">
				${comm.commWriter } | ${comm.commContent } | ${comm.commDate }
			</c:forEach>
			<c:if test="${empty commList }">
				등록된 댓글이 없습니다. : (
			</c:if>
		</div>
		<div class="col-10 text-start">
			<input style="border-radius: 6px; border: none; text-align: center; width: 6rem;" class="mb-2" type="text" name="commWriter" value="${sessionScope.loginInfo.memName }">
		</div>
		<div class="col-10 text-start">
			<textarea rows="5" cols="120" style="resize: none; margin: 0 auto; width: 100%; border-radius: 6px; " placeholder="타인에게 상처를 입히는 발언은 제재 당할 수 있음을 알립니다." id="isComm" name="commContent"></textarea>
		</div>
		<div class="col-10 text-end">
			<input class="btn update btn" type="submit" value="댓글 등록" id="commIst">
		</div>
	</div>
</div>
</form>
</body>
</html>
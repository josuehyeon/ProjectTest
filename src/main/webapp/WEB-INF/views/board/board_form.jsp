<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
/* ㅎㅎㅎ */

.pageNa{margin-left: 0 auto; margin-right: 0 auto; z-index: 1;}
textarea:focus {outline-color: #1AAB8A; outline: 1px solid #a2a0cc;}
</style>
</head>
<body>
<form action="/board/istBd" method="post">
<div class="container">
	<div class="row">
		<div class="col-12">
			<table class="mt-3">
				<col width="15%">
				<col width="20%">
				<col width="10%">
				<col width="15%">
				<col width="15%">
				<col width="*%">
				<tr style="width: 300px;" class="boardTableHeadTr">
					<td class="tt"  style="border-right: 1px solid #a8a8a8;">제목</td>
					<td>
						<input type="text" name="boardTitle" style="width: 150px; border: 0px; border-radius: 5px;">
					</td>
					<td class="tt" style="border-right: 1px solid #a8a8a8;">
						주제
					</td>
					<td>
						<select name="cateNo" style="margin-left: 30px; margin-right: 25px; border: 0px; border-radius: 5px;">
							<option value="1" selected>자유게시판</option>
							<option value="2">건의게시판</option>
						</select>
					</td>
					<td style="border-right: 1px solid #a8a8a8;">날짜</td>
					<td><input type="date" name="boardDate" value="${nowDate }" readonly style="border: 0px; border-radius: 5px;"></td>
				</tr>
				<tr>
					<td colspan="6" class="tt py-3" style="height: 50px; vertical-align:middle;">내용</td>
				</tr>
				<tr>
					<td colspan="6"><textarea rows="30" cols="160" name="boardContent" style="resize: none; margin: 0 auto; verrical-align; border: 0px; border-radius: 5px;" placeholder="타인을 불편하게 하는 발언은 제재당할 수 있음을 알립니다." ></textarea></td>
				</tr>
				<tr>
					<td colspan="6" class="tt py-2 pe-5">
						작성자 : <input type="text" name="boardWriter" value="${sessionScope.loginInfo.memName }" readonly="readonly" style="border: 0px; border-radius: 5px; width:320px; text-align: center;">
					</td>
				</tr>
			</table>
		</div>
	</div>
</div>
<div style="text-align: center; margin-top: 35px; margin-bottom: 20px;">
	<input type="submit" name="글 등록" class="btn update btn" style="width: 150px;">
</div>
</form>
</body>
</html>
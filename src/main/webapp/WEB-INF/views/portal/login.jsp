<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="animate.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/resources/portal/js/login.js?ver=13"></script>
<style type="text/css">
<link rel="stylesheet" href="animate.min.css">
@import url('https://fonts.googleapis.com/css2?family=Montserrat:wght@900&family=Staatliches&display=swap');
*{
	margin: 0;
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
   margin-top: 10px;
   margin-bottom: 10px;
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
body{
	-ms-overflow-style: none; 
	margin: 0;
	background-color: #292e56;
}
.tableDiv{
padding: 0px;
}
.leftTd{
	left:0;right:0;top:0;bottom:0;
	overflow:hidden;
	background-color: #292e56;
	max-width: 100%;
	max-height: 100%;
}
table{
	width: 100vw;
    height: 100vh;
    height: 100%;
	margin: 0 auto;
	padding-top: 100px;
	background-color: #292e56;
	text-align: center;
	width: 100%;
	height: 794px;
}
.bt{
	padding-top: 30px;
	margin-top: 80px;
}
::-webkit-scrollbar{ display: none; }
td{
	text-align: center;
	vertical-align: middle;
}
#enter{
	margin-top: 5px;
}
input{
	width: 300px;
	height: 50px;
}
.welcomeDiv{
	margin-top: 25px;
}
.welcomeDivT{margin-top:8px; margin-bottom: 40px;}
.ccr{color: #525b96;}
.ccr:hover {
	color: #ccd2ff;
	font-weight: bold;
	cursor: pointer;
}
.bl:focus {outline-color: #1AAB8A; outline: 1px solid #ccd2ff;}
</style>
</head>
<body>
<!-- 로그인 폼 -->
<div class="tableDiv">
	<table>
		<colgroup>
			<col width="25%;">
			<col width="75%;">
		</colgroup>
		<tr>
			<td class="leftTd" height = "0">
				<div style = "height:100%"><img src="/resources/common/images/lomeme.jpg" style="object-fit: cover;" height="1000px;"></div>
			</td>
			<td>
				<img src="/resources/portal/images/JesusLogo.png" style="width: 200px;">
				<div class="welcomeDiv">
					<span style="color: white;" class="animated fadeInRight">
						예수대학교 포탈시스템 방문을 환영합니다.
					</span>
				</div>
				<div class="welcomeDivT">
					<span style="color: white;">아이디 로그인은, 학번 및 교직원 번호를 이용해 주세요.</span>
				</div>
				<form action="/portal/login" method="post" autocomplete="off">
					<div class="fadeInRight box animate four">
						<input class="bl" type="text" name="memNo" id="memNo" placeholder="아이디를 입력하세요" required autofocus> <!-- autofocus=>페이지 로드될 때 자동으로 focus -->
					</div>
					<div id="enter"></div>
					<div>
						<input class="bl" type="password" name="memPw" placeholder="비밀번호를 입력하세요" required>
					</div>
					<!-- 로그인 버튼 -->
					<div id="enter"></div>
					<div>
						<input class="btn " type="submit" value="로그인">
					</div>
				</form>
				<!-- 아이디 찾기 Modal 버튼 -->
				<span data-bs-toggle="modal" data-bs-target="#idModal" class="ccr"><span style="color: #c5d4ff;">*</span>아이디 찾기</span>
				<!--아이디 찾기 Modal 내용 -->
				<div class="modal fade" id="idModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
					<div class="modal-dialog"> 
						<div class="modal-content"> 
							<div class="modal-header"> 
								<h5 class="modal-title" id="exampleModalLabel">아이디 찾기</h5>
								<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="닫기"></button>
							</div>
							<div class="modal-body">
								<form action="/portal/findId" method="post">
									<div class="form-floating mb-3">
										<input type="text" class="form-control" id="floatingId" placeholder="ID" name="memName" required>
										<label for="floatingId">Name</label>
									</div>
									<!-- <div class="form-floating mb-3">
										<input type="text" class="form-control" id="floatingBirthDate" placeholder="BirthDate" name="memBirth" required>
										<label for="floatingBirthDate">Birth Date</label>
									</div> -->
									<div class="form-floating mb-3">
										<input type="text" class="form-control" id="floatingPhoneNum" placeholder="PhoneNumber" name="memPhone" required>
										<label for="floatingPhoneNum">Phone Number</label>
									</div>
									<div class="col-12 d-grid">
										<input type="submit" class="btn btn-primary" value="아이디확인" onclick="">
									</div>
								</form>
							</div>
							<!-- <div class="modal-footer">
								<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
								<button type="button" class="btn btn-primary">Save changes</button>
							</div> -->
						</div>
					</div>
				</div>
				
				<!-- 비밀번호 변경 Modal 버튼 -->
				<span data-bs-toggle="modal" data-bs-target="#passwordModal" class="ccr"><span style="color: #c5d4ff;">*</span>비밀번호 찾기</span>
				<!--비밀번호 변경 Modal 내용 -->
				<div class="modal fade" id="passwordModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
					<div class="modal-dialog"> 
						<div class="modal-content"> 
							<div class="modal-header"> 
								<h5 class="modal-title" id="exampleModalLabel">비밀번호 찾기</h5>
								<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="닫기"></button>
							</div>
							<div class="modal-body">
							
								<form action="/portal/sendMail" method="post" id="sendMail">
									<div class="form-floating mb-3">
										<input type="text" class="form-control" name="memNo" id="floatingMemNo" placeholder="학번" required>
										<label for="floatingMemNo">Member Number</label>
									</div>
									<div class="form-floating mb-3">
										<input type="text" class="form-control" name="memName" id="floatingName" placeholder="이름" required>
										<label for="floatingName">Name</label>
									</div>
									<div class="form-floating mb-3">
										<input type="text" class="form-control" name="to" id="floatingEmail" placeholder="이메일" required>
										<label for="floatingEmail">Email</label>
									</div>
									<div class="col-12 d-grid">
										<input type="button" class="btn btn-primary" id="sendEmailBtn" value="임시 비밀번호 발급">
									</div>
								</form>
								
							</div>
							<!-- <div class="modal-footer">
								<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
								<button type="button" class="btn btn-primary">Save changes</button>
							</div> -->
						</div>
					</div>
				</div>
				<div class="bt"> 
					<span style="color: white;">COPYRIGHT©2019 JESUS UNIVERSITY. ALL RIGHTS RESERVED.</span>
				</div>
			</td>
		</tr>
	</table>	
</div>
</body>
</html>
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
	padding-top: 20px;
	margin-top: 100px;
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
<!-- ????????? ??? -->
<div class="tableDiv">
	<table>
		<colgroup>
			<col width="25%;">
			<col width="75%;">
		</colgroup>
		<tr>
			<td class="leftTd" height = "0">
				<div style = "height:100%"><img src="/resources/common/images/lomeme.jpg" style="object-fit: cover;" height="951px;"></div>
			</td>
			<td>
				<img src="/resources/common/images/tst.png" style="width: 200px;">
				<div class="welcomeDiv">
					<span style="color: white;" class="animated fadeInRight">
						??????????????? ??????????????? ????????? ???????????????.
					</span>
				</div>
				<div class="welcomeDivT">
					<span style="color: white;">????????? ????????????, ?????? ??? ????????? ????????? ????????? ?????????.</span>
				</div>
				<form action="/portal/login" method="post" autocomplete="off">
					<div class="fadeInRight box animate four">
						<input class="bl" type="text" name="memNo" id="memNo" placeholder="???????????? ???????????????" required autofocus> <!-- autofocus=>????????? ????????? ??? ???????????? focus -->
					</div>
					<div id="enter"></div>
					<div>
						<input class="bl" type="password" name="memPw" placeholder="??????????????? ???????????????" required>
					</div>
					<!-- ????????? ?????? -->
					<div id="enter"></div>
					<div>
						<input class="btn " type="submit" value="?????????">
					</div>
				</form>
				<!-- ????????? ?????? Modal ?????? -->
				<span data-bs-toggle="modal" data-bs-target="#idModal" class="ccr"><span style="color: #c5d4ff;">*</span>????????? ??????</span>
				<!--????????? ?????? Modal ?????? -->
				<div class="modal fade" id="idModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
					<div class="modal-dialog"> 
						<div class="modal-content"> 
							<div class="modal-header"> 
								<h5 class="modal-title" id="exampleModalLabel">????????? ??????</h5>
								<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="??????"></button>
							</div>
							<div class="modal-body">
								<form action="/portal/findId" method="post" autocomplete="off">
									<div class="form-floating mb-3">
										<input type="text" class="form-control" id="floatingA" placeholder="ID" name="memName" required>
										<label for="floatingA">Name</label>
									</div>
									<!-- <div class="form-floating mb-3">
										<input type="text" class="form-control" id="floatingBirthDate" placeholder="BirthDate" name="memBirth" required>
										<label for="floatingBirthDate">Birth Date</label>
									</div> -->
									<div class="form-floating mb-3">
										<input type="text" class="form-control" id="floatingB" placeholder="PhoneNumber" name="memPhone" required>
										<label for="floatingB">Phone Number</label>
									</div>
									<div class="col-12 d-grid">
										<input type="submit" class="btn btn-primary" value="???????????????" onclick="" id="findIdBtn">
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
				
				<!-- ???????????? ?????? Modal ?????? -->
				<span data-bs-toggle="modal" data-bs-target="#passwordModal" class="ccr"><span style="color: #c5d4ff;">*</span>???????????? ??????</span>
				<!--???????????? ?????? Modal ?????? -->
				<div class="modal fade" id="passwordModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
					<div class="modal-dialog"> 
						<div class="modal-content"> 
							<div class="modal-header"> 
								<h5 class="modal-title" id="exampleModalLabel">???????????? ??????</h5>
								<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="??????"></button>
							</div>
							<div class="modal-body">
							
								<form action="/portal/sendMail" method="post" id="sendMail" autocomplete="off">
									<div class="form-floating mb-3">
										<input type="text" class="form-control" name="memNo" id="floatingMemNo" placeholder="??????" required>
										<label for="floatingMemNo">Member Number</label>
									</div>
									<div class="form-floating mb-3">
										<input type="text" class="form-control" name="memName" id="floatingName" placeholder="??????" required>
										<label for="floatingName">Name</label>
									</div>
									<div class="form-floating mb-3">
										<input type="text" class="form-control" name="to" id="floatingEmail" placeholder="?????????" required>
										<label for="floatingEmail">Email</label>
									</div>
									<div class="col-12 d-grid">
										<input type="button" class="btn btn-primary" id="sendEmailBtn" value="?????? ???????????? ??????">
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
					<span style="color: white;">COPYRIGHT??2022 JESUS UNIVERSITY. ALL RIGHTS RESERVED.</span>
				</div>
			</td>
		</tr>
	</table>	
</div>
</body>
</html>
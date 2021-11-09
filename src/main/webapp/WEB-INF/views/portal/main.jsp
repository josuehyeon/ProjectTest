<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title><style>
*{margin:0;padding:0;}
ul,li{list-style:none;}
.slide{height:300px;overflow:hidden;}
.slide ul{position:relative;height:100%;}
.slide li{position:absolute;left:0;right:0;top:0;bottom:0;opacity:0;animation:fade 8s infinite;}
.slide li:nth-child(1){background:#ffa;animation-delay:0s}
.slide li:nth-child(2){background:#faa;animation-delay:2s}
.slide li:nth-child(3){background:#afa;animation-delay:4s}
.slide li:nth-child(4){background:#aaf;animation-delay:6s}
 /* 100 / 8 = 12.5 */
@keyframes fade {
  0% {opacity:0;}
  5% {opacity:1;}
  25% {opacity:1;}
  30% {opacity:0;}
  100% {opacity:0;}
}
  </style>
</head>
<body>
  <div class="slide">
    <ul>
      <li></li>
      <li></li>
      <li></li>
      <li></li>
    </ul>
  </div>
로그인 성공시 나오는 메인 페이지
<br>
메뉴 연결되어 있나...?
<br>
일단 내거 표시해놓자

<span>내 정보 관리</span>
<div>
	<a href="/stuInfo/chkInfoJsp">내정보조회</a>
	<a href="/stuInfo/changeInfoJsp">내정보수정</a>
	<a href="/stuInfo/chkPwJsp">비밀번호 변경</a>
	<a href="/stuInfo/chkTimetableJsp">시간표 조회</a>
</div>

<br>
<br>

<span>성적관리</span>
<div>
	<a href="/grade/chkGradeJsp">학기 별 성적</a>
	<a href="#">학점 포기</a>
</div>

<br>
<br>

<span>졸업</span>
<div>
	<a href="#">졸업요건</a>
	<a href="#">졸업사정</a>
</div>

<br>
<br>

<span>관리자 내 정보관리</span>
	<a href="/emp/chkInfoJsp">내 정보 조회</a>
	<a href="/emp/changeInfoJsp">내 정보 수정</a>

<br>
<br>

<span>관리자 내 정보관리</span>
	<a href="/stuManage/">내 정보 조회</a>
<span>관리자: 학생관리> 성적관리</span>
	<a href="/stuManage/regGradeJsp">성적등록</a>
	
	
</body>
</html>
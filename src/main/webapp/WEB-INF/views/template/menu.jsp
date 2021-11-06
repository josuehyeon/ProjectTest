<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript"></script>
<style type="text/css">
.nav-link {
	color: white;
}
@import url('https://fonts.googleapis.com/css?family=Roboto');

/*body 초기화*/
body {
  margin: 0;
  padding: 0;
  font-family: "Roboto", serif;
  display: flex;
  flex-flow: column nowrap;
  justify-content: center;
  align-items: center;
  overflow-x: hidden;  
}

h1 {
  margin: 2em 0 1.5em 0;
}

nav {
  width: 100%;
  display: flex;
  justify-content: center;
  position: relative;
  background-color: #0f1756;
}

ul, li {
  margin: 0;
  padding: 0;
  list-style: none;
}

#main-menu > li {
  float: left;
  position: relative;
}

#main-menu > li > a {
  font-size: 0.85rem;
  color: rgba(255,255,255,0.85);
  text-align: center;
  text-decoration: none;
  letter-spacing: 0.05em;
  display: block;
  padding: 14px 36px;
  border-right: 1px solid rgba(0,0,0,0.15);
  text-shadow: 1px 1px 1px rgba(0,0,0,0.2);
}

#main-menu > li:nth-child(1) > a {
  border-left: 1px solid rgba(0,0,0,0.15);
}

#sub-menu {
  position: absolute;
  background: #182952;
  opacity: 0;
  visibility: hidden;
  transition: all 0.15s ease-in;
}

#sub-menu > li {
  padding: 16px 28px;
  border-bottom: 1px solid rgba(0,0,0,0.15);
}

#sub-menu > li >  a {
  color: rgba(255,255,255,0.6);
  text-decoration: none;
}

#main-menu > li:hover #sub-menu {
  opacity: 1;
  visibility: visible;
}

#sub-menu > li >  a:hover {
 text-decoration: underline;
}

section {
  column-width: 15em;
  background: #dadadf;
  padding: 2em 12em;
}
</style>
</head>
<body>
<div>
<div>
	<div style="text-align: right;">
		<c:if test="${not empty sessionScope.loginInfo }">
			${sessionScope.loginInfo.memNo }님 반갑습니다.
			<a href="/portal/logout">로그아웃</a> <!-- 일단 여기 넣어놓음 -->
			<a href="/portal/mainJsp">메인</a> <!-- 일단 여기 넣어놓음 -->
		</c:if>
	</div>
</div>
<div class="nav">
	<nav role="navigation" class="nav">
		<ul id="main-menu" class="nav">
	    	<li><a class="nav-link link-light" href="/portal/mainJsp">HOME</a></li>
			<c:if test="${not empty sessionScope.loginInfo }">
			<c:choose>
				<c:when test="${sessionScope.loginInfo.memAuth eq 3}">
					<li><a class="nav-link link-light mmn" href="#">내 정보</a>
	      				<ul id="sub-menu">
					        <li><a href="#" aria-label="subemnu">submenu</a></li>
				        	<li><a href="#" aria-label="subemnu">submenu</a></li>
				        	<li><a href="#" aria-label="subemnu">submenu</a></li>
				        	<li><a href="#" aria-label="subemnu">submenu</a></li>
					    </ul>
					</li>
		    		<li><a class="nav-link link-light mmn" href="/admin/goMain">학생관리(Admin)</a>
				    	<ul id="sub-menu">
				        	<li><a class="nav-link link-#00154a" href="/admin/selectStu" aria-label="subemnu">학생 조회</a></li>
				        	<li><a class="nav-link link-#00154a" href="/admin/manageGrade" aria-label="subemnu">성적 관리</a></li>
				        	<li><a class="nav-link link-#00154a" href="/admin/permissionToStudent" aria-label="subemnu">학적 변동승인</a></li>
				        	<li><a class="nav-link link-#00154a" href="/admin/stuNotice" aria-label="subemnu">학사경고 / 제적</a></li>
				        	
					    </ul>
		    		</li>
			    	<li><a class="nav-link link-light mmn" href="/board/infoPark">정보광장</a>
		      			<ul id="sub-menu">
				        	<li><a class="nav-link link-#00154a" href="/board/infoPark" aria-label="subemnu">자유게시판</a></li>
				        	<li><a class="nav-link link-#00154a" href="/board/bdRequest" aria-label="subemnu">건의게시판</a></li>
				        	<li><a href="#" aria-label="subemnu">submenu</a></li>
				        	<li><a href="#" aria-label="subemnu">submenu</a></li>
					    </ul>
		    		</li>
			    	<li><a class="nav-link link-light mmn" href="/board/job">취업정보</a>
			    		<ul id="sub-menu">
				        	<li><a class="nav-link link-light" aria-label="subemnu" href="/board/job">JobKorea</a></li>
				        	<li><a class="nav-link link-light" aria-label="subemnu" href="/board/saramin">Saramin</a></li>
				        	<li><a href="#" aria-label="subemnu">그리핀도르</a></li>
				        	<li><a href="#" aria-label="subemnu">래번클로</a></li>
			        	</ul>
				    </li>
			    	<li><a href="#">MENU6</a></li>
					</c:when>
					<c:when test="${sessionScope.loginInfo.memAuth eq 2}">
						<li>
				    	<ul id="sub-menu">
				    		<li><a href="/stuManage/showStuList" aria-label="subemnu">학생조회</a></li>
				        	
				        	<li><a class="nav-link link-#00154a" href="/admin/manageGrade" aria-label="subemnu">성적 관리</a></li>
				        	<li><a class="nav-link link-#00154a" href="/admin/permissionToStudent" aria-label="subemnu">학적 변동승인</a></li>
				        	<li><a class="nav-link link-#00154a" href="/admin/stuNotice" aria-label="subemnu">학사경고 / 제적</a></li>
				        	<li><a class="nav-link link-#00154a" href="/admin/stuSwitch" aria-label="subemnu">전과 / 복수전공</a></li>
					    </ul>
		    			</li>
					</c:when>
					<c:otherwise>
						<li><a class="nav-link link-light mmn" href="#">내 정보</a>
	      				<ul id="sub-menu">
					        <li><a href="#" aria-label="subemnu">submenu</a></li>
				        	<li><a href="#" aria-label="subemnu">submenu</a></li>
				        	<li><a href="#" aria-label="subemnu">submenu</a></li>
				        	<li><a href="#" aria-label="subemnu">submenu</a></li>
					    </ul>
					</li>
		    		<li><a class="nav-link link-light mmn" href="/stuManage/goMain">학적관리</a>
				    	<ul id="sub-menu">
				        	<li><a class="nav-link link-#00154a" href="/admin/selectStu" aria-label="subemnu">학생 조회</a></li>
				        	<li><a class="nav-link link-#00154a" href="/admin/manageGrade" aria-label="subemnu">성적 관리</a></li>
				        	<li><a class="nav-link link-#00154a" href="/admin/stuNotice" aria-label="subemnu">학사경고 / 제적</a></li>
				        	
					    </ul>
		    		</li>
			    	<li><a class="nav-link link-light mmn" href="/board/infoPark">정보광장</a>
		      			<ul id="sub-menu">
				        	<li><a class="nav-link link-#00154a" href="/board/infoPark" aria-label="subemnu">자유게시판</a></li>
				        	<li><a class="nav-link link-#00154a" href="/board/bdRequest" aria-label="subemnu">건의게시판</a></li>
				        	<li><a href="/stuManage/stopStudyInfo"  aria-label="subemnu">>휴학 안내</a></li>
				        	<li><a href="/stuManage/goStopStudy" aria-label="subemnu">휴학 신청</a></li>
				        	<li><a href="/stuManage/againStudyInfo" aria-label="subemnu">복학 안내</a></li>
				        	<li><a href="/stuManage/goAgainStudy" aria-label="subemnu">복학 신청</a></li>
				        	<li><a href="/stuManage/exitInfo" aria-label="subemnu">자퇴 안내</a></li>
				        	<li><a href="/stuManage/goExit" aria-label="subemnu">자퇴 신청</a></li>
				        	<li><a href="/stuManage/goChangeMajor" aria-label="subemnu">전과 신청</a></li>
				        	<li><a href="/stuManage/goDoubleMajor" aria-label="subemnu">복수전공 신청</a></li>
				        	<li><a href="/stuManage/showStuList" aria-label="subemnu">학생조회</a></li>
					    </ul>
		    		</li>
			    	<li><a class="nav-link link-light mmn" href="/board/job">취업정보</a>
			    		<ul id="sub-menu">
				        	<li><a class="nav-link link-light" aria-label="subemnu" href="/board/job">JobKorea</a></li>
				        	<li><a class="nav-link link-light" aria-label="subemnu" href="/board/saramin">Saramin</a></li>
				        	<li><a href="#" aria-label="subemnu">그리핀도르</a></li>
				        	<li><a href="#" aria-label="subemnu">래번클로</a></li>
			        	</ul>
				    </li>
				    <li><a class="nav-link link-light mmn" href="/stuManage/goMain">수정씨 jsp 이동하는 경로(학생)</a>
	      				<ul id="sub-menu">
					        <li><a href="#" aria-label="subemnu">submenu</a></li>
				        	<li><a href="#" aria-label="subemnu">submenu</a></li>
				        	<li><a href="#" aria-label="subemnu">submenu</a></li>
				        	<li><a href="#" aria-label="subemnu">submenu</a></li>
					    </ul>
					</li>
					</c:otherwise>
			</c:choose>
			</c:if>
		</ul>
	</nav>
	</div>
</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/common/reset.css">
<style type="text/css">
.sideDiv{
	width: 190px;
}
 .side-menu {
    top: 50px;
    width: 45px;
    z-index: 10;
    background: #ff5858;
    border-right: 1px solid rgba(0, 0, 0, 0.07);
    bottom: 50px;
    height: 100%;
    margin-bottom: -70px;
    margin-top: 0px;
    padding-bottom: 70px;
    position: fixed;
    box-shadow: 0 0px 24px 0 rgb(0 0 0 / 6%), 0 1px 0px 0 rgb(0 0 0 / 2%);
}

.sidebar-inner {
    height: 100%;
    padding-top: 30px;
}

#sidebar-menu,
#sidebar-menu ul,
#sidebar-menu li,
#sidebar-menu a {
    border: 0;
    font-weight: normal;
    line-height: 1;
    list-style: none;
    margin: 0;
    padding: 0;
    position: relative;
    text-decoration: none;
}

#sidebar-menu>ul>li a {
    color: #fff;
    font-size: 20px;
    display: block;
    padding: 14px 0px;
    margin: 0px 0px 0px 8px;
    border-top: 1px solid rgba(0, 0, 0, 0.1);
    border-bottom: 1px solid rgba(255, 255, 255, 0.05);
    width: 28px;
    cursor: pointer;
}

#sidebar-menu .fas {
    padding-left: 6px;
}

/* 사이드 메뉴 */
input[type="search"] {
    width: 180px;
    margin: 0 auto;
    margin-left: 9px;
    border: 2px solid #797979;
    font-size: 14px;
    margin-top: 10px;
    padding: 4px 0 4px 14px;
    border-radius: 50px;
}

.left_sub_menu {
    position: fixed;
    top: 50px;
    width: 200px;
    z-index: 10;
    left: 45px;
    background: white;
    border-right: 1px solid rgba(0, 0, 0, 0.07);
    bottom: 50px;
    height: 100%;
    margin-bottom: -70px;
    margin-top: 0px;
    padding-bottom: 0px;
    box-shadow: 0 0px 24px 0 rgb(0 0 0 / 6%), 0 1px 0px 0 rgb(0 0 0 / 2%);
    color: black;
}

.sub_menu {
    margin-top: 50px;
}

.left_sub_menu>.sub_menu li:hover {
    color: ff5858;
    background-color: #e1e1e1;
}

.left_sub_menu>.sub_menu li {
    color: #333;
    font-size: 17px;
    font-weight: 600;
    padding: 20px 0px 8px 14px;
    border-bottom: 1px solid #e1e1e1;
}

.sub_menu>h2 {
    padding-bottom: 4px;
    border-bottom: 3px solid #797979;
    margin-top: 30px;
    font-size: 21px;
    font-weight: 600;
    color: #333;
    margin-left: 10px;
    margin-right: 10px;
    font-family: 'NotoKrB';
    line-height: 35px;
}

.sub_menu .fas {
    color: #ff5858;
    font-size: 20px;
    line-height: 20px;
    float: right;
    margin-right: 20px;
}

.sub_menu>.big_menu>.small_menu li {
    color: #333;
    font-size: 14px;
    font-weight: 600;
    border-bottom: 0px solid #e1e1e1;
    margin-left: 14px;
    padding-top: 8px;
}

.big_menu {
    cursor: pointer;
}

ul {
    padding-inline-start: 0px;
}

a {
    color: #797979;
    text-decoration: none;
    background-color: transparent;
}

ul {
    list-style: none;
}

ol,
ul {
    margin-top: 0;
    margin-bottom: 10px;
}

.has_sub {
    width: 100%;
}

.overlay {
    position: fixed;
    width: 100%;
    height: 100%;
    background: rgba(0, 0, 0, 0.7);
}

.hide_sidemenu {
    display: none;
}
</style>
</head>
<body>
<div class="sideDiv">
 ✧ ━━━━━━━━━━━ ✧
 <c:if test="${not empty sessionScope.loginInfo }">
	<c:choose>
		<c:when test="${sessionScope.loginInfo.memAuth eq 3}">					
			<a class="nav-link link-#00154a" href="/admin/selectStu">학생 조회</a><br>
			<a class="nav-link link-#00154a" href="/admin/manageGrade">성적 관리</a><br>
			<a class="nav-link link-#00154a" href="/admin/permissionToStudent">학적 변동승인</a><br>
			<a class="nav-link link-#00154a" href="/admin/stuNotice">학사경고 / 제적</a><br>
			<a class="nav-link link-#00154a" href="/admin/stuSwitch">전과 / 복수전공</a>
		</c:when>
		<c:otherwise>
			<c:if test="${sessionScope.loginInfo.memAuth eq 1 or 2 }">
				<a class="nav-link link-#00154a" href="/board/infoPark">자유게시판</a>
				<a class="nav-link link-#00154a" href="/board/bdRequest">건의게시판</a>
			</c:if>
		</c:otherwise>
	</c:choose>
</c:if>
</div>
<!--  <div id="wrapper">
	<div class="topbar" style="position: absolute; top:0;">
	    왼쪽 메뉴
	    <div class="left side-menu">
	        <div class="sidebar-inner">
	            <div id="sidebar-menu">
	                <ul>
	                    <li class="has_sub"><a href="javascript:void(0);" class="waves-effect">
	                        <i class="fas fa-bars"></i>
	                    </a></li>
	                </ul>
	            </div>
	        </div>
	    </div>
	    왼쪽 서브 메뉴
	    <div class="left_sub_menu">
	        <div class="sub_menu">
	            <input type="search" name="SEARCH" placeholder="SEARCH">
	            <h2>TITLE</h2>
	            <ul class="big_menu">
	                <li>MENU 1 <i class="arrow fas fa-angle-right"></i></li>
	                <ul class="small_menu">
	                    <li><a href="#">소메뉴1-1</a></li>
	                    <li><a href="#">소메뉴1-2</a></li>
	                    <li><a href="#">소메뉴1-3</a></li>
	                    <li><a href="#">소메뉴1-4</a></li>
	                </ul>
	            </ul>
	            <ul class="big_menu">
	                <li>MENU 2 <i class="arrow fas fa-angle-right"></i></li>
	                <ul class="small_menu">
	                    <li><a href="#">소메뉴2-1</a></li>
	                    <li><a href="#">소메뉴2-2</a></li>
	                </ul>
	            </ul>
	            <ul class="big_menu">
	                <li>MYPAGE</li>
	            </ul>
	        </div>
	    </div>
	    <div class="overlay"></div>
	</div>
</div> -->
</body>
</html>
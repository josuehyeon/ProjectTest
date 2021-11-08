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
@import url('https://fonts.googleapis.com/css?family=Roboto');
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
	    	<li><a class="nav-link link-#00154a" href="/portal/mainJsp">HOME</a></li>
			<c:if test="${not empty sessionScope.loginInfo }">
			<c:choose>
				<c:when test="${sessionScope.loginInfo.memAuth eq 3}">
					<li><a class="nav-link link-#00154a mmn" href="/common/myInfo">내 정보</a>
	      				<ul id="sub-menu">
					        <li><a href="/emp/chkInfoJsp" aria-label="subemnu">내 정보 조회</a></li>
				        	<li><a href="/portal/regMemberJsp" aria-label="subemnu">내 정보 수정</a></li>
				        	<li><a href="#" aria-label="subemnu">submenu</a></li>
				        	<li><a href="#" aria-label="subemnu">submenu</a></li>
					    </ul>
					</li>
		    		<li><a class="nav-link link-#00154a mmn" href="/admin/goMain">학생관리(Admin)</a>
				    	<ul id="sub-menu">
				        	<li><a class="nav-link link-#00154a" href="/admin/selectStu" aria-label="subemnu">학생 조회</a></li>
				        	<li><a class="nav-link link-#00154a" href="/admin/manageGrade" aria-label="subemnu">성적 관리</a></li>
				        	<li><a class="nav-link link-#00154a" href="/admin/permissionToStudent" aria-label="subemnu">학적 변동승인</a></li>
				        	<li><a class="nav-link link-#00154a" href="/admin/stuNotice" aria-label="subemnu">학사경고 / 제적</a></li>
				        	
					    </ul>
		    		</li>
			    	<li><a class="nav-link link-#00154a mmn" href="/board/infoPark">정보광장</a>
		      			<ul id="sub-menu">
				        	<li><a class="nav-link link-#00154a" href="/board/infoPark" aria-label="subemnu">자유게시판</a></li>
				        	<li><a class="nav-link link-#00154a" href="/board/bdRequest" aria-label="subemnu">건의게시판</a></li>
				        	<li><a class="nav-link link-#00154a" href="/board/bdRequest" aria-label="subemnu">일정 관리</a></li>
				        	<li><a class="nav-link link-#00154a" href="/board/bdRequest" aria-label="subemnu">게시판 관리</a></li>
					    </ul>
		    		</li>
					</c:when>
					
					<c:when test="${sessionScope.loginInfo.memAuth eq 2}">
						<li><a class="nav-link link-#00154a mm" href="/admin/editStatus">학적 변동승인</a>
				    	<ul id="sub-menu">
				    		<li><a href="/stuManage/showStuList" aria-label="subemnu">학생조회</a></li>
				        	<li><a class="nav-link link-#00154a" href="/admin/manageGrade" aria-label="subemnu">성적 관리</a></li>
				        	<li><a class="nav-link link-#00154a" href="/admin/stuNotice" aria-label="subemnu">학사경고 / 제적</a></li>
				        	<li><a class="nav-link link-#00154a" href="/admin/stuSwitch" aria-label="subemnu">전과 / 복수전공</a></li>
					    </ul>
		    			</li>
		    			<li><a class="nav-link link-#00154a mmn" href="/board/infoPark">정보광장</a>
		      			<ul id="sub-menu">
				        	<li><a class="nav-link link-#00154a" href="/board/infoPark" aria-label="subemnu">자유게시판</a></li>
				        	<li><a class="nav-link link-#00154a" href="/board/bdRequest" aria-label="subemnu">건의게시판</a></li>
				        	<li><a href="/lecture/selectLecture">강의리스트</a></li>
							<li><a href="/lecture/goRegLecture">강의등록</a></li>
							<li><a href="/common/calendar">달력</a></li>
					    </ul>
		    			</li>
					</c:when>
					
					<c:otherwise>
						<li><a class="nav-link link-#00154a mmn" href="#">내 정보</a>
	      				<ul id="sub-menu">
					        <li><a href="/stuInfo/chkInfoJsp" aria-label="subemnu">내 정보 조회</a></li>
				        	<li><a href="/stuInfo/changeInfoJsp" aria-label="subemnu">내 정보 수정</a></li>
				        	<li><a href="/stuInfo/chkPwJsp" aria-label="subemnu">비밀번호 변경</a></li>
				        	<li><a href="/stuInfo/chkTimetableJsp" aria-label="subemnu">시간표</a></li>
					    </ul>
					</li>
		    		<li><a class="nav-link link-#00154a mmn" href="/stuManage/goMain">학적관리</a>
				    	<ul id="sub-menu">
				    		<li><a href="/lecture/goEnrolment">수강신청</a></li>
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
			    	<li><a class="nav-link link-#00154a mmn" href="/board/infoPark">정보광장</a>
		      			<ul id="sub-menu">
				        	<li><a class="nav-link link-#00154a" href="/board/infoPark" aria-label="subemnu">자유게시판</a></li>
				        	<li><a class="nav-link link-#00154a" href="/board/bdRequest" aria-label="subemnu">건의게시판</a></li>
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
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
.topSm{height: 100px;}
</style>
</head>
<body>
<div>
<div>
	<div style="text-align: right; margin-bottom: 20px; margin-right: 80px;">
		<c:if test="${not empty sessionScope.loginInfo }">
			${sessionScope.loginInfo.memName }님 반갑습니다.
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
				<c:when test="${sessionScope.loginInfo.memAuth eq 3}"><!-- 교직원(관리자) -->
					<li><a class="nav-link link-#00154a mmn" href="/common/myInfo">내 정보</a>
	      				<ul id="sub-menu">
					        <li><a class="nav-link link-#00154a" href="/emp/chkInfoJsp" aria-label="subemnu">내 정보 조회</a></li>
				        	<li><a class="nav-link link-#00154a" href="/portal/regMemberJsp" aria-label="subemnu">내 정보 수정</a></li>
					    </ul>
					</li>
		    		<li><a class="nav-link link-#00154a mmn" href="#">학생관리</a>	<!-- 11.09 이수정 -->
				    	<ul id="sub-menu">
				        	<li><a class="nav-link link-#00154a" href="/admin/selectStu" aria-label="subemnu">학생 조회</a></li>
				        	<li><a class="nav-link link-#00154a" href="/grade/chkGradeJsp" aria-label="subemnu">성적 관리</a></li>
				        	<li><a class="nav-link link-#00154a" href="/admin/goEditStatusList" aria-label="subemnu">학적 변동승인</a></li>	<!-- 11.09 이수정 -->
				        	<li><a class="nav-link link-#00154a" href="/admin/stuNotice" aria-label="subemnu">학사경고</a></li>
				        	<li><a class="nav-link link-#00154a" href="/admin/stuGetOut" aria-label="subemnu">제적</a></li> <!-- 11.10 이수정 -->
				        	<li><a class="nav-link link-#00154a" href="/admin/stuSwitch" aria-label="subemnu">전과 / 복수전공</a></li>	<!-- 11.09 이수정 -->
					    </ul>
		    		</li>
			    	<li><a class="nav-link link-#00154a mmn" href="/board/infoPark">정보광장</a>
		      			<ul id="sub-menu">
				        	<li><a class="nav-link link-#00154a" href="/board/infoPark" aria-label="subemnu">자유게시판</a></li>
				        	<li><a class="nav-link link-#00154a" href="/board/bdRequest" aria-label="subemnu">건의게시판</a></li>
				        	<li><a class="nav-link link-#00154a" href="/common/calendar" aria-label="subemnu">일정 관리</a></li>
				        	<li><a class="nav-link link-#00154a" href="/board/bdRequest" aria-label="subemnu">게시판 관리</a></li>
				        	<li><a class="nav-link link-#00154a" href="/common/calendar" aria-label="subemnu">학사 관리</a></li>
					    </ul>
		    		</li>
					</c:when>
					
					<c:when test="${sessionScope.loginInfo.memAuth eq 2}"> <!-- 교수 -->
						<li><a class="nav-link link-#00154a mm" href="/admin/editStatus">학생관리</a>
				    	<ul id="sub-menu">
				    		<li><a class="nav-link link-#00154a" href="/stuManage/showStuList" aria-label="subemnu">학생 조회</a></li>
				        	<li><a class="nav-link link-#00154a" href="/stuManage/regGradeJsp" aria-label="subemnu">성적 관리</a></li>
				    		<li><a class="nav-link link-#00154a mm" href="/admin/goEditStatusList" aria-label="subemnu">학적 변동승인</a></li>	<!-- 11.09 이수정 -->
				        	<li><a class="nav-link link-#00154a" href="/admin/stuNotice" aria-label="subemnu">학사경고</a></li>
				        	<li><a class="nav-link link-#00154a" href="/admin/stuGetOut" aria-label="subemnu">제적</a></li> <!-- 11.10 이수정 -->
				        	<li><a class="nav-link link-#00154a" href="/admin/stuSwitch" aria-label="subemnu">전과 / 복수전공</a></li>
					    </ul>
		    			</li>
		    			<li><a class="nav-link link-#00154a mmn" href="#">강의 관리 </a>
				    	<ul id="sub-menu">
							<li><a class="nav-link link-#00154a" href="/lecture/goRegLecture" aria-label="subemnu">강의등록</a></li>
							<li><a class="nav-link link-#00154a" href="/lecture/selectLecture" aria-label="subemnu">강의리스트</a></li>
					    </ul>
		    			</li>
		    			<li><a class="nav-link link-#00154a mmn" href="/board/infoPark">정보광장</a>
		      			<ul id="sub-menu">
				        	<li><a class="nav-link link-#00154a" href="/board/infoPark" aria-label="subemnu">자유게시판</a></li>
				        	<li><a class="nav-link link-#00154a" href="/board/bdRequest" aria-label="subemnu">건의게시판</a></li>
							<li><a class="nav-link link-#00154a" href="/common/calendar" aria-label="subemnu">학사 일정</a></li>
					    </ul>
		    			</li>
					</c:when>
					
					<c:otherwise>
						<li><a class="nav-link link-#00154a mmn" href="/stuInfo/chkInfoJsp">내 정보</a>
	      				<ul id="sub-menu">
					        <li><a class="nav-link link-#00154a" href="/stuInfo/chkInfoJsp" aria-label="subemnu">내 정보 조회</a></li>
				        	<li><a class="nav-link link-#00154a" href="/stuInfo/changeInfoJsp" aria-label="subemnu">내 정보 수정</a></li>
				        	<li><a class="nav-link link-#00154a" href="/stuInfo/chkPwJsp" aria-label="subemnu">비밀번호 변경</a></li>
				        	<li><a class="nav-link link-#00154a" href="/stuInfo/chkTimetableJsp" aria-label="subemnu">시간표</a></li>
				        	<li><a class="nav-link link-#00154a" href=/grade/graduationJsp aria-label="subemnu">졸업 요건</a></li>
					    </ul>
					</li>
		    		<li><a class="nav-link link-#00154a mmn" href="#">학적관리</a>
				    	<ul id="sub-menu">
				        	<li><a class="nav-link link-#00154a" href="/stuManage/stopStudyInfo"  aria-label="subemnu">휴학 안내</a></li>	<!-- 11.09 이수정 -->
				        	<li><a class="nav-link link-#00154a" href="/stuManage/goStopStudy" aria-label="subemnu">휴학 신청</a></li>
				        	<li><a class="nav-link link-#00154a" href="/stuManage/againStudyInfo" aria-label="subemnu">복학 안내</a></li>
				        	<li><a class="nav-link link-#00154a" href="/stuManage/goAgainStudy" aria-label="subemnu">복학 신청</a></li>
				        	<li><a class="nav-link link-#00154a" href="/stuManage/exitInfo" aria-label="subemnu">자퇴 안내</a></li>
				        	<li><a class="nav-link link-#00154a" href="/stuManage/goExitStudy" aria-label="subemnu">자퇴 신청</a></li>	<!-- 11.09 이수정 -->
				        	<li><a class="nav-link link-#00154a" href="/stuManage/goChangeMajor" aria-label="subemnu">전과 신청</a></li>
				        	<li><a class="nav-link link-#00154a" href="/stuManage/goDoubleMajor" aria-label="subemnu">복수전공 신청</a></li>
				        	<!-- <li><a href="/stuManage/showStuList" aria-label="subemnu">학생조회</a></li> -->	<!-- 11.09 이수정 -->
					    </ul>
		    		</li>
		    		<li><a class="nav-link link-#00154a mmn" href="/lecture/goEnrolment">교과 과정 / 수업</a>
		      			<ul id="sub-menu">
				        	<li><a class="nav-link link-#00154a" href="/lecture/goEnrolment" aria-label="subemnu">수강 신청</a></li>
				        	<li><a class="nav-link link-#00154a" href=/grade/chkGradeJsp aria-label="subemnu">성적 조회</a></li>
					    </ul>
		    		</li>
			    	<li><a class="nav-link link-#00154a mmn" href="/board/infoPark">정보광장</a>
		      			<ul id="sub-menu">
				        	<li><a class="nav-link link-#00154a" href="/board/infoPark" aria-label="subemnu">자유게시판</a></li>
				        	<li><a class="nav-link link-#00154a" href="/board/bdRequest" aria-label="subemnu">건의게시판</a></li>
				        	<li><a class="nav-link link-#00154a" href="/common/calendar" aria-label="subemnu">학사 일정</a></li>
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
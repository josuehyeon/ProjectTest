package com.kh.project.stuInfo.service;

import com.kh.project.portal.vo.MemberVO;
import com.kh.project.stuInfo.vo.StudentVO;

public interface StuInfoService {
	
	//학생> 내정보-조회> from STUDENT 테이블
	StudentVO selectStuMyInfo(int memNo);
	
	//학생> 내정보-조회> from MEMBER 테이블
	MemberVO selectMemMyInfo (int memNo);
	
	//학생> 내정보-수정> MEMBER 테이블에 해당
	void updateMemMyInfo (MemberVO memberVO);
	
	//현재 비밀번호 확인
	MemberVO chkPw(MemberVO memberVO);
	
	//비밀번호 변경
	int changePw(MemberVO memberVO);

}

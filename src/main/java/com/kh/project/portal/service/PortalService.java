package com.kh.project.portal.service;

import com.kh.project.portal.vo.MemberVO;

public interface PortalService {
	
	//로그인 처리
	MemberVO login(MemberVO memberVO);
	
	//학생> 내정보-조회> from MEMBER 테이블
	MemberVO selectMemMyInfo (int memNo);
	
	//학생> 내정보-수정> MEMBER 테이블에 해당
	void updateMemMyInfo (MemberVO memberVO);

}

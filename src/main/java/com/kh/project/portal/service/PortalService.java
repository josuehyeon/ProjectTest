package com.kh.project.portal.service;

import com.kh.project.portal.vo.MemberVO;

public interface PortalService {
	
	//로그인 처리
	MemberVO login(MemberVO memberVO);

}

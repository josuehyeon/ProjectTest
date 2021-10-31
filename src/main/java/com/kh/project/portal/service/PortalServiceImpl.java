package com.kh.project.portal.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.project.portal.vo.MemberVO;

@Service("portalService")
public class PortalServiceImpl implements PortalService{
	@Autowired
	private SqlSessionTemplate sqlSession;

	
	@Override //로그인
	public MemberVO login(MemberVO memberVO) {
		return sqlSession.selectOne("memberMapper.login", memberVO);
	}
	
	@Override // 학생 정보 조회 (멤버 테이블)
	public MemberVO selectMemMyInfo(int memNo) {
		return sqlSession.selectOne("memberMapper.selectMemMyInfo", memNo);
	}

	@Override // 학생 정보 수정
	public void updateMemMyInfo(MemberVO memberVO) {
		sqlSession.update("memberMapper.updateMemMyInfo", memberVO);
	}

	@Override	// 임시 비밀번호 발급 관련
	public MemberVO selectEmailToFindPw(MemberVO memberVO) {
		return  sqlSession.selectOne("memberMapper.selectEmailToFindPw", memberVO);
	}	
}

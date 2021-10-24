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
	
}

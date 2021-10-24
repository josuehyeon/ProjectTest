package com.kh.project.stuInfo.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.project.portal.vo.MemberVO;
import com.kh.project.stuInfo.vo.StudentVO;

@Service("stuInfoService")
public class StuInfoServiceImpl implements StuInfoService{
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override // 학생 정보 조회 (학생 테이블)
	public StudentVO selectStuMyInfo(int memNo) {
		return sqlSession.selectOne("studentMapper.selectStuMyInfo", memNo) ;
	}

	@Override // 학생 정보 조회 (멤버 테이블)
	public MemberVO selectMemMyInfo(int memNo) {
		return sqlSession.selectOne("memberMapper.selectMemMyInfo", memNo);
	}

	@Override // 학생 정보 수정
	public void updateMemMyInfo(MemberVO memberVO) {
		sqlSession.update("memberMapper.updateMemMyInfo", memberVO);
	}

	@Override //현재 비밀번호 확인
	public MemberVO chkPw(MemberVO memberVO) {
		return sqlSession.selectOne("memberMapper.selectForCheckPw", memberVO);
	}

	@Override // 비밀번호 변경
	public int changePw(MemberVO memberVO) {
		return sqlSession.update("memberMapper.changePw", memberVO);
	}



}

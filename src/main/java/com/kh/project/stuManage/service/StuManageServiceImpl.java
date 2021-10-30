package com.kh.project.stuManage.service;


import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.project.portal.vo.MemberVO;
import com.kh.project.stuInfo.vo.StudentVO;
import com.kh.project.stuManage.vo.ChangeMajorVO;
import com.kh.project.stuManage.vo.DoubleMajorVO;


@Service("stuManageService")
public class StuManageServiceImpl implements StuManageService{
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public StudentVO goStopStudy(int memNo) {
		return sqlSession.selectOne("studentMapper.goStopStudy", memNo);
	}

	@Override
	public StudentVO selectStuInfoForChange(MemberVO memberVO) {
		return sqlSession.selectOne("changeMajorMapper.selectStuInfoForChange", memberVO);
	}

	@Override
	public void insertChangeMajorTable(ChangeMajorVO changeMajorVO) {
		sqlSession.insert("changeMajorMapper.insertChangeMajorTable", changeMajorVO);
	}

	@Override
	public List<ChangeMajorVO> selectChangeMajorList(MemberVO memberVO) {
		return sqlSession.selectList("changeMajorMapper.selectChangeMajorList", memberVO);
	}

	@Override
	public void insertDoubleMajorTable(DoubleMajorVO doubleMajorVO) {
		sqlSession.insert("doubleMajorMapper.insertDoubleMajorTable", doubleMajorVO);
	}

	@Override
	public List<DoubleMajorVO> selectDoubleMajorList(MemberVO memberVO) {
		return sqlSession.selectList("doubleMajorMapper.selectDoubleMajorList", memberVO);
	}

	

	
}

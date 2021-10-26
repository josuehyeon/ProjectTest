package com.kh.project.stuManage.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.project.stuManage.vo.DeptManageVO;

@Service("stuManageService")
public class StuManageServiceImpl implements StuManageService{
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public DeptManageVO selectStopStudyList(DeptManageVO deptManageVO) {
		return sqlSession.selectOne("deptManageMapper.selectStopStudyList", deptManageVO);
	}
	
}

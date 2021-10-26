package com.kh.project.stuManage.service;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.project.stuManage.vo.StuManageVO;

@Service("stuManageService")
public class StuManageServiceImpl implements StuManageService{
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public StuManageVO selectStopStudy() {
		return sqlSession.selectOne("stuManageMapper.selectStopStudy");
	}
	
}

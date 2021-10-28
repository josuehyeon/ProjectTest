package com.kh.project.stuManage.service;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.project.stuInfo.vo.StudentVO;


@Service("stuManageService")
public class StuManageServiceImpl implements StuManageService{
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public StudentVO goStopStudy(int memNo) {
		return sqlSession.selectOne("studentMapper.goStopStudy", memNo);
	}

	
}

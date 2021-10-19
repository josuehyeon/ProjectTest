package com.kh.project.stuManage.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("stuManageService")
public class StuManageServiceImpl implements StuManageService{
	@Autowired
	private SqlSessionTemplate sqlSession;
	
}

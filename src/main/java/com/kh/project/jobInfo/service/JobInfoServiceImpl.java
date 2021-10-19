package com.kh.project.jobInfo.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("jobInfoService")
public class JobInfoServiceImpl implements JobInfoService{
	@Autowired
	private SqlSessionTemplate sqlSession;
	
}

package com.kh.project.stuManage.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("sampleService")
public class SmpleServiceImpl implements SampleService{
	@Autowired
	private SqlSessionTemplate sqlSession;
	
}

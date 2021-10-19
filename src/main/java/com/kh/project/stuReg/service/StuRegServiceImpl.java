package com.kh.project.stuReg.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("stuRegService")
public class StuRegServiceImpl implements StuRegService{
	@Autowired
	private SqlSessionTemplate sqlSession;
	
}

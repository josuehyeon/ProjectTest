package com.kh.project.lecture.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("sampleService")
public class LectureServiceImpl implements LectureService{
	@Autowired
	private SqlSessionTemplate sqlSession;
	
}

package com.kh.project.student.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("studentService")
public class StudentServiceImpl implements StudentService{
	@Autowired
	private SqlSessionTemplate sqlSession;
	
}

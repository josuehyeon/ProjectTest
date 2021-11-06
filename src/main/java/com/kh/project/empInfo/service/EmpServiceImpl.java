package com.kh.project.empInfo.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.project.stuManage.vo.EmpVO;

@Service("empService")
public class EmpServiceImpl implements EmpService {
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public EmpVO selectEmpMyInfo(int empNo) {
		return sqlSession.selectOne("empMapper.selectEmpMyInfo", empNo);
	}
	
	

}

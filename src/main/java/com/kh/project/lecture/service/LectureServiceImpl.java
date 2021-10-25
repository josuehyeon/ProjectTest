package com.kh.project.lecture.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.project.stuManage.vo.CollegeVO;
import com.kh.project.stuManage.vo.DeptVO;
import com.kh.project.stuManage.vo.EmpVO;

@Service("lectureService")
public class LectureServiceImpl implements LectureService{
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public List<CollegeVO> selectCollegeList() {
		return sqlSession.selectList("collegeMapper.selectCollegeList");
	}

	@Override
	public List<DeptVO> selectDeptList() {
		return sqlSession.selectList("deptMapper.selectDeptList");
	}

	@Override
	public List<EmpVO> selectProfList() {
		return sqlSession.selectList("empMapper.selectProfList");
	}

	@Override
	public List<EmpVO> selectAssiList() {
		return sqlSession.selectList("empMapper.selectAssiList");
	}
	
}

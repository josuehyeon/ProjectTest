package com.kh.project.lecture.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.project.lecture.vo.LectureVO;
import com.kh.project.lecture.vo.LectureViewVO;
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
	
	@Override
	public void regLecture(LectureVO lectureVO) {
		sqlSession.insert("lectureMapper.regLecture", lectureVO);
	}

	@Override
	public List<LectureVO> selectLectureList(LectureViewVO lectureViewVO) {
		return sqlSession.selectList("lectureMapper.selectLectureList", lectureViewVO);
	}

	@Override
	public void deleteLecture(LectureVO lectureVO) {
		sqlSession.delete("lectureMapper.deleteLecture", lectureVO);
	}

	@Override
	public List<DeptVO> selectDeptList2(CollegeVO collegeVO) {
		return sqlSession.selectList("deptMapper.selectDeptList2", collegeVO);
	}

	@Override
	public List<EmpVO> selectProfList2(CollegeVO collegeVO) {
		return sqlSession.selectList("empMapper.selectProfList2", collegeVO);
	}

	@Override
	public List<EmpVO> selectAssiList2(CollegeVO collegeVO) {
		return sqlSession.selectList("empMapper.selectAssiList2", collegeVO);
	}
	
}

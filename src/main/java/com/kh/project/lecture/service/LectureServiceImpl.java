package com.kh.project.lecture.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.project.lecture.vo.EnrolmentVO;
import com.kh.project.lecture.vo.LectureVO;
import com.kh.project.lecture.vo.LectureViewVO;
import com.kh.project.lecture.vo.PdfVO;
import com.kh.project.portal.vo.MemberVO;
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

	@Override
	public void updateLecture(LectureVO lectureVO) {
		sqlSession.update("lectureMapper.updateLecture", lectureVO);
	}

	@Override
	public String selectNextLecId() {
		return sqlSession.selectOne("lectureMapper.selectNextLecId");
	}

	@Override
	public int selectNextNumber() {
		return sqlSession.selectOne("lectureMapper.selectNextNumber");
	}

	@Override
	public int insertPdf(LectureVO lectureVO) {
		return sqlSession.insert("lectureMapper.insertPdf", lectureVO);
	}

	@Override
	public PdfVO selectLecPdf(LectureVO lectureVO) {
		return sqlSession.selectOne("lectureMapper.selectLecPdf", lectureVO);
	}

	@Override
	public void enrolment(EnrolmentVO enrolmentVO) {
		sqlSession.insert("lectureMapper.enrolment", enrolmentVO);
	}

	@Override
	public List<EnrolmentVO> selectEnrolList(MemberVO memberVO) {
		return sqlSession.selectList("lectureMapper.selectEnrolList", memberVO);
	}

	@Override
	public void deleteEnrolmentOne(EnrolmentVO enrolmentVO) {
		sqlSession.delete("lectureMapper.deleteEnrolmentOne", enrolmentVO);
	}

	@Override	//성적등록메뉴, 교수 번호로 담당 강의 조회 -ksj
	public List<LectureVO> selectLectureListWithProfNo(LectureVO lectureVO) {
		return sqlSession.selectList("lectureMapper.selectLectureListWithProfNo", lectureVO) ;
	}

	@Override //관리자: 성적관리, 학생 성적 등록 -ksj 
	public List<EnrolmentVO> selectStuNoForRegStuGrade(EnrolmentVO enrolmentVO) {
		return sqlSession.selectList("lectureMapper.selectStuNoForRegStuGrade", enrolmentVO);
	}

	@Override
	public int totalLecCnt(LectureViewVO lectureViewVO) {
		
		return sqlSession.selectOne("lectureMapper.totalLecCnt", lectureViewVO);
	}

	
}

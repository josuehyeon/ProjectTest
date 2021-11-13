package com.kh.project.gradeManage.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.project.gradeManage.vo.GradeVO;
import com.kh.project.gradeManage.vo.SemesterVO;
import com.kh.project.gradeManage.vo.StuGradeVO;
import com.kh.project.portal.vo.MemberVO;
import com.kh.project.stuInfo.vo.StudentVO;

@Service("gradeManageService")
public class GradeManageServiceImpl implements GradeManageService {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override //학생 성적 리스트
	public List<StuGradeVO> selectStuGradeList(StuGradeVO stuGradeVO) {
		return sqlSession.selectList("gradeMapper.selectStuGradeList", stuGradeVO);
	}

	@Override // 학년, 학기 리스트
	public List<SemesterVO> selectSemesterList() {
		return sqlSession.selectList("gradeMapper.selectSemesterList");
	}

	@Override //졸업 페이지에 뿌릴 학생 정보
	public StudentVO selectMyInfoForGraduation(int memNo) {
		return sqlSession.selectOne("studentMapper.selectMyInfoForGraduation", memNo);
	}

	@Override //학생 성적 리스트(F학점 제외)
	public List<StuGradeVO> selectStuGradeListForGraduation(StuGradeVO stuGradeVO) {
		return sqlSession.selectList("gradeMapper.selectStuGradeListForGraduation", stuGradeVO);
	}

	@Override //총 이수학점 , 평점평균
	public StuGradeVO totalSumAvg(StuGradeVO stuGradeVO) {
		return sqlSession.selectOne("gradeMapper.totalSumAvg", stuGradeVO);
	}
	
	@Override //수강신청시 STU_GRADE에도 학생과 강의 정보 등록 (성적은 null)
	public void insertIntoStuGradeWOGrade(StuGradeVO stuGradeVO) {
		sqlSession.insert("gradeMapper.insertIntoStuGradeWOGrade", stuGradeVO);
	}

	@Override //성적 등록을 위한 학생 리스트
	public List<StuGradeVO> selectStudentListForStuGrade(StuGradeVO stuGradeVO) {
		return sqlSession.selectList("gradeMapper.selectStudentListForStuGrade", stuGradeVO) ;
	}

	@Override
	public List<GradeVO> gradeList() {
		return sqlSession.selectList("gradeMapper.gradeList");
	}

	@Override
	public void updateGrade(StuGradeVO stuGradeVO) {
		sqlSession.update("gradeMapper.updateGrade", stuGradeVO);
		
	}

}

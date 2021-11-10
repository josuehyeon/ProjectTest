package com.kh.project.gradeManage.service;

import java.util.List;

import com.kh.project.gradeManage.vo.GradeVO;
import com.kh.project.gradeManage.vo.SemesterVO;
import com.kh.project.gradeManage.vo.StuGradeVO;
import com.kh.project.portal.vo.MemberVO;
import com.kh.project.stuInfo.vo.StudentVO;

public interface GradeManageService {

	//학년, 학기 리스트
	List<SemesterVO> selectSemesterList(); 
	
	//학생 성적 리스트
	List<StuGradeVO> selectStuGradeList(StuGradeVO stuGradeVO);

	//학생 성적 리스트
	List<StuGradeVO> selectStuGradeListForGraduation(StuGradeVO stuGradeVO);
	
	//졸업페이지, 학생 정보 조회
	StudentVO selectMyInfoForGraduation(int memNo);
	
	//총 이수학점, 총 평점평균
	StuGradeVO totalSumAvg(StuGradeVO stuGradeVO);
	
	//학과 어쩌고 -ksj
	void insertIntoStuGradeWOGrade(StuGradeVO stuGradeVO);

}

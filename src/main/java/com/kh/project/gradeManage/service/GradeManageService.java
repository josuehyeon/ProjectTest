package com.kh.project.gradeManage.service;

import java.util.List;

import com.kh.project.gradeManage.vo.SemesterVO;
import com.kh.project.gradeManage.vo.StuGradeVO;

public interface GradeManageService {
	
	//학생 성적 리스트
	List<StuGradeVO> selectStuGradeList(SemesterVO semesterVO);
	
	//학년, 학기 리스트
	List<SemesterVO> selectSemesterList(); 

}

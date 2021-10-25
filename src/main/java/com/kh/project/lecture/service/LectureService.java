package com.kh.project.lecture.service;

import java.util.List;

import com.kh.project.stuManage.vo.CollegeVO;
import com.kh.project.stuManage.vo.DeptVO;
import com.kh.project.stuManage.vo.EmpVO;



public interface LectureService {
	//대학리스트조회
	List<CollegeVO> selectCollegeList();
	//학과리스트조회
	List<DeptVO> selectDeptList();
	//교수리스트 조회
	List<EmpVO> selectProfList();
	//조교리스트 조회
	List<EmpVO> selectAssiList();
	
	
}

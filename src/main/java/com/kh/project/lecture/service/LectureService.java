package com.kh.project.lecture.service;

import java.util.List;

import com.kh.project.lecture.vo.LectureVO;
import com.kh.project.lecture.vo.LectureViewVO;
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
	//강의등록
	void regLecture(LectureVO lectureVO);
	//강의리스트조회
	List<LectureVO> selectLectureList(LectureViewVO lectureViewVO);
	//강의 삭제
	void deleteLecture(LectureVO lectureVO);
	
	
	
	//학과리스트조회
	List<DeptVO> selectDeptList2(CollegeVO collegeVO);
	//교수리스트 조회
	List<EmpVO> selectProfList2(CollegeVO collegeVO);
	//조교리스트 조회
	List<EmpVO> selectAssiList2(CollegeVO collegeVO);
}

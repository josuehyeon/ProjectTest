package com.kh.project.admin.service;

import java.util.List;

import com.kh.project.admin.vo.AdminVO;
import com.kh.project.admin.vo.EditStatusVO;
import com.kh.project.stuInfo.vo.StudentVO;
import com.kh.project.stuManage.vo.ChangeMajorVO;

public interface AdminService {
	
	//휴학
	List<EditStatusVO> selectStopList();
	
	int updateStop(EditStatusVO editStatusVO);
	
	void updateStopStatusToStudent(EditStatusVO editStatusVO);

	int cancelEdit(EditStatusVO editStatusVO);
	
	int deleteEdit(EditStatusVO editStatusVO);
	
	//복학
	//List<EditStatusVO> selectAgainList();
	
	void updateAgain(EditStatusVO editStatusVO);
	
	void updateAgainStatusToStudent(EditStatusVO editStatusVO);
	
	//자퇴
	//List<EditStatusVO> selectExitList();
	
	void updateExit(EditStatusVO editStatusVO);
	
	void updateExitStatusToStudent(EditStatusVO editStatusVO);
	
	
	List<ChangeMajorVO> AdminChangeMajorRequestList();
	
	ChangeMajorVO modalStuInfo(ChangeMajorVO changeMajorVO);
	
	List<AdminVO> selectNotice(StudentVO studentVO);
}

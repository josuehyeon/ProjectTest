package com.kh.project.admin.service;

import java.util.List;

import com.kh.project.admin.vo.EditStatusVO;
import com.kh.project.stuManage.vo.ChangeMajorVO;

public interface AdminService {

	List<EditStatusVO> selectEditList();
	
	int updateEdit(EditStatusVO editStatusVO);
	
	int cancelEdit(EditStatusVO editStatusVO);
	
	int deleteEdit(EditStatusVO editStatusVO);
	
	void updateStudentStatus(EditStatusVO editStatusVO);
	
	
	List<ChangeMajorVO> AdminChangeMajorRequestList();
	
	ChangeMajorVO modalStuInfo(ChangeMajorVO changeMajorVO);
}

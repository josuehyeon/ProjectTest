package com.kh.project.stuManage.service;

import com.kh.project.stuInfo.vo.StudentVO;

public interface StuManageService {
	//휴학신청 목록조회
	StudentVO goStopStudy(int stuNo);
}

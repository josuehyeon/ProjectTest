package com.kh.project.stuManage.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.project.stuManage.service.StuManageService;
import com.kh.project.stuManage.vo.DeptManageVO;

@Controller
@RequestMapping("/stuManage")
public class StuManageController {
	@Resource(name = "stuManageService")
	private StuManageService stuManageService;
	
	//휴학신청
	@RequestMapping("/selectStopStudyList")
	public String goSelectStopStudyList() {
		return "";
	}
}










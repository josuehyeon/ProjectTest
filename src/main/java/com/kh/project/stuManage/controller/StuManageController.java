package com.kh.project.stuManage.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.project.stuManage.service.StuManageService;

@Controller
@RequestMapping("/stuManage")
public class StuManageController {
	@Resource(name = "stuManageService")
	private StuManageService stuManageService;
	
	//메인으로가기
	@RequestMapping("/goMain")
	public String goMain() {
		return "stuManage/main";
	}
	
	//휴학 안내 
	@GetMapping("/stopStudyInfo")
	public String stopStudyInfo() {
		return "stuManage/stopStudyInfo";
	}
	
	//휴학 신청
	@GetMapping("/goStopStudy")
	public String goStopStudy() {
		return "stuManage/stopStudy";
	}
	
	//복학 안내
	@GetMapping("/againStudyInfo")
	public String againStudyInfo() {
		return "stuManage/againStudyInfo";
	}
	
	//복학 신청
	@GetMapping("/goAgainStudy")
	public String goAgainStudy() {
		return "stuManage/goAgainStudy";
	}
	
	//자퇴 안내
	@GetMapping("/exitInfo")
	public String exitInfo() {
		return "stuManage/exitInfo";
	}
	
	//자퇴 신청
	@GetMapping("/goExit")
	public String goExit() {
		return "stuManage/goExit";
	}
	
	
	
	
	
}










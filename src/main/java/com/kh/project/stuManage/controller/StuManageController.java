package com.kh.project.stuManage.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.project.portal.vo.MemberVO;
import com.kh.project.stuManage.service.StuManageService;

@Controller
@RequestMapping("/stuManage")
public class StuManageController {
	@Resource(name = "stuManageService")
	private StuManageService stuManageService;
	
	//메인으로가기
	@GetMapping("/goMain")
	public String goMain() {
		return "stuManage/main";
	}
	
	//휴학 안내 
	@GetMapping("/stopStudyInfo")
	public String stopStudyInfo() {
		return "stuManage/stopStudyInfo";
	}
	
	//휴학 신청 들어가기
	@GetMapping("/goStopStudy")
	public String goStopStudy(HttpSession session , Model model) {
		//로그인 세션 정보 가져오기
		MemberVO member = (MemberVO)session.getAttribute("loginInfo");
		int memNo = member.getMemNo();
		//휴학 신청에 memNo를 넣어서 특정 학생의 데이터를 가져옴
		model.addAttribute("stopStudyInfo", stuManageService.goStopStudy(memNo));
		return "stuManage/stopStudy";
	}
	
	//휴학 신청 목록 나오기
	@PostMapping("/goStopStudy")
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










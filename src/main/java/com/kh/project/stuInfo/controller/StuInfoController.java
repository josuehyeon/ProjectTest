package com.kh.project.stuInfo.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.project.portal.service.PortalService;
import com.kh.project.portal.vo.MemberVO;
import com.kh.project.stuInfo.service.StuInfoService;

@Controller
@RequestMapping("/stuInfo")
public class StuInfoController {
	@Resource(name = "stuInfoService")
	private StuInfoService stuInfoService;
	
	@Resource(name = "portalService")
	private PortalService portalService;
	
	//이동 "학생 정보 조회.jsp"
	@GetMapping("/chkInfoJsp")
		public String chkInfoJsp(HttpSession session , Model model) {
			//로그인 세션 정보 가져오기
			MemberVO member = (MemberVO)session.getAttribute("loginInfo");
			int memNo = member.getMemNo();
			
			//학생 테이블에서 가져온 데이터
			model.addAttribute("studentInfo", stuInfoService.selectStuMyInfo(memNo));
			
			//멤버 테이블에서 가져온 데이터
			model.addAttribute("memberInfo", portalService.selectMemMyInfo(memNo));
			
			return "stuInfo/chk_info";
		}
	
	//이동 "학생 정보 수정.jsp"
	@GetMapping("/changeInfoJsp")
	public String chnageInfo(MemberVO memberVO, Model model, HttpSession session) {
		//로그인 세션 정보 가져오기
		MemberVO member = (MemberVO)session.getAttribute("loginInfo");
		int memNo = member.getMemNo();
		
		//학생 테이블에서 가져온 데이터
		model.addAttribute("studentInfo", stuInfoService.selectStuMyInfo(memNo));
		//멤버 테이블에서 가져온 데이터
		model.addAttribute("memberInfo", portalService.selectMemMyInfo(memNo));
		
		//정보 수정 쿼리 실행
		portalService.updateMemMyInfo(memberVO);
		return "stuInfo/change_info" ;
	}
	
	//처리 "학생 정보 수정"
	@PostMapping("/changeInfo")
	public String changeInfo(MemberVO memberVO) {
		portalService.updateMemMyInfo(memberVO);
		return "redirect:/stuInfo/chkInfoJsp" ;
	}
	
	//이동 "현재 비밀번호 확인.jsp"
	@GetMapping("/chkPwJsp")
	public String chkPwJsp() {
		return "stuInfo/chk_pw";
	}
	
	//처리 "현재 비밀번호 확인"
	@PostMapping("/chkPw")
	public String chkPw(MemberVO memberVO , Model model) {
		model.addAttribute("memberInfo", stuInfoService.chkPw(memberVO));
		return "stuInfo/chk_pw_result";
	}
	
	//이동 "비밀번호 변경.jsp"
	@GetMapping("/changePwJsp")
	public String changePwJsp() {
		return "stuInfo/change_pw";
	}
	

	//처리 "비밀번호 변경"
	@PostMapping("/changePw")
	public String changePw(MemberVO memberVO) {
		stuInfoService.changePw(memberVO);
		return "redirect:/stuInfo/chkInfoJsp";
	}
	
	//이동 "시간표 조회"
	@GetMapping("/chkTimetableJsp")
	public String chkTimetableJsp(MemberVO memberVO ,HttpSession session ,Model model) {
		//로그인 세션 정보 가져오기
		MemberVO member = (MemberVO)session.getAttribute("loginInfo");
		int stuNo = member.getMemNo();
		System.out.println("??????"+stuNo);
		//시간표에 필요한 강의 정보 목록
		model.addAttribute("timetable", stuInfoService.selectTimetableList(stuNo));
		return "stuInfo/chk_timetable";
	}
	

}

package com.kh.project.empInfo.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.project.empInfo.service.EmpService;
import com.kh.project.portal.service.PortalService;
import com.kh.project.portal.vo.MemberVO;

@Controller
@RequestMapping("/emp")
public class EmpController {
	
	@Resource(name = "empService")
	private EmpService empService;
	@Resource(name = "portalService")
	private PortalService portalService;
	
	// 이동 "직원 내 정보 조회"
	@GetMapping("/chkInfoJsp")
	private String chkInfoJsp(HttpSession session , Model model) {
		//로그인 세션 정보 가져오기
		MemberVO member = (MemberVO)session.getAttribute("loginInfo");
		int memNo = member.getMemNo();
		
		//직원 테이블에서 가져온 데이터
		model.addAttribute("empInfo", empService.selectEmpMyInfo(memNo));
		//멤버 테이블에서 가져온 데이터
		model.addAttribute("memberInfo", portalService.selectMemMyInfo(memNo));
		
		return "empInfo/chk_emp_info";
	}
	
	//이동 "직원 내 정보 수정"
	@GetMapping("/changeInfoJsp")
	private String changeInfo(MemberVO memberVO, Model model , HttpSession session) {
		//로그인 세션 정보 가져오기
		MemberVO member = (MemberVO)session.getAttribute("loginInfo");
		int memNo = member.getMemNo();
		//직원 테이블에서 가져온 데이터
		model.addAttribute("empInfo", empService.selectEmpMyInfo(memNo));
		//멤버 테이블에서 가져온 데이터
		model.addAttribute("memberInfo", portalService.selectMemMyInfo(memNo));
		//멤버 정보 수정 쿼리 실행
		portalService.updateMemMyInfo(memberVO);
		return "empInfo/change_emp_info";
	}
	
	//처리 "직원 내 정보 수정"
	@PostMapping("/changeInfo")
	public String changeInfo(MemberVO memberVO) {
		portalService.updateMemMyInfo(memberVO);
		return "redirect:/emp/chkInfoJsp";
	}
	

}

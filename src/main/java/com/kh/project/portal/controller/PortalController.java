package com.kh.project.portal.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.project.portal.service.PortalService;
import com.kh.project.portal.vo.MemberVO;

//샘플입니다. 프로젝트 진행 시 해당 클래스는 삭제하시면 됩니다.
@Controller
@RequestMapping("/portal")
public class PortalController {
	@Resource(name = "portalService")
	private PortalService portalSerivce;
	
	//포탈 첫 페이지 (로그인창)
	@GetMapping("/loginJsp")
	public String gologinJsp() {
		return  "portal/login";
	}
	
	//처리 "로그인"
	@PostMapping("/login")
	public String login(MemberVO memberVO, HttpSession session) {
		MemberVO loginInfo = portalSerivce.login(memberVO);
		
		if(loginInfo != null) {
			session.setAttribute("loginInfo", loginInfo);
		}
		return "portal/login_result";
	}
	
	//이동 "로그인 후 메인페이지"
	@GetMapping("/mainJsp")
	public String goMainJsp() {
		return "portal/main";
	}
	
	//처리 "로그아웃"
	@GetMapping("/logout")
		public String logout(HttpSession session) {
			session.removeAttribute("loginInfo");
			return "redirect:/portal/loginJsp";
		}
	}
	
	
	










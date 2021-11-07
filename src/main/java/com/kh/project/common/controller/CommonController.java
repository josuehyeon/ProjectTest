package com.kh.project.common.controller;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.project.empInfo.service.EmpService;
import com.kh.project.lecture.vo.RegLectureSelectBoxVO;
import com.kh.project.portal.service.PortalService;
import com.kh.project.portal.vo.MemberVO;
import com.kh.project.stuInfo.service.StuInfoService;
import com.kh.project.stuManage.vo.CollegeVO;
import com.kh.project.stuManage.vo.DeptVO;
import com.kh.project.stuManage.vo.EmpVO;

@Controller
@RequestMapping("/common")
public class CommonController {
	
	@Resource(name = "empService")
	private EmpService empService;
	@Resource(name = "portalService")
	private PortalService portalService;
	@Resource(name = "stuInfoService")
	private StuInfoService stuInfoService;
	
	//달력테스트
	@GetMapping("/calendar")
	public String calendar() {
		return "calendar/calendar";
	}
	
	// 강의등록
	@ResponseBody
	@PostMapping("/regCalendar")
	public String regCalendar(@RequestBody HashMap<String, Object> map) {
		System.out.println(map);
		
		return "";
	}

	//학생, 교수, 교직원(관리자) 모든 내 정보 조회 확인
	@GetMapping("/myInfo")
	public String chkInfo(HttpSession session , Model model) {
		//로그인 세션 정보 가져오기
		MemberVO member = (MemberVO)session.getAttribute("loginInfo");
		int memNo = member.getMemNo();
		int memAuth = member.getMemAuth();
		
		if(memAuth == 3) {
			//직원 테이블에서 가져온 데이터
			model.addAttribute("empInfo", empService.selectEmpMyInfo(memNo));
			//멤버 테이블에서 가져온 데이터
			model.addAttribute("memberInfo", portalService.selectMemMyInfo(memNo));
			
			return "empInfo/chk_emp_info";
		}
		else if(memAuth == 2) {
			//교수는 조회 진행 안하는 걸로 하겠습니다.
			return"";
		}
		else {
			//학생 테이블에서 가져온 데이터
			model.addAttribute("studentInfo", stuInfoService.selectStuMyInfo(memNo));
			
			//멤버 테이블에서 가져온 데이터
			model.addAttribute("memberInfo", portalService.selectMemMyInfo(memNo));
			
			return "stuInfo/chk_info";
		}

	}
		

	
}










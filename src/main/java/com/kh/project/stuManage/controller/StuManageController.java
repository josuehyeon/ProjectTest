package com.kh.project.stuManage.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.project.lecture.service.LectureService;
import com.kh.project.portal.service.PortalService;
import com.kh.project.portal.vo.MemberVO;
import com.kh.project.stuInfo.service.StuInfoService;
import com.kh.project.stuInfo.vo.StudentVO;
import com.kh.project.stuManage.service.StuManageService;
import com.kh.project.stuManage.vo.ChangeMajorVO;
import com.kh.project.stuManage.vo.CollegeVO;
import com.kh.project.stuManage.vo.DeptVO;
import com.kh.project.stuManage.vo.DoubleMajorVO;

@Controller
@RequestMapping("/stuManage")
public class StuManageController {
	@Resource(name = "stuManageService")
	private StuManageService stuManageService;
	
	@Resource(name = "stuInfoService")
	private StuInfoService stuInfoService;
	
	@Resource(name = "portalService")
	private PortalService portalService;
	
	@Resource(name = "lectureService")
	private LectureService lectureService;
	
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
		//휴학 신청에 memNo를 넣어서 특정 학생의 데이터를 가져옴
		int memNo = member.getMemNo();
		model.addAttribute("stopStudyInfo", stuManageService.goStopStudy(memNo));
		return "stuManage/stopStudy";
	}
	
	//휴학 신청 페이지 머무르기
	@PostMapping("/goStopStudy")
	public String goStopStudy(Model model) {
		return "redirect:/stuManage/goStopStudy";
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
	
	//수현10-29
	
	
	//전과신청하러가기
	@GetMapping("/goChangeMajor")
	public String goChangeMajor(Model model, HttpSession session) {
		model.addAttribute("collegeList", lectureService.selectCollegeList());
		model.addAttribute("deptList", lectureService.selectDeptList());
		MemberVO result = (MemberVO)session.getAttribute("loginInfo");
		model.addAttribute("stuInfo", stuManageService.selectStuInfoForChange(result));
		model.addAttribute("changeMajorList", stuManageService.selectChangeMajorList(result));
		return "stuManage/changeMajor_form";
	}

	//전과신청
	@PostMapping("/changeMajor")
	public String changeMajor(ChangeMajorVO changeMajorVO, Model model, HttpSession session) {
		stuManageService.insertChangeMajorTable(changeMajorVO);
		return "redirect:/stuManage/goChangeMajor";
	}
	
	//전과신청페이지 에이작스
	@ResponseBody
	@GetMapping("/selectCollAjax")
	public List<DeptVO> selectCollAjax(CollegeVO collegeVO) {
		// 학과 목록 조회
		List<DeptVO> deptList = lectureService.selectDeptList2(collegeVO);
		return deptList;
	}
	
	
	//복수전공신청하러가기
	@GetMapping("/goDoubleMajor")
	public String goDoubleMajor(Model model, HttpSession session) {
		MemberVO result = (MemberVO)session.getAttribute("loginInfo");
		model.addAttribute("stuInfo", stuManageService.selectStuInfoForChange(result));
		model.addAttribute("changeMajorList", stuManageService.selectChangeMajorList(result));
		model.addAttribute("collegeList", lectureService.selectCollegeList());
		model.addAttribute("deptList", lectureService.selectDeptList());
		model.addAttribute("doubleMajorList", stuManageService.selectDoubleMajorList(result));
		return "stuManage/doubleMajor_form";
	}
	
	//복수전공신청
		@PostMapping("/doubleMajor")
		public String doubleMajor(DoubleMajorVO doubleMajorVO, Model model, HttpSession session) {
			stuManageService.insertDoubleMajorTable(doubleMajorVO);
			return "redirect:/stuManage/goDoubleMajor";
		}
	//학생 조회
	@GetMapping("/showStuList")
	public String showStuList(DeptVO deptVO , Model model) {
		//단과 대학 목록 조회
		model.addAttribute("collList", stuManageService.selectCollegeList());
		//학과 목록 조회
		model.addAttribute("deptList", stuManageService.selectDeptList2(deptVO));
		//학생 목록 조회
		//model.addAttribute("studentList", stuManageService.selectStudentList());
		return "stuManage/show_stu_info";
	}		
	//학생 상세 조회 //ksj
	@GetMapping("/showStuDetail")
	public String showStuDetail(HttpSession session , Model model,  int memNo) {

		//학생 테이블에서 가져온 데이터
		model.addAttribute("studentInfo", stuInfoService.selectStuMyInfo(memNo));
		//멤버 테이블에서 가져온 데이터
		model.addAttribute("memberInfo", portalService.selectMemMyInfo(memNo));
		
		return "stuManage/show_stu_detail";
	}	
	
	@ResponseBody
	@PostMapping("/selectCollegeAjax")
	public List<DeptVO> selectCollegeAjax(CollegeVO collegeVO) {
		// 학과 목록 조회
		return lectureService.selectDeptList2(collegeVO);
	}	
		
		
}










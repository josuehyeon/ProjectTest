package com.kh.project.stuManage.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.project.admin.vo.EditStatusVO;
import com.kh.project.gradeManage.service.GradeManageService;
import com.kh.project.gradeManage.vo.StuGradeVO;
import com.kh.project.lecture.service.LectureService;
import com.kh.project.lecture.vo.EnrolmentVO;
import com.kh.project.lecture.vo.LectureVO;
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
	
	@Resource(name = "gradeManageService")
	private GradeManageService gradeManageService;
	
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
		
		//일단 학생번호가 필요한데, 학생번호가 회원번호랑 동일하다는 가정...
		//승인 대기 중인 데이터 조회
		int waitCnt = stuManageService.selectWaitCntStop(memNo);
		model.addAttribute("waitCntStop", waitCnt);
		return "stuManage/stopStudy";
	}
	
	//복학 신청 들어가기
	@GetMapping("/goAgainStudy")
	public String goAgainStudy(HttpSession session , Model model) {
		
		//로그인 세션 정보 가져오기
		MemberVO member = (MemberVO)session.getAttribute("loginInfo");
		//휴학 신청에 memNo를 넣어서 특정 학생의 데이터를 가져옴
		int memNo = member.getMemNo();
		model.addAttribute("againStudyInfo", stuManageService.goAgainStudy(memNo));
		
		//일단 학생번호가 필요한데, 학생번호가 회원번호랑 동일하다는 가정...
		//승인 대기 중인 데이터 조회
		int waitCnt = stuManageService.selectWaitCntAgain(memNo);
		model.addAttribute("waitCntAgain", waitCnt);
		
		return "stuManage/againStudy";
	}
		
	//자퇴 신청 들어가기
	@GetMapping("/goExitStudy")
	public String goExitStudy(HttpSession session , Model model, EditStatusVO editStatusVO) {
		
		//로그인 세션 정보 가져오기
		MemberVO member = (MemberVO)session.getAttribute("loginInfo");
		//휴학 신청에 memNo를 넣어서 특정 학생의 데이터를 가져옴
		int memNo = member.getMemNo();
		model.addAttribute("exitStudyInfo", stuManageService.goExitStudy(memNo));
		
		//일단 학생번호가 필요한데, 학생번호가 회원번호랑 동일하다는 가정...
		//승인 대기 중인 데이터 조회
		int waitCnt = stuManageService.selectWaitCntExit(memNo);
		model.addAttribute("waitCntExit", waitCnt);
		
		return "stuManage/exitStudy";
	}
	
	//휴학 신청 
	@PostMapping("/goStopStudy")
	public String goStopStudy(Model model, EditStatusVO editStatusVO) {
		model.addAttribute("insertStopInfo", stuManageService.insertStopStudy(editStatusVO));
		return "redirect:/stuManage/goStopStudy";
	}
	
	//복학 신청
	@PostMapping("/goAgainStudy")
	public String goAgainStudy(Model model, EditStatusVO editStatusVO) {
		model.addAttribute("insertAgainInfo", stuManageService.insertAgainStudy(editStatusVO));
		return "redirect:/stuManage/goAgainStudy";
	}
	
	//자퇴 신청
	@PostMapping("/goExitStudy")
	public String goExitStudy(Model model, EditStatusVO editStatusVO) {
		model.addAttribute("insertExitInfo", stuManageService.insertExitStudy(editStatusVO));
		return "redirect:/stuManage/goExitStudy";
	}
		
	//복학 안내
	@GetMapping("/againStudyInfo")
	public String againStudyInfo() {
		return "stuManage/againStudyInfo";
	}
	
	//자퇴 안내
	@GetMapping("/exitInfo")
	public String exitInfo() {
		return "stuManage/exitInfo";
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
	public String showStuList(DeptVO deptVO , StudentVO studentVO ,Model model) {
		//단과 대학 목록 조회
		model.addAttribute("collList", stuManageService.selectCollegeList());
		//학과 목록 조회
		model.addAttribute("deptList", stuManageService.selectDeptList2(deptVO));
		//학생 목록 조회
		model.addAttribute("studentList", stuManageService.selectStudentList(studentVO));
		return "stuManage/show_stu_info";
	}		
	
	//ksj
	@ResponseBody
	@PostMapping("/selectStudentListOnConditionAjax")
	public List<StudentVO> selectStudentListOnConditionAjax(StudentVO studentVO) {
		// 조건에 맞는 학생 목록 조회 Ajax
		return stuManageService.selectStudentList(studentVO);
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
	
	//Ajax: 학과 목록 조회 -ksj
	@ResponseBody
	@PostMapping("/selectCollegeAjax")
	public List<DeptVO> selectCollegeAjax(CollegeVO collegeVO) {
		return lectureService.selectDeptList2(collegeVO);
	}	
	
	//이동 "관리자: 성적관리, 학생 성적 등록 -ksj
	@GetMapping("/regGradeJsp")
	public String regGradeJsp( LectureVO lectureVO , Model model, HttpSession session) {
		//로그인 세션 정보 가져오기
		MemberVO member = (MemberVO)session.getAttribute("loginInfo");
		lectureVO.setProfNo(member.getMemNo());
		
		model.addAttribute("lecInfo", lectureService.selectLectureListWithProfNo(lectureVO));
		return "stuManage/reg_stu_grade";
	}
	
	//Ajax: 강의 셀렉트
	@ResponseBody
	@PostMapping("/clickLectureShowStudent")
	public Map<String, Object> clickLectureShowStudent(StuGradeVO stuGradeVO) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("studentList", gradeManageService.selectStudentListForStuGrade(stuGradeVO));
		map.put("gradeList", gradeManageService.gradeList());
		return map;
	}
	
//	@ResponseBody
//	   @PostMapping("/serchDateAjax")
//	   public Map<String, Object> serchDate(OrderInfoVO orderInfoVO){
//	      map.put("statusInfo", adminService.selectStatus());
//	      map.put("selectBySerchDateList", adminService.serchDate(orderInfoVO));
//	   }
		
}










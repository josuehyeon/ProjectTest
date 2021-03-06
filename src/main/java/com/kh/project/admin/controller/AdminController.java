package com.kh.project.admin.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.mail.internet.MimeMessage;

import org.springframework.aop.aspectj.AspectJAdviceParameterNameDiscoverer.AmbiguousBindingException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.project.admin.service.AdminService;
import com.kh.project.admin.vo.AdminVO;
import com.kh.project.admin.vo.EditStatusVO;
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
@RequestMapping("/admin")
public class AdminController {
	@Resource(name = "adminService")
	private AdminService adminService;
	@Resource(name = "stuManageService")
	private StuManageService stuManageService;
	@Resource(name = "lectureService")
	private LectureService lectureService;
	@Resource(name = "stuInfoService")
	private StuInfoService stuInfoService;
	@Resource(name = "portalService")
	private PortalService portalService;
	
	@Autowired 
	private JavaMailSenderImpl mailSender;
	
	//메인
	@GetMapping("/goMain")
	public String goMain() {
		return "admin/main";
	}
	
	//학생 조회
	@GetMapping("/selectStu")
	public String selectStu() {
		return "admin/selectStu";
	}
	
	//성적 관리
	@GetMapping("/manageGrade")
	public String manageGrade() {
		return "admin/manageGrade";
	}
	
	//학적 변동승인 페이지 이동
	@GetMapping("/goEditStatusList")
	public String editStatus(Model model) {
		model.addAttribute("selectStopList", adminService.selectStopList());
		//model.addAttribute("selectAgainList", adminService.selectAgainList());
		//model.addAttribute("selectExitList", adminService.selectExitList());
		return "admin/editStatusList"; 
	}
	
	//일괄 처리
	@GetMapping("/updateStopStatusToStudent")
	public String updateStopStatusToStudent(Model model, EditStatusVO editStatusVO) {
//		editStatusVO.setStuNoList(editStatusVO.getStuNoListStop());
//		adminService.updateStop(editStatusVO);
//		editStatusVO.setStuNoList(editStatusVO.getStuNoListExit());
//		adminService.updateExit(editStatusVO);
//		editStatusVO.setStuNoList(editStatusVO.getStuNoListAgain());
//		adminService.updateAgain(editStatusVO);
		
		
		//휴학
		if(editStatusVO.getStuNoListStop().length != 0) {
			adminService.updateStopStatusToStudent(editStatusVO);
		}
		//복학
		if(editStatusVO.getStuNoListAgain().length != 0) {
			adminService.updateAgainStatusToStudent(editStatusVO);
		}
		//자퇴
		if(editStatusVO.getStuNoListExit().length != 0) {
			adminService.updateExitStatusToStudent(editStatusVO);
		}
		
		int arrLen = editStatusVO.getStuNoListAgain().length + editStatusVO.getStuNoListExit().length + editStatusVO.getStuNoListStop().length;
		
		
		int[] stuNoList = new int[arrLen];
		for(int i = 0 ; i < editStatusVO.getStuNoListAgain().length ; i++) {
			stuNoList[i] = editStatusVO.getStuNoListAgain()[i];
		}
		int cnt1 = editStatusVO.getStuNoListAgain().length;
		for(int i = 0 ; i < editStatusVO.getStuNoListExit().length ; i++) {
			stuNoList[cnt1++] = editStatusVO.getStuNoListExit()[i];
		}
		int cnt2 = editStatusVO.getStuNoListAgain().length + editStatusVO.getStuNoListExit().length;
		for(int i = 0 ; i < editStatusVO.getStuNoListStop().length ; i++) {
			stuNoList[cnt2++] = editStatusVO.getStuNoListStop()[i];
		}
		
		editStatusVO.setStuNoList(stuNoList);
		//model.addAttribute("updateStop", adminService.updateStop(editStatusVO));
		//휴학 신청페이지에서 학적상태 변경 
		//adminService.updateStopStatusToStudent(editStatusVO);
		adminService.updateStop(editStatusVO);
		//System.out.println("휴학");
		return "redirect:/admin/goEditStatusList"; 
	}
	
	//학적변동 승인완료 2.휴학-복학
	@GetMapping("/updateAgainStatusToStudent")
	public String updateAgainStatusToStudent(Model model, EditStatusVO editStatusVO) {
		int[] a = editStatusVO.getStuNoList();
		adminService.updateAgain(editStatusVO);
		//휴학 신청페이지에서 학적상태 변경 
		adminService.updateAgainStatusToStudent(editStatusVO);
		System.out.println("복학");
		return "redirect:/admin/goEditStatusList";
	}
	
	//학적변동 승인완료 3.자퇴
	@GetMapping("/updateExitStatusToStudent")
	public String updateExitStatusToStudent(Model model, EditStatusVO editStatusVO) {
		int[] a = editStatusVO.getStuNoList();
		adminService.updateExit(editStatusVO);
		//휴학 신청페이지에서 학적상태 변경 
		adminService.updateExitStatusToStudent(editStatusVO);
		System.out.println("자퇴");
		return "redirect:/admin/goEditStatusList";
	}
	
	//휴학
	@GetMapping("/updateStopStatusToStudent1")
	public String updateStopStatusToStudent1(Model model, EditStatusVO editStatusVO) {
		int[] a = editStatusVO.getStuNoList();
		adminService.updateExit(editStatusVO);
		//휴학 신청페이지에서 학적상태 변경 
		adminService.updateStopStatusToStudent(editStatusVO);
		return "redirect:/admin/goEditStatusList";
	}
	
	//학적변동 승인대기로 돌리기
	@GetMapping("/editStatus2")
	public String editStatus2(Model model, EditStatusVO editStatusVO) {
		int[] a = editStatusVO.getStuNoList();
		model.addAttribute("cancelEdit", adminService.cancelEdit(editStatusVO));
		return "redirect:/admin/goEditStatusList";
	}
	
	//학적변동 목록삭제
	@GetMapping("editStatus3")
	public String editStatus3(Model model, EditStatusVO editStatusVO) {
		int[] a = editStatusVO.getStuNoList();
		
		model.addAttribute("deleteEdit", adminService.deleteEdit(editStatusVO));
		return "redirect:/admin/goEditStatusList";
	}

	//학사경고
	@RequestMapping("/stuNotice")
	public String stuNotice
		(Model model, StudentVO studentVO, ChangeMajorVO changeMajorVO) {
		//단과 대학 목록 조회
		model.addAttribute("collList", stuManageService.selectCollegeList());
		//학과 목록 조회
		model.addAttribute("deptList", stuManageService.selectDeptList2(studentVO.getDeptInfo()));
		//학생 목록 조회
		model.addAttribute("studentList", stuManageService.selectStudentList(studentVO));
		
		//모달 학생정보
		//model.addAttribute("modalStuInfo", adminService.modalStuInfo(changeMajorVO));
		
		return "admin/stuNotice";
	}
	
	//제적
	@RequestMapping("/stuGetOut")
	public String stuGetOut
	(Model model, StudentVO studentVO, ChangeMajorVO changeMajorVO) {
		//단과 대학 목록 조회
		model.addAttribute("collList", stuManageService.selectCollegeList());
		//학과 목록 조회
		model.addAttribute("deptList", stuManageService.selectDeptList2(studentVO.getDeptInfo()));
		
		//학생 목록 조회
		List<StudentVO> stuList = stuManageService.selectStudentList(studentVO);
		
		//학생 중 경고가 3회 이상인 학생 목록 
		List<StudentVO> result = new ArrayList<StudentVO>();
		
		for(StudentVO e : stuList){
			if(e.getYellowCnt() >= 3) {
				result.add(e);
			}
		}
		model.addAttribute("studentList", result);
		
//		//모달 학생정보
//		model.addAttribute("modalStuInfo", adminService.modalStuInfo(changeMajorVO));
		
		return "admin/stuGetOut";
	}
	
	@ResponseBody
	@PostMapping("/selectCollegeAjax")
	public List<DeptVO> selectCollegeAjax(CollegeVO collegeVO) {
		// 학과 목록 조회
		return lectureService.selectDeptList2(collegeVO);
	}
	
	//전과신청 승인페이지
	@GetMapping("/stuSwitch")
	public String stuSwitch(Model model, ChangeMajorVO changeMajorVO) {
		model.addAttribute("AdminChangeMajorRequestList", adminService.AdminChangeMajorRequestList());
		
		//복수전공 신청 페이지
		model.addAttribute("AdminDoubleMajorRequestList", adminService.AdminDoubleMajorRequestList());
		return "admin/stuSwitch";
	}
	
	@ResponseBody
	@PostMapping("/stuSwitchAjax")
	public StudentVO stuSwitchAjax(Model model, StudentVO studentVO) {
		return adminService.selectModalStudent(studentVO);
	}

	@ResponseBody
	@PostMapping("/stuSwitchRealAjax")
	public void stuSwitchRealAjax(Model model, StudentVO studentVO) {
		adminService.updateChange(studentVO);
		adminService.updateRealChange(studentVO);
	}
	
	//전과신청 목록 띄우기
	@PostMapping("/stuSwitch1")
	public String stuSwitch1
	(Model model, ChangeMajorVO changeMajorVO, DoubleMajorVO doubleMajorVO) {
		model.addAttribute("AdminChangeMajorRequestList", adminService.AdminChangeMajorRequestList());
		model.addAttribute("modalStuInfoCM", adminService.modalStuInfoCM(changeMajorVO));
		
		//복수전공 목록 띄우기
		model.addAttribute("AdminDoubleMajorRequestList", adminService.AdminDoubleMajorRequestList());
		model.addAttribute("modalStuInfoDM", adminService.modalStuInfoDM(doubleMajorVO));
		
		return "admin/stuSwitch";
	}
	
	
	@ResponseBody
	@PostMapping("/mailNoticeAjax")
	public void mailNoticeAjax(AdminVO adminVO) {
		//학사 경고 수 증가
		adminService.insertYellowCard(adminVO);
		
		//메일 보내기
		final MimeMessagePreparator preparator = new MimeMessagePreparator() { 
			@Override 
			public void prepare(MimeMessage mimeMessage) throws Exception { 
				final MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, true, "UTF-8"); 
				
				helper.setFrom("crytalleehope@gmail.com"); 
				//helper.setTo(adminVO.getEmail());
				helper.setTo("pepe52928282@gmail.com");
				helper.setSubject("JESUS대학교 학사경고 알림");
				
				String imsiPw = adminVO.getYellReason() + " 사유로 학사경고를 받았습니다.";
						
				helper.setText(imsiPw, true); 
			} 
		}; 
		mailSender.send(preparator); 
		
	}
	
	@ResponseBody
	@PostMapping("/mailGetOutAjax")
	public void mailGetOutAjax(AdminVO adminVO) {
		//제적 정보 추가
		adminService.insertGetOut(adminVO);
		
		//학생 상태 제적으로 변경
		adminService.updateGetOut(adminVO);
		
		//메일 보내기
		final MimeMessagePreparator preparator = new MimeMessagePreparator() { 
			@Override 
			public void prepare(MimeMessage mimeMessage) throws Exception { 
				final MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, true, "UTF-8"); 
				
				helper.setFrom("crytalleehope@gmail.com"); 
				//helper.setTo(adminVO.getEmail());
				helper.setTo("pepe52928282@gmail.com");
				helper.setSubject("JESUS대학교 제적 알림");
				
				String imsiPw = adminVO.getGetOutReason() + " 사유로 제적을 받았습니다.";
				
				helper.setText(imsiPw, true); 
			} 
		}; 
		mailSender.send(preparator); 
		
	}
	
	
	@ResponseBody
	@PostMapping("/stuDoubleRealAjax")
	public void stuDoubleRealAjax(Model model, StudentVO studentVO) {
		adminService.updateOkayDoubleMajor(studentVO);
		adminService.regDoubleMajor(studentVO);
	}
	
	
	
}










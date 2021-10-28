package com.kh.project.gradeManage.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.project.gradeManage.service.GradeManageService;
import com.kh.project.gradeManage.vo.SemesterVO;
import com.kh.project.gradeManage.vo.StuGradeVO;
import com.kh.project.portal.vo.MemberVO;

@Controller
@RequestMapping("/grade")
public class GradeManageController {
	
	@Resource(name = "gradeManageService")
	private GradeManageService gradeManageService;
	
	//이동 "학점 조회"
	@GetMapping("/chkGradeJsp")
	public String chkGradeJsp(Model model, StuGradeVO stuGradeVO, HttpSession session) {
		//학년,학기 리스트
		model.addAttribute("semesterList", gradeManageService.selectSemesterList());
		
		//로그인 세션 정보 가져오기
		MemberVO member = (MemberVO)session.getAttribute("loginInfo");
		stuGradeVO.setStuNo(member.getMemNo());

		//학생 성적 리스트
		model.addAttribute("gradeList", gradeManageService.selectStuGradeList(stuGradeVO));
		
		return "gradeManage/chk_grade";
	}
	
	@ResponseBody // 전체 학점 조회 Ajax
	@PostMapping("/gradeListAjax")
	public List<StuGradeVO> gradeListAjax(HttpSession session , StuGradeVO stuGradeVO) { //int year , int semester 도 가능함 
		//로그인 세션 정보 가져오기 (학번이 ~인 학생의 성적만 조회)
		MemberVO member = (MemberVO)session.getAttribute("loginInfo");
		stuGradeVO.setStuNo(member.getMemNo());
		return  gradeManageService.selectStuGradeList(stuGradeVO);
	}
	
	//이동 "졸업요건"
	@GetMapping("/graduationJsp")
	public String graduationJsp(MemberVO memberVO , StuGradeVO stuGradeVO , Model model, HttpSession session) {
		//학년,학기 리스트
		model.addAttribute("semesterList", gradeManageService.selectSemesterList());

		//로그인 세션 정보 가져오기
		MemberVO member = (MemberVO)session.getAttribute("loginInfo");
		int memNo = member.getMemNo();
		stuGradeVO.setStuNo(member.getMemNo());
	
		//학생 정보 조회
		model.addAttribute("stuInfo", gradeManageService.selectMyInfoForGraduation(memNo));
		
		//F학점 제외한 학점 조회
		model.addAttribute("gradeList", gradeManageService.selectStuGradeListForGraduation(stuGradeVO));

		//총 이수학점, 평균평점
		model.addAttribute("totalInfo", gradeManageService.totalSumAvg(stuGradeVO));
		
		return "gradeManage/graduation";
	}
	
	@ResponseBody // 이수 학점 조회 Ajax
	@PostMapping("/gradeListForGraduationAjax")
	public List<StuGradeVO> gradeListForGraduationAjax(HttpSession session , StuGradeVO stuGradeVO) { //int year , int semester 도 가능함 
		//로그인 세션 정보 가져오기 (학번이 ~인 학생의 성적만 조회)
		MemberVO member = (MemberVO)session.getAttribute("loginInfo");
		stuGradeVO.setStuNo(member.getMemNo());
		return  gradeManageService.selectStuGradeListForGraduation(stuGradeVO);
	}
	

	@ResponseBody // 총 이수학점, 평점평균 조회 Ajax
	@PostMapping("/totalSumAvgAjax")
	public StuGradeVO totalSumAvgAjax(HttpSession session , StuGradeVO stuGradeVO) { //int year , int semester 도 가능함 
		//로그인 세션 정보 가져오기 (학번이 ~인 학생의 성적만 조회)
		MemberVO member = (MemberVO)session.getAttribute("loginInfo");
		stuGradeVO.setStuNo(member.getMemNo());
		
		return  gradeManageService.totalSumAvg(stuGradeVO);
	}
}

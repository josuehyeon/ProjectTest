package com.kh.project.gradeManage.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.project.gradeManage.service.GradeManageService;
import com.kh.project.gradeManage.vo.SemesterVO;
import com.kh.project.gradeManage.vo.StuGradeVO;

@Controller
@RequestMapping("/grade")
public class GradeManageController {
	
	@Resource(name = "gradeManageService")
	private GradeManageService gradeManageService;
	
	@GetMapping("/chkGradeJsp")
	public String chkGradeJsp(Model model, SemesterVO semesterVO) {
		//학년,학기 리스트
		model.addAttribute("semesterList", gradeManageService.selectSemesterList());
		
		//학생 성적 리스트
		model.addAttribute("gradeList", gradeManageService.selectStuGradeList(semesterVO));
		
		return "gradeManage/chk_grade";
	}
	
	//이렇게 세팅하면 별도의 Ajax문으로 이해하자
	@ResponseBody //ajax랑 짝꿍이다. 다시 ajax로 돌아가라 알려주눈 @어노테이션
	@PostMapping("/gradeListAjax")
	public List<StuGradeVO> gradeListAjax(SemesterVO semesterVO) { //int year , int semester 도 가능함 
		return  gradeManageService.selectStuGradeList(semesterVO);
	}
	
	

}

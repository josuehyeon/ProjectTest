package com.kh.project.gradeManage.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.project.gradeManage.service.GradeManageService;

@Controller
@RequestMapping("/grade")
public class GradeManageController {
	
	@Resource(name = "gradeManageService")
	private GradeManageService gradeManageService;
	
	@GetMapping("/chkGradeJsp")
	public String chkGradeJsp(Model model) {
		
		//학생 성적 리스트
		//model.addAttribute("gradeList", gradeManageService.selectStuGradeList());
		
		return "gradeManage/chk_grade";
	}
	

}

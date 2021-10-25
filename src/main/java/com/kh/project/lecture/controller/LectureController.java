package com.kh.project.lecture.controller;


import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.project.lecture.service.LectureService;

@Controller
@RequestMapping("/lecture")
public class LectureController {
	
	@Resource(name="lectureService")
	private LectureService lectureService;
	//메인페이지
	@GetMapping("/goMain")
	public String goMain() {
		return "lecture/main";
	}
	//강의등록폼
	@GetMapping("/goRegLecture")
	public String goRegLecture(Model model) {
		model.addAttribute("collegeList", lectureService.selectCollegeList());
		model.addAttribute("deptList", lectureService.selectDeptList());
		model.addAttribute("empList", lectureService.selectProfList());
		model.addAttribute("assiList", lectureService.selectAssiList());
		return "lecture/reg_lecture";
	}
	
	//강의등록하고 강의리스트로오기
	@PostMapping("/regLecture")
	public String regLecture() {
		return "lecture/lecture_list";
	}
}









